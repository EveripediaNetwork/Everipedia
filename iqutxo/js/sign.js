const ecc = require('eosjs-ecc');
const base58 = require('bs58');

// due to JS limitaitons, this only has 48-bit precision,
// but that's good enough for what we need
function uint64_to_little_endian(num) {
  const buf = Buffer.alloc(8);
  buf.writeUIntLE(num, 0, 6);
  return buf;
}

function sign(from, to, amount, fee, nonce, memo, privkey) {
  const version = 1;
  const length = 92 + memo.length;

  const pkeyFrom = base58.decode(from.substring(3));
  const pkeyTo = base58.decode(to.substring(3));
  const amountBuf = uint64_to_little_endian(amount);
  const feeBuf = uint64_to_little_endian(fee);
  const nonceBuf = uint64_to_little_endian(nonce);
  const memoBuf = Buffer.from(memo);

  // create raw tx
  const buffer = Buffer.alloc(length);
  buffer[0] = version;
  buffer[1] = length;
  pkeyFrom.copy(buffer, 2, 0, 33);
  pkeyTo.copy(buffer, 35, 0, 33);
  amountBuf.copy(buffer, 68, 0, 8);
  feeBuf.copy(buffer, 76, 0, 8);
  nonceBuf.copy(buffer, 84, 0, 8);
  memoBuf.copy(buffer, 92, 0, memoBuf.length);
  //console.log(buffer.toString('hex'));

  // hash raw tx
  const hashed = ecc.sha256(buffer, 'hex');
  //console.log(hashed);

  // sign transaction
  const sig = ecc.signHash(hashed, privkey);

  return sig;
}

///////////////////////////////
// Main Execution Thread
if (process.argv.length != 9) {
    console.log(`
        USAGE: node sign.js [from] [to] [amount] [fee] [nonce] [privkey]
        Example: node sign.js EOS7PoGq46ssqeGh8ZNScWQxqbwg5RNvLAwVw3i5dQcZ3a1h9nRyr EOS6KnJPV1mDuS8pYuLucaWzkwbWjGPeJsfQDpqc7NZ4F7zTQh4Wt 10000 10 1 "token transfer" 5KQRA6BBHEHSbmvio3S9oFfVERvv79XXppmYExMouSBqPkZTD79
    `);
}
else {
    const args = process.argv.slice(2);
    console.log(sign(...args));
}
