/*
 * Copyright 2012-2014 Luke Dashjr
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the standard MIT license.  See COPYING for more details.
 */

const char b58digits_ordered[] = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";

const int8_t b58digits_map[] = {
	-1,-1,-1,-1,-1,-1,-1,-1, -1,-1,-1,-1,-1,-1,-1,-1,
	-1,-1,-1,-1,-1,-1,-1,-1, -1,-1,-1,-1,-1,-1,-1,-1,
	-1,-1,-1,-1,-1,-1,-1,-1, -1,-1,-1,-1,-1,-1,-1,-1,
	-1, 0, 1, 2, 3, 4, 5, 6,  7, 8,-1,-1,-1,-1,-1,-1,
	-1, 9,10,11,12,13,14,15, 16,-1,17,18,19,20,21,-1,
	22,23,24,25,26,27,28,29, 30,31,32,-1,-1,-1,-1,-1,
	-1,33,34,35,36,37,38,39, 40,41,42,43,-1,44,45,46,
	47,48,49,50,51,52,53,54, 55,56,57,-1,-1,-1,-1,-1,
};

void memzero(void *const pnt, const size_t len)
{
// I'm pretty sure none of the commented out stuff below
// is needed for WASM but I've left it there in case
//  - Kedar Iyer
//#ifdef _WIN32
//    SecureZeroMemory(pnt, len);
//#elif defined(HAVE_MEMSET_S)
//    memset_s(pnt, (rsize_t) len, 0, (rsize_t) len);
//#elif defined(HAVE_EXPLICIT_BZERO)
//    explicit_bzero(pnt, len);
//#elif defined(HAVE_EXPLICIT_MEMSET)
//    explicit_memset(pnt, 0, len);
//#else
   volatile unsigned char *volatile pnt_ =
       (volatile unsigned char *volatile) pnt;
   size_t i = (size_t) 0U;

   while (i < len) {
       pnt_[i++] = 0U;
   }
//#endif
}


bool b58enc(char *b58, size_t *b58sz, const uint8_t *bin, size_t binsz)
{
   int carry;
   ssize_t i, j, high, zcount = 0;
   size_t size;

   while (zcount < (ssize_t)binsz && !bin[zcount])
       ++zcount;

   size = (binsz - zcount) * 138 / 100 + 1;
   uint8_t buf[size];
   memzero(buf, size);

   for (i = zcount, high = size - 1; i < (ssize_t)binsz; ++i, high = j)
   {
       for (carry = bin[i], j = size - 1; (j > high) || carry; --j)
       {
           carry += 256 * buf[j];
           buf[j] = carry % 58;
           carry /= 58;
       }
   }

   for (j = 0; j < (ssize_t)size && !buf[j]; ++j);

   if (*b58sz <= zcount + size - j)
   {
       *b58sz = zcount + size - j + 1;
       return false;
   }

   if (zcount)
       memset(b58, '1', zcount);
   for (i = zcount; j < (ssize_t)size; ++i, ++j)
       b58[i] = b58digits_ordered[buf[j]];
   b58[i] = '\0';
   *b58sz = i + 1;

   return true;
}

bool b58tobin(void *bin, size_t *binszp, const char *b58)
{
   size_t binsz = *binszp;

   if (binsz == 0) {
       return false;
   }

   const unsigned char *b58u = (const unsigned char*)b58;
   unsigned char *binu = (unsigned char *)bin;
   size_t outisz = (binsz + 3) / 4;
   uint32_t outi[outisz];
   uint64_t t;
   uint32_t c;
   size_t i, j;
   uint8_t bytesleft = binsz % 4;
   uint32_t zeromask = bytesleft ? (0xffffffff << (bytesleft * 8)) : 0;
   unsigned zerocount = 0;
   size_t b58sz;

   b58sz = strlen(b58);

   memzero(outi, sizeof(outi));

   // Leading zeros, just count
   for (i = 0; i < b58sz && b58u[i] == '1'; ++i)
       ++zerocount;

   for ( ; i < b58sz; ++i)
   {
       if (b58u[i] & 0x80)
           // High-bit set on invalid digit
           return false;
       if (b58digits_map[b58u[i]] == -1)
           // Invalid base58 digit
           return false;
       c = (unsigned)b58digits_map[b58u[i]];
       for (j = outisz; j--; )
       {
           t = ((uint64_t)outi[j]) * 58 + c;
           c = (t & 0x3f00000000) >> 32;
           outi[j] = t & 0xffffffff;
       }
       if (c)
           // Output number too big (carry to the next int32)
           return false;
       if (outi[0] & zeromask)
           // Output number too big (last int32 filled too far)
           return false;
   }

   j = 0;
   switch (bytesleft) {
       case 3:
           *(binu++) = (outi[0] &   0xff0000) >> 16;
           //-fallthrough
       case 2:
           *(binu++) = (outi[0] &     0xff00) >>  8;
           //-fallthrough
       case 1:
           *(binu++) = (outi[0] &       0xff);
           ++j;
           //-fallthrough
       default:
           break;
   }

   for (; j < outisz; ++j)
   {
       *(binu++) = (outi[j] >> 0x18) & 0xff;
       *(binu++) = (outi[j] >> 0x10) & 0xff;
       *(binu++) = (outi[j] >>    8) & 0xff;
       *(binu++) = (outi[j] >>    0) & 0xff;
   }

   // Count canonical base58 byte count
   binu = (unsigned char *)bin;
   for (i = 0; i < binsz; ++i)
   {
       if (binu[i]) {
           if (zerocount > i) {
               /* result too large */
               return false;
           }
           break;
       }
       --*binszp;
   }
   *binszp += zerocount;

   return true;
}
