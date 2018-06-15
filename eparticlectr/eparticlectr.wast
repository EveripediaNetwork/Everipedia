(module
 (type $FUNCSIG$vijj (func (param i32 i64 i64)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$vijiij (func (param i32 i64 i32 i32 i64)))
 (type $FUNCSIG$vijiii (func (param i32 i64 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (type $FUNCSIG$ijjjij (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjji (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $FUNCSIG$ijjjiij (func (param i64 i64 i64 i32 i32 i64) (result i32)))
 (type $FUNCSIG$ijjj (func (param i64 i64 i64) (result i32)))
 (type $FUNCSIG$ijjjiii (func (param i64 i64 i64 i32 i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$vijjjj (func (param i32 i64 i64 i64 i64)))
 (type $FUNCSIG$jjj (func (param i64 i64) (result i64)))
 (type $FUNCSIG$fjj (func (param i64 i64) (result f32)))
 (import "env" "__divtf3" (func $__divtf3 (param i32 i64 i64 i64 i64)))
 (import "env" "__fixunstfdi" (func $__fixunstfdi (param i64 i64) (result i64)))
 (import "env" "__floatunditf" (func $__floatunditf (param i32 i64)))
 (import "env" "__multf3" (func $__multf3 (param i32 i64 i64 i64 i64)))
 (import "env" "__trunctfsf2" (func $__trunctfsf2 (param i64 i64) (result f32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_end_i64" (func $db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_find_i64" (func $db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_idx256_find_primary" (func $db_idx256_find_primary (param i64 i64 i64 i32 i32 i64) (result i32)))
 (import "env" "db_idx256_lowerbound" (func $db_idx256_lowerbound (param i64 i64 i64 i32 i32 i32) (result i32)))
 (import "env" "db_idx256_next" (func $db_idx256_next (param i32 i32) (result i32)))
 (import "env" "db_idx256_store" (func $db_idx256_store (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx256_update" (func $db_idx256_update (param i32 i64 i32 i32)))
 (import "env" "db_idx64_find_primary" (func $db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_lowerbound" (func $db_idx64_lowerbound (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx64_next" (func $db_idx64_next (param i32 i32) (result i32)))
 (import "env" "db_idx64_remove" (func $db_idx64_remove (param i32)))
 (import "env" "db_idx64_store" (func $db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_update" (func $db_idx64_update (param i32 i64 i32)))
 (import "env" "db_lowerbound_i64" (func $db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_next_i64" (func $db_next_i64 (param i32 i32) (result i32)))
 (import "env" "db_previous_i64" (func $db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $db_remove_i64 (param i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $memmove (param i32 i32 i32) (result i32)))
 (import "env" "printi" (func $printi (param i64)))
 (import "env" "printn" (func $printn (param i64)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "prints_l" (func $prints_l (param i32 i32)))
 (import "env" "printui" (func $printui (param i64)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (import "env" "send_inline" (func $send_inline (param i32 i32)))
 (table 10 10 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN12eparticlectr9fnlbyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE $_ZN12eparticlectr7proposeEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_S7_ $_ZN12eparticlectr10brainclmidEyy $_ZN12eparticlectr10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby $_ZN12eparticlectr10brainmeartEyy $_ZN12eparticlectr8finalizeEyy $_ZN12eparticlectr11procrewardsEy $_ZN12eparticlectr10brainclaimEyy $_ZN12eparticlectr10testinsertEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE)
 (memory $0 1)
 (data (i32.const 4) "\f0j\00\00")
 (data (i32.const 16) "unexpected error in fixed_key constructor\00")
 (data (i32.const 64) "6789\00")
 (data (i32.const 80) "\n\00")
 (data (i32.const 96) "Before: \00")
 (data (i32.const 112) "After: \00")
 (data (i32.const 128) "epiqtokenctr\00")
 (data (i32.const 144) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 208) "error reading iterator\00")
 (data (i32.const 240) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 304) "invalid symbol name\00")
 (data (i32.const 336) "read\00")
 (data (i32.const 352) "active\00")
 (data (i32.const 368) "eparticlectr\00")
 (data (i32.const 384) "test\00")
 (data (i32.const 400) "write\00")
 (data (i32.const 416) "No brainpower found\00")
 (data (i32.const 448) "cannot pass end iterator to modify\00")
 (data (i32.const 496) "object passed to modify is not in multi_index\00")
 (data (i32.const 544) "cannot modify objects in table of another contract\00")
 (data (i32.const 608) "Please supply a nonzero value of brainpower to subtract\00")
 (data (i32.const 672) "Underflow during subtraction\00")
 (data (i32.const 704) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 768) "No stakes found for proposal\00")
 (data (i32.const 800) "transfer\00")
 (data (i32.const 832) "cannot pass end iterator to erase\00")
 (data (i32.const 880) "object passed to erase is not in multi_index\00")
 (data (i32.const 928) "cannot erase objects in table of another contract\00")
 (data (i32.const 992) "attempt to remove object that was not in multi_index\00")
 (data (i32.const 1056) "cannot increment end iterator\00")
 (data (i32.const 1088) "Staking period not over yet\00")
 (data (i32.const 1120) "Not enough brainpower to edit, you need to stake some more IQ using epiqtokenctr::brainmeiq first!\00")
 (data (i32.const 1232) "Proposal already exists\00")
 (data (i32.const 1264) "cannot create objects in table of another contract\00")
 (data (i32.const 1328) "proposal not found\00")
 (data (i32.const 1360) "voting period is over\00")
 (data (i32.const 1392) "Not enough brainpower\00")
 (data (i32.const 1424) "next primary key in table is at autoincrement limit\00")
 (data (i32.const 1488) "FIRST VOTE FOR PROPOSAL\00")
 (data (i32.const 1520) "PROPOSAL AND VOTER MATCH FOUND\00")
 (data (i32.const 1552) "STRENGTHEN EXISTING VOTE\00")
 (data (i32.const 1584) "WEAKEN EXISTING VOTE\00")
 (data (i32.const 1616) "SWITCH VOTE\00")
 (data (i32.const 1632) "BRAND NEW VOTE\00")
 (data (i32.const 1648) "cannot decrement end iterator when the table is empty\00")
 (data (i32.const 1712) "cannot decrement iterator at beginning of table\00")
 (data (i32.const 1760) "get\00")
 (data (i32.const 1776) "voting period is not over yet\00")
 (data (i32.const 1808) "no votes found for proposal\00")
 (data (i32.const 1840) "TALLYING VOTES\n\00")
 (data (i32.const 1856) "CHECKING SLASHING\n\00")
 (data (i32.const 1888) "MARKING PROPOSALS\n\00")
 (data (i32.const 1920) "INITIALIZE REWARDS TABLE\00")
 (data (i32.const 1952) "SEEING VOTES\n\00")
 (data (i32.const 1968) "SLASHING THE LOSERS\n\00")
 (data (i32.const 2000) "GETTING THE STAKES\n\00")
 (data (i32.const 2032) "REWARDING THE WINNERS\n\00")
 (data (i32.const 2064) "Please supply a nonzero value of brainpower to add\00")
 (data (i32.const 2128) "Overflow during addition\00")
 (data (i32.const 2160) "Added brainpower, \00")
 (data (i32.const 2192) "ADDING ARTICLE TO DATABASE\n\00")
 (data (i32.const 2224) "This function will be implemented later\00")
 (data (i32.const 2272) "Current interval is: \00")
 (data (i32.const 2304) "No rewards found in this period!\00")
 (data (i32.const 2352) "issue\00")
 (data (i32.const 2368) "minieo\00")
 (data (i32.const 2384) ",\00")
 (data (i32.const 2400) "onerror\00")
 (data (i32.const 2416) "eosio\00")
 (data (i32.const 2432) "onerror action\'s are only valid from the \"eosio\" system account\00")
 (data (i32.const 10896) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE" (func $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE))
 (export "_ZN12eparticlectr20ipfs_to_uint64_truncERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE" (func $_ZN12eparticlectr20ipfs_to_uint64_truncERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE))
 (export "_ZN12eparticlectr12getiqbalanceEy" (func $_ZN12eparticlectr12getiqbalanceEy))
 (export "_ZN12eparticlectr12swapEndian64Ey" (func $_ZN12eparticlectr12swapEndian64Ey))
 (export "_ZN12eparticlectr10brainmeartEyy" (func $_ZN12eparticlectr10brainmeartEyy))
 (export "_ZN12eparticlectr10brainclaimEyy" (func $_ZN12eparticlectr10brainclaimEyy))
 (export "_ZN12eparticlectr10brainclmidEyy" (func $_ZN12eparticlectr10brainclmidEyy))
 (export "_ZN12eparticlectr16propose_precheckEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_" (func $_ZN12eparticlectr16propose_precheckEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_))
 (export "_ZN12eparticlectr7proposeEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_S7_" (func $_ZN12eparticlectr7proposeEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_S7_))
 (export "_ZN12eparticlectr10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby" (func $_ZN12eparticlectr10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby))
 (export "_ZN12eparticlectr8votebyidEyyby" (func $_ZN12eparticlectr8votebyidEyyby))
 (export "_ZN12eparticlectr9fnlbyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE" (func $_ZN12eparticlectr9fnlbyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE))
 (export "_ZN12eparticlectr8finalizeEyy" (func $_ZN12eparticlectr8finalizeEyy))
 (export "_ZN12eparticlectr11procrewardsEy" (func $_ZN12eparticlectr11procrewardsEy))
 (export "_ZN12eparticlectr10testinsertEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE" (func $_ZN12eparticlectr10testinsertEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE))
 (export "apply" (func $apply))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (export "tolower" (func $tolower))
 (export "strlen" (func $strlen))
 (export "memcmp" (func $memcmp))
 (func $_ZeqRK11checksum256S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZeqRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $_ZneRK11checksum160S1_ (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $memcmp
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $now (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
 )
 (func $_ZN5eosio12require_authERKNS_16permission_levelE (param $0 i32)
  (call $require_auth2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $16
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
    (get_local $16)
    (get_local $1)
    (i32.const 0)
    (i32.const 12)
    (get_local $1)
   )
  )
  (set_local $8
   (select
    (tee_local $3
     (i32.load offset=8
      (get_local $16)
     )
    )
    (i32.or
     (get_local $16)
     (i32.const 1)
    )
    (tee_local $2
     (i32.and
      (i32.load8_u
       (get_local $16)
      )
      (i32.const 1)
     )
    )
   )
  )
  (set_local $7
   (i32.const -1)
  )
  (loop $label$0
   (set_local $6
    (i32.add
     (get_local $8)
     (get_local $7)
    )
   )
   (set_local $7
    (tee_local $4
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (i32.load8_u
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $13
   (i64.extend_u/i32
    (get_local $4)
   )
  )
  (set_local $10
   (i64.const 0)
  )
  (set_local $9
   (i64.const 59)
  )
  (set_local $11
   (i64.const 0)
  )
  (loop $label$1
   (set_local $12
    (i64.const 0)
   )
   (block $label$2
    (br_if $label$2
     (i64.ge_u
      (get_local $10)
      (get_local $13)
     )
    )
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $7
           (i32.load8_s
            (get_local $8)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $7
       (i32.add
        (get_local $7)
        (i32.const 165)
       )
      )
      (br $label$3)
     )
     (set_local $7
      (select
       (i32.add
        (get_local $7)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $7)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $12
     (i64.shr_s
      (i64.shl
       (i64.extend_u/i32
        (get_local $7)
       )
       (i64.const 56)
      )
      (i64.const 56)
     )
    )
   )
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i64.gt_u
       (get_local $10)
       (i64.const 11)
      )
     )
     (set_local $12
      (i64.shl
       (i64.and
        (get_local $12)
        (i64.const 31)
       )
       (i64.and
        (get_local $9)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$5)
    )
    (set_local $12
     (i64.and
      (get_local $12)
      (i64.const 15)
     )
    )
   )
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (set_local $10
    (i64.add
     (get_local $10)
     (i64.const 1)
    )
   )
   (set_local $11
    (i64.or
     (get_local $12)
     (get_local $11)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $9
      (i64.add
       (get_local $9)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (get_local $2)
    )
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
    (get_local $16)
    (get_local $1)
    (i32.const 13)
    (i32.const 24)
    (get_local $1)
   )
  )
  (set_local $8
   (select
    (tee_local $3
     (i32.load offset=8
      (get_local $16)
     )
    )
    (i32.or
     (get_local $16)
     (i32.const 1)
    )
    (tee_local $2
     (i32.and
      (i32.load8_u
       (get_local $16)
      )
      (i32.const 1)
     )
    )
   )
  )
  (set_local $7
   (i32.const -1)
  )
  (loop $label$8
   (set_local $6
    (i32.add
     (get_local $8)
     (get_local $7)
    )
   )
   (set_local $7
    (tee_local $4
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
   )
   (br_if $label$8
    (i32.load8_u
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $14
   (i64.extend_u/i32
    (get_local $4)
   )
  )
  (set_local $10
   (i64.const 0)
  )
  (set_local $9
   (i64.const 59)
  )
  (set_local $13
   (i64.const 0)
  )
  (loop $label$9
   (set_local $12
    (i64.const 0)
   )
   (block $label$10
    (br_if $label$10
     (i64.ge_u
      (get_local $10)
      (get_local $14)
     )
    )
    (block $label$11
     (block $label$12
      (br_if $label$12
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $7
           (i32.load8_s
            (get_local $8)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $7
       (i32.add
        (get_local $7)
        (i32.const 165)
       )
      )
      (br $label$11)
     )
     (set_local $7
      (select
       (i32.add
        (get_local $7)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $7)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $12
     (i64.shr_s
      (i64.shl
       (i64.extend_u/i32
        (get_local $7)
       )
       (i64.const 56)
      )
      (i64.const 56)
     )
    )
   )
   (block $label$13
    (block $label$14
     (br_if $label$14
      (i64.gt_u
       (get_local $10)
       (i64.const 11)
      )
     )
     (set_local $12
      (i64.shl
       (i64.and
        (get_local $12)
        (i64.const 31)
       )
       (i64.and
        (get_local $9)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$13)
    )
    (set_local $12
     (i64.and
      (get_local $12)
      (i64.const 15)
     )
    )
   )
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (set_local $10
    (i64.add
     (get_local $10)
     (i64.const 1)
    )
   )
   (set_local $13
    (i64.or
     (get_local $12)
     (get_local $13)
    )
   )
   (br_if $label$9
    (i64.ne
     (tee_local $9
      (i64.add
       (get_local $9)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$15
   (br_if $label$15
    (i32.eqz
     (get_local $2)
    )
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
    (get_local $16)
    (get_local $1)
    (i32.const 25)
    (i32.const 36)
    (get_local $1)
   )
  )
  (set_local $8
   (select
    (tee_local $3
     (i32.load offset=8
      (get_local $16)
     )
    )
    (i32.or
     (get_local $16)
     (i32.const 1)
    )
    (tee_local $2
     (i32.and
      (i32.load8_u
       (get_local $16)
      )
      (i32.const 1)
     )
    )
   )
  )
  (set_local $7
   (i32.const -1)
  )
  (loop $label$16
   (set_local $6
    (i32.add
     (get_local $8)
     (get_local $7)
    )
   )
   (set_local $7
    (tee_local $4
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
   )
   (br_if $label$16
    (i32.load8_u
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $15
   (i64.extend_u/i32
    (get_local $4)
   )
  )
  (set_local $10
   (i64.const 0)
  )
  (set_local $9
   (i64.const 59)
  )
  (set_local $14
   (i64.const 0)
  )
  (loop $label$17
   (set_local $12
    (i64.const 0)
   )
   (block $label$18
    (br_if $label$18
     (i64.ge_u
      (get_local $10)
      (get_local $15)
     )
    )
    (block $label$19
     (block $label$20
      (br_if $label$20
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $7
           (i32.load8_s
            (get_local $8)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $7
       (i32.add
        (get_local $7)
        (i32.const 165)
       )
      )
      (br $label$19)
     )
     (set_local $7
      (select
       (i32.add
        (get_local $7)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $7)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $12
     (i64.shr_s
      (i64.shl
       (i64.extend_u/i32
        (get_local $7)
       )
       (i64.const 56)
      )
      (i64.const 56)
     )
    )
   )
   (block $label$21
    (block $label$22
     (br_if $label$22
      (i64.gt_u
       (get_local $10)
       (i64.const 11)
      )
     )
     (set_local $12
      (i64.shl
       (i64.and
        (get_local $12)
        (i64.const 31)
       )
       (i64.and
        (get_local $9)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$21)
    )
    (set_local $12
     (i64.and
      (get_local $12)
      (i64.const 15)
     )
    )
   )
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (set_local $10
    (i64.add
     (get_local $10)
     (i64.const 1)
    )
   )
   (set_local $14
    (i64.or
     (get_local $12)
     (get_local $14)
    )
   )
   (br_if $label$17
    (i64.ne
     (tee_local $9
      (i64.add
       (get_local $9)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$23
   (br_if $label$23
    (i32.eqz
     (get_local $2)
    )
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
    (get_local $16)
    (get_local $1)
    (i32.const 37)
    (i32.const 45)
    (get_local $1)
   )
  )
  (set_local $8
   (select
    (tee_local $2
     (i32.load offset=8
      (get_local $16)
     )
    )
    (i32.or
     (get_local $16)
     (i32.const 1)
    )
    (tee_local $1
     (i32.and
      (i32.load8_u
       (get_local $16)
      )
      (i32.const 1)
     )
    )
   )
  )
  (set_local $7
   (i32.const -1)
  )
  (loop $label$24
   (set_local $6
    (i32.add
     (get_local $8)
     (get_local $7)
    )
   )
   (set_local $7
    (tee_local $4
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
   )
   (br_if $label$24
    (i32.load8_u
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (get_local $4)
   )
  )
  (set_local $10
   (i64.const 0)
  )
  (set_local $9
   (i64.const 59)
  )
  (set_local $15
   (i64.const 0)
  )
  (loop $label$25
   (set_local $12
    (i64.const 0)
   )
   (block $label$26
    (br_if $label$26
     (i64.ge_u
      (get_local $10)
      (get_local $5)
     )
    )
    (block $label$27
     (block $label$28
      (br_if $label$28
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $7
           (i32.load8_s
            (get_local $8)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $7
       (i32.add
        (get_local $7)
        (i32.const 165)
       )
      )
      (br $label$27)
     )
     (set_local $7
      (select
       (i32.add
        (get_local $7)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $7)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $12
     (i64.shr_s
      (i64.shl
       (i64.extend_u/i32
        (get_local $7)
       )
       (i64.const 56)
      )
      (i64.const 56)
     )
    )
   )
   (block $label$29
    (block $label$30
     (br_if $label$30
      (i64.gt_u
       (get_local $10)
       (i64.const 11)
      )
     )
     (set_local $12
      (i64.shl
       (i64.and
        (get_local $12)
        (i64.const 31)
       )
       (i64.and
        (get_local $9)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$29)
    )
    (set_local $12
     (i64.and
      (get_local $12)
      (i64.const 15)
     )
    )
   )
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (set_local $10
    (i64.add
     (get_local $10)
     (i64.const 1)
    )
   )
   (set_local $15
    (i64.or
     (get_local $12)
     (get_local $15)
    )
   )
   (br_if $label$25
    (i64.ne
     (tee_local $9
      (i64.add
       (get_local $9)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$31
   (br_if $label$31
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 16)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $11)
  )
  (i64.store
   (get_local $0)
   (get_local $13)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 16)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $14)
  )
  (i64.store offset=16
   (get_local $0)
   (get_local $15)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $16)
    (i32.const 16)
   )
  )
 )
 (func $_ZN12eparticlectr20ipfs_to_uint64_truncERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $16
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
    (get_local $0)
   )
  )
  (set_local $11
   (i32.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $16)
    (i32.const 28)
   )
   (i32.load8_u offset=68
    (i32.const 0)
   )
  )
  (i32.store offset=24
   (get_local $16)
   (i32.load offset=64 align=1
    (i32.const 0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (call $strlen
      (i32.add
       (get_local $16)
       (i32.const 24)
      )
     )
    )
   )
   (set_local $1
    (i32.or
     (i32.add
      (get_local $16)
      (i32.const 32)
     )
     (i32.const 1)
    )
   )
   (set_local $6
    (i32.add
     (get_local $16)
     (i32.const 40)
    )
   )
   (loop $label$1
    (set_local $15
     (i32.add
      (tee_local $12
       (select
        (tee_local $14
         (i32.load
          (get_local $6)
         )
        )
        (get_local $1)
        (tee_local $0
         (i32.and
          (tee_local $5
           (i32.load8_u offset=32
            (get_local $16)
           )
          )
          (i32.const 1)
         )
        )
       )
      )
      (tee_local $0
       (select
        (tee_local $13
         (i32.load offset=36
          (get_local $16)
         )
        )
        (i32.shr_u
         (get_local $5)
         (i32.const 1)
        )
        (get_local $0)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (i32.add
       (get_local $16)
       (i32.const 24)
      )
      (get_local $11)
     )
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (get_local $0)
       )
      )
      (set_local $4
       (i32.load8_u
        (get_local $3)
       )
      )
      (loop $label$4
       (br_if $label$3
        (i32.eq
         (i32.load8_u
          (get_local $12)
         )
         (i32.and
          (get_local $4)
          (i32.const 255)
         )
        )
       )
       (set_local $12
        (i32.add
         (get_local $12)
         (i32.const 1)
        )
       )
       (br_if $label$4
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -1)
         )
        )
       )
       (br $label$2)
      )
     )
     (block $label$5
      (br_if $label$5
       (i32.eq
        (get_local $12)
        (get_local $15)
       )
      )
      (set_local $0
       (get_local $12)
      )
      (loop $label$6
       (set_local $4
        (i32.load8_u
         (get_local $3)
        )
       )
       (block $label$7
        (block $label$8
         (loop $label$9
          (br_if $label$8
           (i32.eq
            (tee_local $0
             (i32.add
              (get_local $0)
              (i32.const 1)
             )
            )
            (get_local $15)
           )
          )
          (br_if $label$9
           (i32.eq
            (tee_local $5
             (i32.load8_u
              (get_local $0)
             )
            )
            (i32.and
             (get_local $4)
             (i32.const 255)
            )
           )
          )
          (br $label$7)
         )
        )
        (set_local $14
         (i32.load
          (get_local $6)
         )
        )
        (set_local $13
         (i32.load offset=36
          (get_local $16)
         )
        )
        (set_local $5
         (i32.load8_u offset=32
          (get_local $16)
         )
        )
        (br $label$5)
       )
       (i32.store8
        (get_local $12)
        (get_local $5)
       )
       (set_local $12
        (i32.add
         (get_local $12)
         (i32.const 1)
        )
       )
       (br $label$6)
      )
     )
     (set_local $15
      (get_local $12)
     )
    )
    (drop
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj
      (i32.add
       (get_local $16)
       (i32.const 32)
      )
      (i32.sub
       (get_local $15)
       (tee_local $12
        (select
         (get_local $14)
         (get_local $1)
         (tee_local $0
          (i32.and
           (get_local $5)
           (i32.const 1)
          )
         )
        )
       )
      )
      (i32.sub
       (i32.add
        (get_local $12)
        (select
         (get_local $13)
         (i32.shr_u
          (i32.and
           (get_local $5)
           (i32.const 254)
          )
          (i32.const 1)
         )
         (get_local $0)
        )
       )
       (get_local $15)
      )
     )
    )
    (br_if $label$1
     (i32.lt_u
      (tee_local $11
       (i32.add
        (get_local $11)
        (i32.const 1)
       )
      )
      (call $strlen
       (i32.add
        (get_local $16)
        (i32.const 24)
       )
      )
     )
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_
    (i32.add
     (get_local $16)
     (i32.const 8)
    )
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
    (i32.const 2)
    (i32.const 12)
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
   )
  )
  (set_local $4
   (i32.or
    (i32.add
     (get_local $16)
     (i32.const 8)
    )
    (i32.const 1)
   )
  )
  (set_local $15
   (i32.load offset=16
    (get_local $16)
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (tee_local $12
      (select
       (i32.load offset=12
        (get_local $16)
       )
       (i32.shr_u
        (tee_local $0
         (i32.load8_u offset=8
          (get_local $16)
         )
        )
        (i32.const 1)
       )
       (tee_local $5
        (i32.and
         (get_local $0)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (set_local $0
    (select
     (get_local $15)
     (get_local $4)
     (get_local $5)
    )
   )
   (loop $label$11
    (i32.store8
     (get_local $0)
     (call $tolower
      (i32.load8_s
       (get_local $0)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br_if $label$11
     (tee_local $12
      (i32.add
       (get_local $12)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $15
    (i32.load
     (i32.add
      (get_local $16)
      (i32.const 16)
     )
    )
   )
   (set_local $0
    (i32.load8_u offset=8
     (get_local $16)
    )
   )
  )
  (call $prints
   (tee_local $0
    (select
     (get_local $15)
     (get_local $4)
     (i32.and
      (get_local $0)
      (i32.const 1)
     )
    )
   )
  )
  (call $prints
   (i32.const 80)
  )
  (set_local $12
   (i32.const -1)
  )
  (loop $label$12
   (set_local $15
    (i32.add
     (get_local $0)
     (get_local $12)
    )
   )
   (set_local $12
    (tee_local $4
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
   )
   (br_if $label$12
    (i32.load8_u
     (i32.add
      (get_local $15)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $2
   (i64.extend_u/i32
    (get_local $4)
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $7
   (i64.const 59)
  )
  (set_local $9
   (i64.const 0)
  )
  (loop $label$13
   (set_local $10
    (i64.const 0)
   )
   (block $label$14
    (br_if $label$14
     (i64.ge_u
      (get_local $8)
      (get_local $2)
     )
    )
    (block $label$15
     (block $label$16
      (br_if $label$16
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $12
           (i32.load8_s
            (get_local $0)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $12
       (i32.add
        (get_local $12)
        (i32.const 165)
       )
      )
      (br $label$15)
     )
     (set_local $12
      (select
       (i32.add
        (get_local $12)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $12)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $10
     (i64.shr_s
      (i64.shl
       (i64.extend_u/i32
        (get_local $12)
       )
       (i64.const 56)
      )
      (i64.const 56)
     )
    )
   )
   (block $label$17
    (block $label$18
     (br_if $label$18
      (i64.gt_u
       (get_local $8)
       (i64.const 11)
      )
     )
     (set_local $10
      (i64.shl
       (i64.and
        (get_local $10)
        (i64.const 31)
       )
       (i64.and
        (get_local $7)
        (i64.const 4294967295)
       )
      )
     )
     (br $label$17)
    )
    (set_local $10
     (i64.and
      (get_local $10)
      (i64.const 15)
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $9
    (i64.or
     (get_local $10)
     (get_local $9)
    )
   )
   (br_if $label$13
    (i64.ne
     (tee_local $7
      (i64.add
       (get_local $7)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $prints
   (i32.const 96)
  )
  (call $printui
   (get_local $9)
  )
  (call $prints
   (i32.const 80)
  )
  (call $prints
   (i32.const 112)
  )
  (call $printui
   (tee_local $8
    (i64.rem_u
     (get_local $9)
     (i64.const 9007199254740990)
    )
   )
  )
  (call $prints
   (i32.const 80)
  )
  (block $label$19
   (br_if $label$19
    (i32.eqz
     (i32.and
      (i32.load8_u offset=8
       (get_local $16)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $16)
      (i32.const 16)
     )
    )
   )
  )
  (block $label$20
   (br_if $label$20
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $16)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=40
     (get_local $16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $16)
    (i32.const 48)
   )
  )
  (get_local $8)
 )
 (func $_ZN12eparticlectr12getiqbalanceEy (param $0 i32) (param $1 i64) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $5
   (i64.const 59)
  )
  (set_local $4
   (i32.const 128)
  )
  (set_local $7
   (i64.const 0)
  )
  (loop $label$0
   (set_local $8
    (i64.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i64.gt_u
      (get_local $6)
      (i64.const 11)
     )
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $2
           (i32.load8_s
            (get_local $4)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 165)
       )
      )
      (br $label$2)
     )
     (set_local $2
      (select
       (i32.add
        (get_local $2)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $2)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $8
     (i64.shl
      (i64.extend_u/i32
       (i32.and
        (get_local $2)
        (i32.const 31)
       )
      )
      (i64.and
       (get_local $5)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (set_local $6
    (i64.add
     (get_local $6)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.or
     (get_local $8)
     (get_local $7)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $9)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $9)
   (i64.const -1)
  )
  (set_local $6
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $9)
   (i64.const 0)
  )
  (set_local $5
   (i64.load offset=8
    (get_local $0)
   )
  )
  (i64.store offset=16
   (get_local $9)
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $9)
   (get_local $7)
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_s
     (tee_local $4
      (call $db_find_i64
       (get_local $7)
       (get_local $1)
       (i64.const 3607749779137757184)
       (i64.shr_u
        (get_local $5)
        (i64.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=16
      (tee_local $4
       (call $_ZNK5eosio11multi_indexILy3607749779137757184EN12eparticlectr7accountEJEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $9)
         (i32.const 8)
        )
        (get_local $4)
       )
      )
     )
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
    )
    (i32.const 144)
   )
   (set_local $6
    (i64.load
     (get_local $4)
    )
   )
   (br_if $label$4
    (i32.eqz
     (tee_local $0
      (i32.load offset=32
       (get_local $9)
      )
     )
    )
   )
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.eq
       (tee_local $4
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $9)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $0)
      )
     )
     (loop $label$7
      (set_local $2
       (i32.load
        (tee_local $4
         (i32.add
          (get_local $4)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $4)
       (i32.const 0)
      )
      (block $label$8
       (br_if $label$8
        (i32.eqz
         (get_local $2)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$7
       (i32.ne
        (get_local $0)
        (get_local $4)
       )
      )
     )
     (set_local $4
      (i32.load
       (i32.add
        (get_local $9)
        (i32.const 32)
       )
      )
     )
     (br $label$5)
    )
    (set_local $4
     (get_local $0)
    )
   )
   (i32.store
    (get_local $3)
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZNK5eosio11multi_indexILy3607749779137757184EN12eparticlectr7accountEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=44
   (tee_local $8
    (get_local $9)
   )
   (get_local $1)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 208)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=12
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
   (i32.store offset=16
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 44)
    )
   )
   (i32.store offset=8
    (get_local $8)
    (get_local $0)
   )
   (set_local $6
    (call $_ZN5eosio11multi_indexILy3607749779137757184EN12eparticlectr7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_
     (tee_local $4
      (call $_Znwj
       (i32.const 32)
      )
     )
     (get_local $0)
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $4)
   )
   (i64.store offset=8
    (get_local $8)
    (tee_local $5
     (i64.shr_u
      (i64.load offset=8
       (get_local $4)
      )
      (i64.const 8)
     )
    )
   )
   (i32.store offset=4
    (get_local $8)
    (tee_local $1
     (i32.load offset=20
      (get_local $4)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $7
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $7)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $7)
      (get_local $1)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $7)
      (get_local $4)
     )
     (i32.store
      (get_local $3)
      (i32.add
       (get_local $7)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN12eparticlectr7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy3607749779137757184EN12eparticlectr7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (i64.store offset=8
   (get_local $0)
   (i64.const 1398362884)
  )
  (i64.store
   (get_local $0)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 240)
  )
  (set_local $3
   (i64.shr_u
    (i64.load offset=8
     (get_local $0)
    )
    (i64.const 8)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $3)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $3
          (i64.shr_u
           (get_local $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $3
           (i64.shr_u
            (get_local $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $4
          (i32.add
           (get_local $4)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $5
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 304)
  )
  (i32.store offset=16
   (get_local $0)
   (get_local $1)
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load offset=4
        (get_local $2)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $5
    (i32.add
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=20
   (get_local $0)
   (i32.load
    (i32.load offset=8
     (get_local $2)
    )
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN12eparticlectr7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN12eparticlectr12swapEndian64Ey (param $0 i32) (param $1 i64) (result i64)
  (i64.or
   (i64.or
    (i64.or
     (i64.shl
      (get_local $1)
      (i64.const 56)
     )
     (i64.and
      (i64.shl
       (get_local $1)
       (i64.const 40)
      )
      (i64.const 71776119061217280)
     )
    )
    (i64.or
     (i64.and
      (i64.shl
       (get_local $1)
       (i64.const 24)
      )
      (i64.const 280375465082880)
     )
     (i64.and
      (i64.shl
       (get_local $1)
       (i64.const 8)
      )
      (i64.const 1095216660480)
     )
    )
   )
   (i64.or
    (i64.or
     (i64.and
      (i64.shr_u
       (get_local $1)
       (i64.const 8)
      )
      (i64.const 4278190080)
     )
     (i64.and
      (i64.shr_u
       (get_local $1)
       (i64.const 24)
      )
      (i64.const 16711680)
     )
    )
    (i64.or
     (i64.and
      (i64.shr_u
       (get_local $1)
       (i64.const 40)
      )
      (i64.const 65280)
     )
     (i64.shr_u
      (get_local $1)
      (i64.const 56)
     )
    )
   )
  )
 )
 (func $_ZN12eparticlectr10brainmeartEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $13
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
  )
  (call $require_auth
   (get_local $1)
  )
  (set_local $3
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (i64.add
     (get_local $2)
     (i64.const 4611686018427387903)
    )
    (i64.const 9223372036854775807)
   )
   (i32.const 240)
  )
  (set_local $8
   (i64.shr_u
    (get_local $3)
    (i64.const 8)
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $8)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$3
      (br_if $label$3
       (i64.ne
        (i64.and
         (tee_local $8
          (i64.shr_u
           (get_local $8)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$4
       (br_if $label$1
        (i64.ne
         (i64.and
          (tee_local $8
           (i64.shr_u
            (get_local $8)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$4
        (i32.lt_s
         (tee_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $4
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $4
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $4)
   (i32.const 304)
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $10
   (i64.const 59)
  )
  (set_local $0
   (i32.const 128)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$5
   (set_local $7
    (i64.const 0)
   )
   (block $label$6
    (br_if $label$6
     (i64.gt_u
      (get_local $8)
      (i64.const 11)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $4
           (i32.load8_s
            (get_local $0)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 165)
       )
      )
      (br $label$7)
     )
     (set_local $4
      (select
       (i32.add
        (get_local $4)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $4)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.extend_u/i32
       (i32.and
        (get_local $4)
        (i32.const 31)
       )
      )
      (i64.and
       (get_local $10)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$5
    (i64.ne
     (tee_local $10
      (i64.add
       (get_local $10)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $7
   (i64.const 59)
  )
  (set_local $0
   (i32.const 352)
  )
  (set_local $9
   (i64.const 0)
  )
  (loop $label$9
   (block $label$10
    (block $label$11
     (block $label$12
      (block $label$13
       (block $label$14
        (br_if $label$14
         (i64.gt_u
          (get_local $8)
          (i64.const 5)
         )
        )
        (br_if $label$13
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $4
             (i32.load8_s
              (get_local $0)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $4
         (i32.add
          (get_local $4)
          (i32.const 165)
         )
        )
        (br $label$12)
       )
       (set_local $10
        (i64.const 0)
       )
       (br_if $label$11
        (i64.le_u
         (get_local $8)
         (i64.const 11)
        )
       )
       (br $label$10)
      )
      (set_local $4
       (select
        (i32.add
         (get_local $4)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $4)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $10
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $4)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $10
     (i64.shl
      (i64.and
       (get_local $10)
       (i64.const 31)
      )
      (i64.and
       (get_local $7)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $9
    (i64.or
     (get_local $10)
     (get_local $9)
    )
   )
   (br_if $label$9
    (i64.ne
     (tee_local $7
      (i64.add
       (get_local $7)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $10
   (i64.const 59)
  )
  (set_local $0
   (i32.const 368)
  )
  (set_local $11
   (i64.const 0)
  )
  (loop $label$15
   (set_local $7
    (i64.const 0)
   )
   (block $label$16
    (br_if $label$16
     (i64.gt_u
      (get_local $8)
      (i64.const 11)
     )
    )
    (block $label$17
     (block $label$18
      (br_if $label$18
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $4
           (i32.load8_s
            (get_local $0)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 165)
       )
      )
      (br $label$17)
     )
     (set_local $4
      (select
       (i32.add
        (get_local $4)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $4)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.extend_u/i32
       (i32.and
        (get_local $4)
        (i32.const 31)
       )
      )
      (i64.and
       (get_local $10)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $11
    (i64.or
     (get_local $7)
     (get_local $11)
    )
   )
   (br_if $label$15
    (i64.ne
     (tee_local $10
      (i64.add
       (get_local $10)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $13)
    (i32.const 24)
   )
   (get_local $3)
  )
  (i64.store align=4
   (i32.add
    (get_local $13)
    (i32.const 36)
   )
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $13)
   (get_local $11)
  )
  (i64.store
   (get_local $13)
   (get_local $1)
  )
  (i64.store offset=16
   (get_local $13)
   (get_local $2)
  )
  (i32.store offset=32
   (get_local $13)
   (i32.const 0)
  )
  (set_local $4
   (i32.add
    (get_local $13)
    (i32.const 32)
   )
  )
  (block $label$19
   (br_if $label$19
    (i32.ge_u
     (tee_local $0
      (call $strlen
       (i32.const 384)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$20
    (block $label$21
     (block $label$22
      (br_if $label$22
       (i32.ge_u
        (get_local $0)
        (i32.const 11)
       )
      )
      (i32.store8
       (i32.add
        (get_local $13)
        (i32.const 32)
       )
       (i32.shl
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $12
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
      (br_if $label$21
       (get_local $0)
      )
      (br $label$20)
     )
     (set_local $12
      (call $_Znwj
       (tee_local $5
        (i32.and
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $13)
       (i32.const 32)
      )
      (i32.or
       (get_local $5)
       (i32.const 1)
      )
     )
     (i32.store
      (i32.add
       (get_local $13)
       (i32.const 40)
      )
      (get_local $12)
     )
     (i32.store
      (i32.add
       (get_local $13)
       (i32.const 36)
      )
      (get_local $0)
     )
    )
    (drop
     (call $memcpy
      (get_local $12)
      (i32.const 384)
      (get_local $0)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $12)
     (get_local $0)
    )
    (i32.const 0)
   )
   (i64.store
    (tee_local $0
     (call $_Znwj
      (i32.const 16)
     )
    )
    (get_local $1)
   )
   (i64.store offset=8
    (get_local $0)
    (get_local $9)
   )
   (i32.store offset=96
    (get_local $13)
    (get_local $0)
   )
   (i32.store offset=104
    (get_local $13)
    (tee_local $0
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
    )
   )
   (i32.store offset=100
    (get_local $13)
    (get_local $0)
   )
   (i64.store offset=48
    (get_local $13)
    (i64.load
     (get_local $13)
    )
   )
   (i64.store offset=56
    (get_local $13)
    (i64.load
     (i32.add
      (get_local $13)
      (i32.const 8)
     )
    )
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 48)
     )
     (i32.const 24)
    )
    (i64.load
     (i32.add
      (get_local $13)
      (i32.const 24)
     )
    )
   )
   (i64.store offset=64
    (get_local $13)
    (i64.load offset=16
     (get_local $13)
    )
   )
   (i32.store
    (tee_local $0
     (i32.add
      (i32.add
       (get_local $13)
       (i32.const 48)
      )
      (i32.const 40)
     )
    )
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 8)
     )
    )
   )
   (i64.store offset=80
    (get_local $13)
    (i64.load
     (get_local $4)
    )
   )
   (i32.store
    (i32.add
     (get_local $13)
     (i32.const 32)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $13)
     (i32.const 36)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $13)
     (i32.const 40)
    )
    (i32.const 0)
   )
   (call $_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE
    (get_local $6)
    (i64.const -3617168760277827584)
    (i32.add
     (get_local $13)
     (i32.const 96)
    )
    (i32.add
     (get_local $13)
     (i32.const 48)
    )
   )
   (block $label$23
    (br_if $label$23
     (i32.eqz
      (i32.and
       (i32.load8_u offset=80
        (get_local $13)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (get_local $0)
     )
    )
   )
   (block $label$24
    (br_if $label$24
     (i32.eqz
      (tee_local $0
       (i32.load offset=96
        (get_local $13)
       )
      )
     )
    )
    (i32.store offset=100
     (get_local $13)
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $0)
    )
   )
   (block $label$25
    (br_if $label$25
     (i32.eqz
      (i32.and
       (i32.load8_u
        (i32.add
         (get_local $13)
         (i32.const 32)
        )
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $13)
       (i32.const 40)
      )
     )
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $13)
     (i32.const 112)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $4)
  )
  (unreachable)
 )
 (func $_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 96)
    )
   )
  )
  (i32.store offset=16
   (get_local $9)
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $8
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $5
       (i32.shr_s
        (tee_local $4
         (i32.sub
          (i32.load offset=4
           (get_local $2)
          )
          (i32.load
           (get_local $2)
          )
         )
        )
        (i32.const 4)
       )
      )
     )
    )
    (br_if $label$0
     (i32.ge_u
      (get_local $5)
      (i32.const 268435456)
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 16)
     )
     (tee_local $6
      (i32.add
       (tee_local $8
        (call $_Znwj
         (get_local $4)
        )
       )
       (i32.shl
        (get_local $5)
        (i32.const 4)
       )
      )
     )
    )
    (i32.store offset=8
     (get_local $9)
     (get_local $8)
    )
    (i32.store offset=12
     (get_local $9)
     (get_local $8)
    )
    (block $label$2
     (br_if $label$2
      (i32.lt_s
       (tee_local $2
        (i32.sub
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 4)
          )
         )
         (tee_local $7
          (i32.load
           (get_local $2)
          )
         )
        )
       )
       (i32.const 1)
      )
     )
     (drop
      (call $memcpy
       (get_local $8)
       (get_local $7)
       (get_local $2)
      )
     )
     (i32.store offset=12
      (get_local $9)
      (tee_local $7
       (i32.add
        (get_local $8)
        (get_local $2)
       )
      )
     )
     (br $label$1)
    )
    (set_local $7
     (get_local $8)
    )
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 44)
    )
    (get_local $7)
   )
   (i64.store offset=32
    (get_local $9)
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (get_local $9)
     (i32.const 48)
    )
    (get_local $6)
   )
   (i64.store offset=24
    (get_local $9)
    (get_local $0)
   )
   (i32.store offset=40
    (get_local $9)
    (get_local $8)
   )
   (i64.store offset=8
    (get_local $9)
    (i64.const 0)
   )
   (i32.store offset=52
    (get_local $9)
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 24)
     )
     (i32.const 32)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 24)
     )
     (i32.const 36)
    )
    (i32.const 0)
   )
   (set_local $8
    (i32.add
     (tee_local $2
      (select
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 36)
        )
       )
       (i32.shr_u
        (tee_local $8
         (i32.load8_u offset=32
          (get_local $3)
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $8)
        (i32.const 1)
       )
      )
     )
     (i32.const 32)
    )
   )
   (set_local $0
    (i64.extend_u/i32
     (get_local $2)
    )
   )
   (set_local $2
    (i32.add
     (get_local $9)
     (i32.const 52)
    )
   )
   (loop $label$3
    (set_local $8
     (i32.add
      (get_local $8)
      (i32.const 1)
     )
    )
    (br_if $label$3
     (i64.ne
      (tee_local $0
       (i64.shr_u
        (get_local $0)
        (i64.const 7)
       )
      )
      (i64.const 0)
     )
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eqz
       (get_local $8)
      )
     )
     (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
      (get_local $2)
      (get_local $8)
     )
     (set_local $2
      (i32.load
       (i32.add
        (get_local $9)
        (i32.const 56)
       )
      )
     )
     (set_local $8
      (i32.load
       (i32.add
        (get_local $9)
        (i32.const 52)
       )
      )
     )
     (br $label$4)
    )
    (set_local $2
     (i32.const 0)
    )
    (set_local $8
     (i32.const 0)
    )
   )
   (i32.store offset=84
    (get_local $9)
    (get_local $8)
   )
   (i32.store offset=80
    (get_local $9)
    (get_local $8)
   )
   (i32.store offset=88
    (get_local $9)
    (get_local $2)
   )
   (i32.store offset=64
    (get_local $9)
    (i32.add
     (get_local $9)
     (i32.const 80)
    )
   )
   (i32.store offset=72
    (get_local $9)
    (get_local $3)
   )
   (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
    (i32.add
     (get_local $9)
     (i32.const 72)
    )
    (i32.add
     (get_local $9)
     (i32.const 64)
    )
   )
   (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
    (i32.add
     (get_local $9)
     (i32.const 80)
    )
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
   )
   (call $send_inline
    (tee_local $8
     (i32.load offset=80
      (get_local $9)
     )
    )
    (i32.sub
     (i32.load offset=84
      (get_local $9)
     )
     (get_local $8)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $8
       (i32.load offset=80
        (get_local $9)
       )
      )
     )
    )
    (i32.store offset=84
     (get_local $9)
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (tee_local $8
       (i32.load offset=52
        (get_local $9)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 56)
     )
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.eqz
      (tee_local $8
       (i32.load offset=40
        (get_local $9)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const 44)
     )
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (tee_local $8
       (i32.load offset=8
        (get_local $9)
       )
      )
     )
    )
    (i32.store offset=12
     (get_local $9)
     (get_local $8)
    )
    (call $_ZdlPv
     (get_local $8)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $9)
     (i32.const 96)
    )
   )
   (return)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
  )
  (unreachable)
 )
 (func $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $6
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$2
        (i32.le_s
         (tee_local $4
          (i32.add
           (tee_local $3
            (i32.sub
             (get_local $6)
             (tee_local $5
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $6
        (i32.const 2147483647)
       )
       (block $label$5
        (br_if $label$5
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$3
         (i32.eqz
          (tee_local $6
           (select
            (get_local $4)
            (tee_local $6
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $6)
             (get_local $4)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $_Znwj
         (get_local $6)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$6
       (i32.store8
        (get_local $6)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $6
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$0)
      )
     )
     (set_local $6
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $6)
    )
   )
   (set_local $6
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (loop $label$7
    (i32.store8
     (get_local $6)
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br_if $label$7
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $5
    (i32.sub
     (get_local $5)
     (tee_local $2
      (i32.sub
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.lt_s
      (get_local $2)
      (i32.const 1)
     )
    )
    (drop
     (call $memcpy
      (get_local $5)
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $5)
   )
   (i32.store
    (get_local $3)
    (get_local $6)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $4)
   )
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $_ZdlPv
    (get_local $1)
   )
   (return)
  )
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (tee_local $2
    (i32.add
     (i32.load offset=4
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (get_local $2)
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
   )
  )
 )
 (func $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (set_local $5
   (i32.const 16)
  )
  (set_local $2
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $4
      (i32.sub
       (tee_local $7
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 20)
         )
        )
       )
       (tee_local $3
        (i32.load offset=16
         (get_local $1)
        )
       )
      )
     )
     (i32.const 4)
    )
   )
  )
  (loop $label$0
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (get_local $3)
     (get_local $7)
    )
   )
   (set_local $5
    (i32.add
     (i32.and
      (get_local $4)
      (i32.const -16)
     )
     (get_local $5)
    )
   )
  )
  (set_local $5
   (i32.sub
    (i32.sub
     (tee_local $7
      (i32.load offset=28
       (get_local $1)
      )
     )
     (get_local $5)
    )
    (tee_local $3
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 32)
      )
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $6
   (i64.extend_u/i32
    (i32.sub
     (get_local $3)
     (get_local $7)
    )
   )
  )
  (loop $label$2
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const -1)
    )
   )
   (br_if $label$2
    (i64.ne
     (tee_local $6
      (i64.shr_u
       (get_local $6)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $5)
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $0)
     (i32.sub
      (i32.const 0)
      (get_local $5)
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $5
     (i32.load
      (get_local $0)
     )
    )
    (br $label$3)
   )
   (set_local $5
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $8)
   (get_local $5)
  )
  (i32.store offset=8
   (get_local $8)
   (get_local $7)
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (get_local $5)
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (get_local $5)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (get_local $7)
     (tee_local $0
      (i32.add
       (get_local $5)
       (i32.const 8)
      )
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (get_local $0)
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $8)
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
    (call $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
     (get_local $8)
     (get_local $2)
    )
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i64.extend_u/i32
    (i32.shr_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 4)
    )
   )
  )
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (loop $label$0
   (set_local $3
    (i32.wrap/i64
     (get_local $4)
    )
   )
   (i32.store8 offset=15
    (get_local $7)
    (i32.or
     (i32.shl
      (tee_local $6
       (i64.ne
        (tee_local $4
         (i64.shr_u
          (get_local $4)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $3)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $2)
      )
      (get_local $5)
     )
     (i32.const 0)
    )
    (i32.const 400)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $3
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (i32.load
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $6)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $6
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$2
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 400)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (get_local $6)
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (call $eosio_assert
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $2)
       )
       (get_local $5)
      )
      (i32.const 7)
     )
     (i32.const 400)
    )
    (drop
     (call $memcpy
      (i32.load
       (get_local $3)
      )
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $5
      (i32.add
       (i32.load
        (get_local $3)
       )
       (i32.const 8)
      )
     )
    )
    (br_if $label$2
     (i32.ne
      (tee_local $6
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (i32.sub
     (i32.load offset=4
      (get_local $1)
     )
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 400)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i32.ge_s
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $6)
    )
    (tee_local $5
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load
     (tee_local $6
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $2)
    (get_local $5)
   )
  )
  (i32.store
   (get_local $6)
   (i32.add
    (i32.load
     (get_local $6)
    )
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (tee_local $5
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $5)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $6
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.wrap/i64
     (get_local $7)
    )
   )
   (i32.store8 offset=15
    (get_local $8)
    (i32.or
     (i32.shl
      (tee_local $3
       (i64.ne
        (tee_local $7
         (i64.shr_u
          (get_local $7)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $2)
      (i32.const 127)
     )
    )
   )
   (call $eosio_assert
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $4)
      )
      (get_local $6)
     )
     (i32.const 0)
    )
    (i32.const 400)
   )
   (drop
    (call $memcpy
     (i32.load
      (get_local $5)
     )
     (i32.add
      (get_local $8)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $6
     (i32.add
      (i32.load
       (get_local $5)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$0
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (select
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $5
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $2
        (i32.and
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (set_local $3
    (i32.load offset=8
     (get_local $1)
    )
   )
   (call $eosio_assert
    (i32.ge_s
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $6)
     )
     (get_local $5)
    )
    (i32.const 400)
   )
   (drop
    (call $memcpy
     (i32.load
      (tee_local $6
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (select
      (get_local $3)
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (get_local $2)
     )
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (i32.add
     (i32.load
      (get_local $6)
     )
     (get_local $5)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN12eparticlectr10brainclaimEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i32)
  (local $23 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $23
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 256)
    )
   )
  )
  (i64.store offset=216
   (get_local $23)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $23)
    (i32.const 208)
   )
   (i32.const 0)
  )
  (i64.store offset=192
   (get_local $23)
   (i64.const -1)
  )
  (i64.store offset=200
   (get_local $23)
   (i64.const 0)
  )
  (i64.store offset=176
   (get_local $23)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=184
   (get_local $23)
   (get_local $1)
  )
  (i32.store16 offset=212
   (get_local $23)
   (i32.const 0)
  )
  (i32.store offset=168
   (get_local $23)
   (i32.add
    (get_local $23)
    (i32.const 176)
   )
  )
  (call $_ZNK5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy12481914933501493248ENS6_IS2_yXadL_ZNKS2_9get_powerEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
   (i32.add
    (get_local $23)
    (i32.const 16)
   )
   (i32.add
    (get_local $23)
    (i32.const 168)
   )
   (i32.add
    (get_local $23)
    (i32.const 216)
   )
  )
  (set_local $15
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $8
      (i32.load offset=20
       (get_local $23)
      )
     )
    )
   )
   (set_local $15
    (select
     (get_local $8)
     (i32.const 0)
     (i64.eq
      (i64.load offset=216
       (get_local $23)
      )
      (i64.load
       (get_local $8)
      )
     )
    )
   )
  )
  (call $eosio_assert
   (tee_local $8
    (i32.ne
     (get_local $15)
     (i32.const 0)
    )
   )
   (i32.const 416)
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 448)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=24
     (get_local $15)
    )
    (tee_local $4
     (i32.load offset=168
      (get_local $23)
     )
    )
   )
   (i32.const 496)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $4)
    )
    (call $current_receiver)
   )
   (i32.const 544)
  )
  (i64.store offset=128
   (get_local $23)
   (i64.load
    (get_local $15)
   )
  )
  (i64.store offset=136
   (get_local $23)
   (i64.load
    (tee_local $8
     (i32.add
      (get_local $15)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $1
   (i64.load offset=8
    (get_local $15)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $2)
    (i64.const 0)
   )
   (i32.const 608)
  )
  (call $eosio_assert
   (i64.ge_u
    (i64.load
     (get_local $8)
    )
    (get_local $2)
   )
   (i32.const 672)
  )
  (i64.store
   (get_local $8)
   (i64.sub
    (i64.load
     (get_local $8)
    )
    (get_local $2)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $1)
    (i64.load offset=8
     (get_local $15)
    )
   )
   (i32.const 704)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $23)
     (i32.const 16)
    )
    (get_local $15)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $23)
      (i32.const 16)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $15)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.add
     (i32.add
      (get_local $23)
      (i32.const 16)
     )
     (i32.const 16)
    )
    (get_local $8)
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=28
    (get_local $15)
   )
   (i64.const 0)
   (i32.add
    (get_local $23)
    (i32.const 16)
   )
   (i32.const 24)
  )
  (block $label$1
   (br_if $label$1
    (i64.lt_u
     (get_local $1)
     (i64.load offset=16
      (get_local $4)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $1)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $5
   (i32.add
    (i32.add
     (get_local $23)
     (i32.const 128)
    )
    (i32.const 8)
   )
  )
  (i64.store offset=72
   (get_local $23)
   (i64.load
    (get_local $15)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $23)
       (i32.const 128)
      )
      (i32.add
       (get_local $23)
       (i32.const 72)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $11
       (i32.load
        (tee_local $13
         (i32.add
          (get_local $15)
          (i32.const 32)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $13)
     (tee_local $11
      (call $db_idx64_find_primary
       (i64.load
        (get_local $4)
       )
       (i64.load offset=8
        (get_local $4)
       )
       (i64.const 4453191243736408576)
       (i32.add
        (get_local $23)
        (i32.const 240)
       )
       (get_local $1)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $11)
    (i64.const 0)
    (i32.add
     (get_local $23)
     (i32.const 72)
    )
   )
  )
  (i64.store offset=72
   (get_local $23)
   (i64.load
    (get_local $8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (get_local $5)
      (i32.add
       (get_local $23)
       (i32.const 72)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $15
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $15)
          (i32.const 36)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $8)
     (tee_local $15
      (call $db_idx64_find_primary
       (i64.load
        (get_local $4)
       )
       (i64.load offset=8
        (get_local $4)
       )
       (i64.const 4453191243736408577)
       (i32.add
        (get_local $23)
        (i32.const 240)
       )
       (get_local $1)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $15)
    (i64.const 0)
    (i32.add
     (get_local $23)
     (i32.const 72)
    )
   )
  )
  (set_local $15
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $23)
    (i32.const 160)
   )
   (i32.const 0)
  )
  (i64.store offset=144
   (get_local $23)
   (i64.const -1)
  )
  (i64.store offset=152
   (get_local $23)
   (i64.const 0)
  )
  (i64.store offset=128
   (get_local $23)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=136
   (get_local $23)
   (get_local $1)
  )
  (i32.store16 offset=164
   (get_local $23)
   (i32.const 0)
  )
  (i32.store offset=120
   (get_local $23)
   (i32.add
    (get_local $23)
    (i32.const 128)
   )
  )
  (call $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
   (i32.add
    (get_local $23)
    (i32.const 16)
   )
   (i32.add
    (get_local $23)
    (i32.const 120)
   )
   (i32.add
    (get_local $23)
    (i32.const 216)
   )
  )
  (block $label$6
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (tee_local $8
        (i32.load offset=20
         (get_local $23)
        )
       )
      )
     )
     (br_if $label$7
      (i64.ne
       (i64.load offset=216
        (get_local $23)
       )
       (i64.load offset=8
        (get_local $8)
       )
      )
     )
     (i64.store offset=112
      (get_local $23)
      (tee_local $1
       (i64.load offset=16
        (get_local $23)
       )
      )
     )
     (set_local $15
      (i64.gt_u
       (get_local $1)
       (i64.const 4294967295)
      )
     )
     (set_local $22
      (i32.or
       (i32.add
        (get_local $23)
        (i32.const 112)
       )
       (i32.const 4)
      )
     )
     (br $label$6)
    )
    (i32.store offset=116
     (get_local $23)
     (i32.const 0)
    )
    (i32.store offset=112
     (get_local $23)
     (i32.add
      (get_local $23)
      (i32.const 120)
     )
    )
    (set_local $22
     (i32.or
      (i32.add
       (get_local $23)
       (i32.const 112)
      )
      (i32.const 4)
     )
    )
    (br $label$6)
   )
   (set_local $15
    (i32.const 0)
   )
   (i32.store offset=116
    (get_local $23)
    (i32.const 0)
   )
   (i32.store offset=112
    (get_local $23)
    (i32.add
     (get_local $23)
     (i32.const 120)
    )
   )
   (set_local $22
    (i32.or
     (i32.add
      (get_local $23)
      (i32.const 112)
     )
     (i32.const 4)
    )
   )
  )
  (call $eosio_assert
   (get_local $15)
   (i32.const 768)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 240)
  )
  (set_local $1
   (i64.const 5462355)
  )
  (set_local $15
   (i32.const 0)
  )
  (block $label$9
   (block $label$10
    (loop $label$11
     (br_if $label$10
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $1)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$12
      (br_if $label$12
       (i64.ne
        (i64.and
         (tee_local $1
          (i64.shr_u
           (get_local $1)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$13
       (br_if $label$10
        (i64.ne
         (i64.and
          (tee_local $1
           (i64.shr_u
            (get_local $1)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$13
        (i32.lt_s
         (tee_local $15
          (i32.add
           (get_local $15)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (br_if $label$11
      (i32.lt_s
       (tee_local $15
        (i32.add
         (get_local $15)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$9)
    )
   )
   (set_local $8
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 304)
  )
  (block $label$14
   (block $label$15
    (br_if $label$15
     (i32.eqz
      (tee_local $15
       (i32.load offset=116
        (get_local $23)
       )
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $23)
      (i32.const 100)
     )
    )
    (set_local $3
     (i32.or
      (get_local $23)
      (i32.const 1)
     )
    )
    (set_local $9
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
    (set_local $10
     (i32.add
      (tee_local $4
       (i32.add
        (i32.add
         (get_local $23)
         (i32.const 16)
        )
        (i32.const 32)
       )
      )
      (i32.const 4)
     )
    )
    (set_local $11
     (i32.add
      (get_local $23)
      (i32.const 92)
     )
    )
    (set_local $14
     (i32.add
      (get_local $23)
      (i32.const 56)
     )
    )
    (loop $label$16
     (br_if $label$15
      (i64.ne
       (i64.load offset=8
        (get_local $15)
       )
       (i64.load offset=216
        (get_local $23)
       )
      )
     )
     (block $label$17
      (block $label$18
       (block $label$19
        (br_if $label$19
         (i32.lt_u
          (i32.sub
           (i32.wrap/i64
            (i64.div_u
             (call $current_time)
             (i64.const 1000000)
            )
           )
           (i32.load offset=32
            (tee_local $15
             (i32.load
              (get_local $22)
             )
            )
           )
          )
          (i32.const 31)
         )
        )
        (set_local $7
         (i64.load
          (get_local $9)
         )
        )
        (call $eosio_assert
         (i64.lt_u
          (i64.add
           (tee_local $6
            (i64.load offset=24
             (get_local $15)
            )
           )
           (i64.const 4611686018427387903)
          )
          (i64.const 9223372036854775807)
         )
         (i32.const 240)
        )
        (set_local $1
         (i64.shr_u
          (get_local $7)
          (i64.const 8)
         )
        )
        (set_local $15
         (i32.const 0)
        )
        (loop $label$20
         (br_if $label$18
          (i32.gt_u
           (i32.add
            (i32.shl
             (i32.wrap/i64
              (get_local $1)
             )
             (i32.const 24)
            )
            (i32.const -1073741825)
           )
           (i32.const 452984830)
          )
         )
         (block $label$21
          (br_if $label$21
           (i64.ne
            (i64.and
             (tee_local $1
              (i64.shr_u
               (get_local $1)
               (i64.const 8)
              )
             )
             (i64.const 255)
            )
            (i64.const 0)
           )
          )
          (loop $label$22
           (br_if $label$18
            (i64.ne
             (i64.and
              (tee_local $1
               (i64.shr_u
                (get_local $1)
                (i64.const 8)
               )
              )
              (i64.const 255)
             )
             (i64.const 0)
            )
           )
           (br_if $label$22
            (i32.lt_s
             (tee_local $15
              (i32.add
               (get_local $15)
               (i32.const 1)
              )
             )
             (i32.const 7)
            )
           )
          )
         )
         (set_local $8
          (i32.const 1)
         )
         (br_if $label$20
          (i32.lt_s
           (tee_local $15
            (i32.add
             (get_local $15)
             (i32.const 1)
            )
           )
           (i32.const 7)
          )
         )
         (br $label$17)
        )
       )
       (drop
        (call $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE14const_iteratorppEv
         (i32.add
          (get_local $23)
          (i32.const 112)
         )
        )
       )
       (br_if $label$16
        (tee_local $15
         (i32.load offset=116
          (get_local $23)
         )
        )
       )
       (br $label$15)
      )
      (set_local $8
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (get_local $8)
      (i32.const 304)
     )
     (set_local $1
      (i64.const 0)
     )
     (set_local $2
      (i64.const 59)
     )
     (set_local $15
      (i32.const 368)
     )
     (set_local $16
      (i64.const 0)
     )
     (loop $label$23
      (set_local $17
       (i64.const 0)
      )
      (block $label$24
       (br_if $label$24
        (i64.gt_u
         (get_local $1)
         (i64.const 11)
        )
       )
       (block $label$25
        (block $label$26
         (br_if $label$26
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $8
              (i32.load8_s
               (get_local $15)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (i32.const 165)
          )
         )
         (br $label$25)
        )
        (set_local $8
         (select
          (i32.add
           (get_local $8)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $8)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $17
        (i64.shl
         (i64.extend_u/i32
          (i32.and
           (get_local $8)
           (i32.const 31)
          )
         )
         (i64.and
          (get_local $2)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $15
       (i32.add
        (get_local $15)
        (i32.const 1)
       )
      )
      (set_local $1
       (i64.add
        (get_local $1)
        (i64.const 1)
       )
      )
      (set_local $16
       (i64.or
        (get_local $17)
        (get_local $16)
       )
      )
      (br_if $label$23
       (i64.ne
        (tee_local $2
         (i64.add
          (get_local $2)
          (i64.const -5)
         )
        )
        (i64.const -6)
       )
      )
     )
     (set_local $1
      (i64.const 0)
     )
     (set_local $17
      (i64.const 59)
     )
     (set_local $15
      (i32.const 352)
     )
     (set_local $18
      (i64.const 0)
     )
     (loop $label$27
      (block $label$28
       (block $label$29
        (block $label$30
         (block $label$31
          (block $label$32
           (br_if $label$32
            (i64.gt_u
             (get_local $1)
             (i64.const 5)
            )
           )
           (br_if $label$31
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $8
                (i32.load8_s
                 (get_local $15)
                )
               )
               (i32.const -97)
              )
              (i32.const 255)
             )
             (i32.const 25)
            )
           )
           (set_local $8
            (i32.add
             (get_local $8)
             (i32.const 165)
            )
           )
           (br $label$30)
          )
          (set_local $2
           (i64.const 0)
          )
          (br_if $label$29
           (i64.le_u
            (get_local $1)
            (i64.const 11)
           )
          )
          (br $label$28)
         )
         (set_local $8
          (select
           (i32.add
            (get_local $8)
            (i32.const 208)
           )
           (i32.const 0)
           (i32.lt_u
            (i32.and
             (i32.add
              (get_local $8)
              (i32.const -49)
             )
             (i32.const 255)
            )
            (i32.const 5)
           )
          )
         )
        )
        (set_local $2
         (i64.shr_s
          (i64.shl
           (i64.extend_u/i32
            (get_local $8)
           )
           (i64.const 56)
          )
          (i64.const 56)
         )
        )
       )
       (set_local $2
        (i64.shl
         (i64.and
          (get_local $2)
          (i64.const 31)
         )
         (i64.and
          (get_local $17)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $15
       (i32.add
        (get_local $15)
        (i32.const 1)
       )
      )
      (set_local $1
       (i64.add
        (get_local $1)
        (i64.const 1)
       )
      )
      (set_local $18
       (i64.or
        (get_local $2)
        (get_local $18)
       )
      )
      (br_if $label$27
       (i64.ne
        (tee_local $17
         (i64.add
          (get_local $17)
          (i64.const -5)
         )
        )
        (i64.const -6)
       )
      )
     )
     (set_local $1
      (i64.const 0)
     )
     (set_local $2
      (i64.const 59)
     )
     (set_local $15
      (i32.const 128)
     )
     (set_local $19
      (i64.const 0)
     )
     (loop $label$33
      (set_local $17
       (i64.const 0)
      )
      (block $label$34
       (br_if $label$34
        (i64.gt_u
         (get_local $1)
         (i64.const 11)
        )
       )
       (block $label$35
        (block $label$36
         (br_if $label$36
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $8
              (i32.load8_s
               (get_local $15)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (i32.const 165)
          )
         )
         (br $label$35)
        )
        (set_local $8
         (select
          (i32.add
           (get_local $8)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $8)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $17
        (i64.shl
         (i64.extend_u/i32
          (i32.and
           (get_local $8)
           (i32.const 31)
          )
         )
         (i64.and
          (get_local $2)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $15
       (i32.add
        (get_local $15)
        (i32.const 1)
       )
      )
      (set_local $1
       (i64.add
        (get_local $1)
        (i64.const 1)
       )
      )
      (set_local $19
       (i64.or
        (get_local $17)
        (get_local $19)
       )
      )
      (br_if $label$33
       (i64.ne
        (tee_local $2
         (i64.add
          (get_local $2)
          (i64.const -5)
         )
        )
        (i64.const -6)
       )
      )
     )
     (set_local $1
      (i64.const 0)
     )
     (set_local $17
      (i64.const 59)
     )
     (set_local $15
      (i32.const 800)
     )
     (set_local $20
      (i64.const 0)
     )
     (loop $label$37
      (block $label$38
       (block $label$39
        (block $label$40
         (block $label$41
          (block $label$42
           (br_if $label$42
            (i64.gt_u
             (get_local $1)
             (i64.const 7)
            )
           )
           (br_if $label$41
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $8
                (i32.load8_s
                 (get_local $15)
                )
               )
               (i32.const -97)
              )
              (i32.const 255)
             )
             (i32.const 25)
            )
           )
           (set_local $8
            (i32.add
             (get_local $8)
             (i32.const 165)
            )
           )
           (br $label$40)
          )
          (set_local $2
           (i64.const 0)
          )
          (br_if $label$39
           (i64.le_u
            (get_local $1)
            (i64.const 11)
           )
          )
          (br $label$38)
         )
         (set_local $8
          (select
           (i32.add
            (get_local $8)
            (i32.const 208)
           )
           (i32.const 0)
           (i32.lt_u
            (i32.and
             (i32.add
              (get_local $8)
              (i32.const -49)
             )
             (i32.const 255)
            )
            (i32.const 5)
           )
          )
         )
        )
        (set_local $2
         (i64.shr_s
          (i64.shl
           (i64.extend_u/i32
            (get_local $8)
           )
           (i64.const 56)
          )
          (i64.const 56)
         )
        )
       )
       (set_local $2
        (i64.shl
         (i64.and
          (get_local $2)
          (i64.const 31)
         )
         (i64.and
          (get_local $17)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $15
       (i32.add
        (get_local $15)
        (i32.const 1)
       )
      )
      (set_local $1
       (i64.add
        (get_local $1)
        (i64.const 1)
       )
      )
      (set_local $20
       (i64.or
        (get_local $2)
        (get_local $20)
       )
      )
      (br_if $label$37
       (i64.ne
        (tee_local $17
         (i64.add
          (get_local $17)
          (i64.const -5)
         )
        )
        (i64.const -6)
       )
      )
     )
     (set_local $1
      (i64.const 0)
     )
     (set_local $2
      (i64.const 59)
     )
     (set_local $15
      (i32.const 368)
     )
     (set_local $21
      (i64.const 0)
     )
     (loop $label$43
      (set_local $17
       (i64.const 0)
      )
      (block $label$44
       (br_if $label$44
        (i64.gt_u
         (get_local $1)
         (i64.const 11)
        )
       )
       (block $label$45
        (block $label$46
         (br_if $label$46
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $8
              (i32.load8_s
               (get_local $15)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $8
          (i32.add
           (get_local $8)
           (i32.const 165)
          )
         )
         (br $label$45)
        )
        (set_local $8
         (select
          (i32.add
           (get_local $8)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $8)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $17
        (i64.shl
         (i64.extend_u/i32
          (i32.and
           (get_local $8)
           (i32.const 31)
          )
         )
         (i64.and
          (get_local $2)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $15
       (i32.add
        (get_local $15)
        (i32.const 1)
       )
      )
      (set_local $1
       (i64.add
        (get_local $1)
        (i64.const 1)
       )
      )
      (set_local $21
       (i64.or
        (get_local $17)
        (get_local $21)
       )
      )
      (br_if $label$43
       (i64.ne
        (tee_local $2
         (i64.add
          (get_local $2)
          (i64.const -5)
         )
        )
        (i64.const -6)
       )
      )
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $23)
        (i32.const 8)
       )
      )
      (i32.const 0)
     )
     (i64.store
      (get_local $23)
      (i64.const 0)
     )
     (br_if $label$14
      (i32.ge_u
       (tee_local $15
        (call $strlen
         (i32.const 816)
        )
       )
       (i32.const -16)
      )
     )
     (block $label$47
      (block $label$48
       (block $label$49
        (br_if $label$49
         (i32.ge_u
          (get_local $15)
          (i32.const 11)
         )
        )
        (i32.store8
         (get_local $23)
         (i32.shl
          (get_local $15)
          (i32.const 1)
         )
        )
        (set_local $0
         (get_local $3)
        )
        (br_if $label$48
         (get_local $15)
        )
        (br $label$47)
       )
       (i32.store
        (get_local $8)
        (tee_local $0
         (call $_Znwj
          (tee_local $13
           (i32.and
            (i32.add
             (get_local $15)
             (i32.const 16)
            )
            (i32.const -16)
           )
          )
         )
        )
       )
       (i32.store
        (get_local $23)
        (i32.or
         (get_local $13)
         (i32.const 1)
        )
       )
       (i32.store offset=4
        (get_local $23)
        (get_local $15)
       )
      )
      (drop
       (call $memcpy
        (get_local $0)
        (i32.const 816)
        (get_local $15)
       )
      )
     )
     (i32.store8
      (i32.add
       (get_local $0)
       (get_local $15)
      )
      (i32.const 0)
     )
     (i64.store offset=16
      (get_local $23)
      (get_local $21)
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $23)
        (i32.const 16)
       )
       (i32.const 8)
      )
      (i64.load offset=216
       (get_local $23)
      )
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $23)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (get_local $6)
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $23)
        (i32.const 16)
       )
       (i32.const 24)
      )
      (get_local $7)
     )
     (i32.store
      (get_local $10)
      (i32.load offset=4
       (get_local $23)
      )
     )
     (i32.store
      (get_local $4)
      (i32.load
       (get_local $23)
      )
     )
     (i32.store
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.load
       (get_local $8)
      )
     )
     (i32.store
      (get_local $23)
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $23)
      (i32.const 0)
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $23)
        (i32.const 72)
       )
       (i32.const 8)
      )
      (get_local $20)
     )
     (i64.store offset=72
      (get_local $23)
      (get_local $19)
     )
     (i32.store
      (tee_local $0
       (i32.add
        (i32.add
         (get_local $23)
         (i32.const 72)
        )
        (i32.const 16)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $11)
      (i32.const 0)
     )
     (i32.store
      (tee_local $12
       (i32.add
        (i32.add
         (get_local $23)
         (i32.const 72)
        )
        (i32.const 24)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $0)
      (tee_local $15
       (call $_Znwj
        (i32.const 16)
       )
      )
     )
     (i64.store
      (get_local $15)
      (get_local $16)
     )
     (i64.store offset=8
      (get_local $15)
      (get_local $18)
     )
     (i32.store
      (get_local $5)
      (i32.const 0)
     )
     (i32.store
      (tee_local $13
       (i32.add
        (i32.add
         (get_local $23)
         (i32.const 72)
        )
        (i32.const 32)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $12)
      (tee_local $15
       (i32.add
        (get_local $15)
        (i32.const 16)
       )
      )
     )
     (i32.store
      (get_local $11)
      (get_local $15)
     )
     (i32.store
      (i32.add
       (i32.add
        (get_local $23)
        (i32.const 72)
       )
       (i32.const 36)
      )
      (i32.const 0)
     )
     (set_local $15
      (i32.add
       (tee_local $12
        (select
         (i32.load
          (i32.add
           (i32.add
            (get_local $23)
            (i32.const 16)
           )
           (i32.const 36)
          )
         )
         (i32.shr_u
          (tee_local $15
           (i32.load8_u
            (get_local $4)
           )
          )
          (i32.const 1)
         )
         (i32.and
          (get_local $15)
          (i32.const 1)
         )
        )
       )
       (i32.const 32)
      )
     )
     (set_local $1
      (i64.extend_u/i32
       (get_local $12)
      )
     )
     (loop $label$50
      (set_local $15
       (i32.add
        (get_local $15)
        (i32.const 1)
       )
      )
      (br_if $label$50
       (i64.ne
        (tee_local $1
         (i64.shr_u
          (get_local $1)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
     )
     (block $label$51
      (block $label$52
       (br_if $label$52
        (i32.eqz
         (get_local $15)
        )
       )
       (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
        (get_local $5)
        (get_local $15)
       )
       (set_local $12
        (i32.load
         (get_local $13)
        )
       )
       (set_local $15
        (i32.load
         (get_local $5)
        )
       )
       (br $label$51)
      )
      (set_local $12
       (i32.const 0)
      )
      (set_local $15
       (i32.const 0)
      )
     )
     (i32.store
      (i32.add
       (i32.add
        (get_local $23)
        (i32.const 240)
       )
       (i32.const 8)
      )
      (get_local $12)
     )
     (i32.store offset=244
      (get_local $23)
      (get_local $15)
     )
     (i32.store offset=240
      (get_local $23)
      (get_local $15)
     )
     (i32.store offset=224
      (get_local $23)
      (i32.add
       (get_local $23)
       (i32.const 240)
      )
     )
     (i32.store offset=232
      (get_local $23)
      (i32.add
       (get_local $23)
       (i32.const 16)
      )
     )
     (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
      (i32.add
       (get_local $23)
       (i32.const 232)
      )
      (i32.add
       (get_local $23)
       (i32.const 224)
      )
     )
     (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
      (i32.add
       (get_local $23)
       (i32.const 240)
      )
      (i32.add
       (get_local $23)
       (i32.const 72)
      )
     )
     (call $send_inline
      (tee_local $15
       (i32.load offset=240
        (get_local $23)
       )
      )
      (i32.sub
       (i32.load offset=244
        (get_local $23)
       )
       (get_local $15)
      )
     )
     (block $label$53
      (br_if $label$53
       (i32.eqz
        (tee_local $15
         (i32.load offset=240
          (get_local $23)
         )
        )
       )
      )
      (i32.store offset=244
       (get_local $23)
       (get_local $15)
      )
      (call $_ZdlPv
       (get_local $15)
      )
     )
     (block $label$54
      (br_if $label$54
       (i32.eqz
        (tee_local $15
         (i32.load
          (get_local $5)
         )
        )
       )
      )
      (i32.store
       (get_local $13)
       (get_local $15)
      )
      (call $_ZdlPv
       (get_local $15)
      )
     )
     (block $label$55
      (br_if $label$55
       (i32.eqz
        (tee_local $15
         (i32.load
          (get_local $0)
         )
        )
       )
      )
      (i32.store
       (get_local $11)
       (get_local $15)
      )
      (call $_ZdlPv
       (get_local $15)
      )
     )
     (block $label$56
      (br_if $label$56
       (i32.eqz
        (i32.and
         (i32.load8_u
          (get_local $4)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (get_local $14)
       )
      )
     )
     (block $label$57
      (br_if $label$57
       (i32.eqz
        (i32.and
         (i32.load8_u
          (get_local $23)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (get_local $8)
       )
      )
     )
     (i64.store offset=16
      (get_local $23)
      (tee_local $1
       (i64.load offset=112
        (get_local $23)
       )
      )
     )
     (call $eosio_assert
      (i32.ne
       (tee_local $15
        (i32.wrap/i64
         (i64.shr_u
          (get_local $1)
          (i64.const 32)
         )
        )
       )
       (i32.const 0)
      )
      (i32.const 832)
     )
     (drop
      (call $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE14const_iteratorppEv
       (i32.add
        (get_local $23)
        (i32.const 16)
       )
      )
     )
     (call $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5eraseERKS2_
      (i32.load offset=120
       (get_local $23)
      )
      (get_local $15)
     )
     (i64.store offset=112
      (get_local $23)
      (tee_local $1
       (i64.load offset=16
        (get_local $23)
       )
      )
     )
     (br_if $label$16
      (tee_local $15
       (i32.wrap/i64
        (i64.shr_u
         (get_local $1)
         (i64.const 32)
        )
       )
      )
     )
    )
   )
   (block $label$58
    (br_if $label$58
     (i32.eqz
      (tee_local $4
       (i32.load offset=152
        (get_local $23)
       )
      )
     )
    )
    (block $label$59
     (block $label$60
      (br_if $label$60
       (i32.eq
        (tee_local $15
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $23)
            (i32.const 156)
           )
          )
         )
        )
        (get_local $4)
       )
      )
      (loop $label$61
       (set_local $8
        (i32.load
         (tee_local $15
          (i32.add
           (get_local $15)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $15)
        (i32.const 0)
       )
       (block $label$62
        (br_if $label$62
         (i32.eqz
          (get_local $8)
         )
        )
        (call $_ZdlPv
         (get_local $8)
        )
       )
       (br_if $label$61
        (i32.ne
         (get_local $4)
         (get_local $15)
        )
       )
      )
      (set_local $15
       (i32.load
        (i32.add
         (get_local $23)
         (i32.const 152)
        )
       )
      )
      (br $label$59)
     )
     (set_local $15
      (get_local $4)
     )
    )
    (i32.store
     (get_local $5)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $15)
    )
   )
   (block $label$63
    (br_if $label$63
     (i32.eqz
      (tee_local $4
       (i32.load offset=200
        (get_local $23)
       )
      )
     )
    )
    (block $label$64
     (block $label$65
      (br_if $label$65
       (i32.eq
        (tee_local $15
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $23)
            (i32.const 204)
           )
          )
         )
        )
        (get_local $4)
       )
      )
      (loop $label$66
       (set_local $8
        (i32.load
         (tee_local $15
          (i32.add
           (get_local $15)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $15)
        (i32.const 0)
       )
       (block $label$67
        (br_if $label$67
         (i32.eqz
          (get_local $8)
         )
        )
        (call $_ZdlPv
         (get_local $8)
        )
       )
       (br_if $label$66
        (i32.ne
         (get_local $4)
         (get_local $15)
        )
       )
      )
      (set_local $15
       (i32.load
        (i32.add
         (get_local $23)
         (i32.const 200)
        )
       )
      )
      (br $label$64)
     )
     (set_local $15
      (get_local $4)
     )
    )
    (i32.store
     (get_local $5)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $15)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $23)
     (i32.const 256)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $23)
  )
  (unreachable)
 )
 (func $_ZNK5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy12481914933501493248ENS6_IS2_yXadL_ZNKS2_9get_powerEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx64_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const 4453191243736408576)
       (get_local $10)
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=8
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load offset=8
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=24
        (tee_local $2
         (i32.load
          (i32.add
           (get_local $9)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 144)
     )
     (br $label$3)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=24
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy12481914933501493248ENS6_IS2_yXadL_ZNKS2_9get_powerEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (call $db_find_i64
          (i64.load
           (get_local $4)
          )
          (i64.load offset=8
           (get_local $4)
          )
          (i64.const 4453191243736408576)
          (get_local $5)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 144)
    )
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const 32)
    )
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx64_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const -4157660949894922240)
       (get_local $10)
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=8
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load
        (i32.add
         (tee_local $2
          (i32.load
           (i32.add
            (get_local $9)
            (i32.const -24)
           )
          )
         )
         (i32.const 44)
        )
       )
       (get_local $4)
      )
      (i32.const 144)
     )
     (br $label$3)
    )
    (set_local $2
     (i32.const 0)
    )
    (br_if $label$3
     (i32.lt_s
      (tee_local $8
       (call $db_find_i64
        (i64.load
         (get_local $4)
        )
        (i64.load offset=8
         (get_local $4)
        )
        (i64.const -4157660949894922240)
        (get_local $5)
       )
      )
      (i32.const 0)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=44
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (get_local $8)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 144)
    )
   )
   (i32.store offset=52
    (get_local $2)
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE14const_iteratorppEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 0)
   )
   (i32.const 1056)
  )
  (block $label$0
   (br_if $label$0
    (i32.ne
     (tee_local $6
      (i32.load offset=52
       (tee_local $8
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const -1)
    )
   )
   (set_local $6
    (call $db_idx64_find_primary
     (i64.load
      (tee_local $6
       (i32.load
        (i32.load
         (get_local $0)
        )
       )
      )
     )
     (i64.load offset=8
      (get_local $6)
     )
     (i64.const -4157660949894922240)
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
     (i64.load
      (get_local $8)
     )
    )
   )
   (i32.store offset=52
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
    (get_local $6)
   )
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $1
      (call $db_idx64_next
       (get_local $6)
       (i32.add
        (get_local $9)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $3
    (i64.load offset=8
     (get_local $9)
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.eq
      (tee_local $8
       (i32.load
        (i32.add
         (tee_local $2
          (i32.load
           (i32.load
            (get_local $0)
           )
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $4
       (i32.load offset=24
        (get_local $2)
       )
      )
     )
    )
    (set_local $7
     (i32.add
      (get_local $8)
      (i32.const -24)
     )
    )
    (set_local $5
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (loop $label$3
     (br_if $label$2
      (i64.eq
       (i64.load
        (i32.load
         (get_local $7)
        )
       )
       (get_local $3)
      )
     )
     (set_local $8
      (get_local $7)
     )
     (set_local $7
      (tee_local $6
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
     (br_if $label$3
      (i32.ne
       (i32.add
        (get_local $6)
        (get_local $5)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eq
       (get_local $8)
       (get_local $4)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load
        (i32.add
         (tee_local $7
          (i32.load
           (i32.add
            (get_local $8)
            (i32.const -24)
           )
          )
         )
         (i32.const 44)
        )
       )
       (get_local $2)
      )
      (i32.const 144)
     )
     (br $label$4)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=44
       (tee_local $7
        (call $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $2)
         (call $db_find_i64
          (i64.load
           (get_local $2)
          )
          (i64.load offset=8
           (get_local $2)
          )
          (i64.const -4157660949894922240)
          (get_local $3)
         )
        )
       )
      )
      (get_local $2)
     )
     (i32.const 144)
    )
   )
   (i32.store offset=52
    (get_local $7)
    (get_local $1)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5eraseERKS2_ (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 44)
     )
    )
    (get_local $0)
   )
   (i32.const 880)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 928)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (tee_local $5
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
     (tee_local $3
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $2
    (i64.load
     (get_local $1)
    )
   )
   (set_local $6
    (i32.sub
     (i32.const 0)
     (get_local $3)
    )
   )
   (set_local $8
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i64.eq
      (i64.load
       (i32.load
        (get_local $8)
       )
      )
      (get_local $2)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (set_local $8
     (tee_local $4
      (i32.add
       (get_local $8)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $6)
      )
      (i32.const -24)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (get_local $3)
   )
   (i32.const 992)
  )
  (set_local $8
   (i32.add
    (get_local $7)
    (i32.const -24)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (tee_local $4
       (i32.load
        (get_local $5)
       )
      )
     )
    )
    (set_local $3
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (set_local $7
     (get_local $8)
    )
    (loop $label$4
     (set_local $6
      (i32.load
       (tee_local $8
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
       )
      )
     )
     (i32.store
      (get_local $8)
      (i32.const 0)
     )
     (set_local $4
      (i32.load
       (get_local $7)
      )
     )
     (i32.store
      (get_local $7)
      (get_local $6)
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (get_local $4)
       )
      )
      (call $_ZdlPv
       (get_local $4)
      )
     )
     (i32.store
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 40)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (set_local $7
      (get_local $8)
     )
     (br_if $label$4
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $3)
       )
       (i32.const -24)
      )
     )
    )
    (br_if $label$2
     (i32.eq
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
      (get_local $8)
     )
    )
   )
   (loop $label$6
    (set_local $4
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$7
     (br_if $label$7
      (i32.eqz
       (get_local $4)
      )
     )
     (call $_ZdlPv
      (get_local $4)
     )
    )
    (br_if $label$6
     (i32.ne
      (get_local $8)
      (get_local $7)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $db_remove_i64
   (i32.load offset=48
    (get_local $1)
   )
  )
  (block $label$8
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $7
       (i32.load offset=52
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (br_if $label$8
     (i32.lt_s
      (tee_local $7
       (call $db_idx64_find_primary
        (i64.load
         (get_local $0)
        )
        (i64.load offset=8
         (get_local $0)
        )
        (i64.const -4157660949894922240)
        (i32.add
         (get_local $9)
         (i32.const 8)
        )
        (i64.load
         (get_local $1)
        )
       )
      )
      (i32.const 0)
     )
    )
   )
   (call $db_idx64_remove
    (get_local $7)
   )
  )
  (block $label$10
   (block $label$11
    (br_if $label$11
     (i32.gt_s
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 56)
        )
       )
      )
      (i32.const -1)
     )
    )
    (br_if $label$10
     (i32.lt_s
      (tee_local $7
       (call $db_idx64_find_primary
        (i64.load
         (get_local $0)
        )
        (i64.load offset=8
         (get_local $0)
        )
        (i64.const -4157660949894922239)
        (i32.add
         (get_local $9)
         (i32.const 8)
        )
        (i64.load
         (get_local $1)
        )
       )
      )
      (i32.const 0)
     )
    )
   )
   (call $db_idx64_remove
    (get_local $7)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 208)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=12
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=8
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=16
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=44
    (tee_local $6
     (call $_Znwj
      (i32.const 64)
     )
    )
    (get_local $0)
   )
   (i32.store8 offset=40
    (get_local $6)
    (i32.const 0)
   )
   (i32.store offset=24
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $6)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (i32.store offset=44
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 24)
    )
   )
   (i32.store offset=48
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
   )
   (i32.store offset=52
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 36)
    )
   )
   (i32.store offset=56
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 40)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_S5_S5_RmS6_RbEEEZN5eosiorsINS9_10datastreamIPKcEEN12eparticlectr5stakeELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
   )
   (i32.store offset=52
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=48
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=56
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=32
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=4
    (get_local $8)
    (tee_local $7
     (i32.load offset=48
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (get_local $6)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_S5_S5_RmS6_RbEEEZN5eosiorsINS9_10datastreamIPKcEEN12eparticlectr5stakeELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $2
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $0
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $0)
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (i32.const 15)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store8
   (get_local $2)
   (i32.ne
    (i32.load8_u offset=15
     (get_local $4)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy12481914933501493248ENS6_IS2_yXadL_ZNKS2_9get_powerEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $4
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 208)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.le_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (drop
      (call $db_get_i64
       (get_local $1)
       (tee_local $7
        (call $malloc
         (get_local $4)
        )
       )
       (get_local $4)
      )
     )
     (call $free
      (get_local $7)
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $7
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $4)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
    (drop
     (call $db_get_i64
      (get_local $1)
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.store offset=24
    (tee_local $6
     (call $_Znwj
      (i32.const 40)
     )
    )
    (get_local $0)
   )
   (i64.store offset=16
    (get_local $6)
    (i64.const 0)
   )
   (call $eosio_assert
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
    (i32.const 336)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $7)
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.ne
     (tee_local $4
      (i32.and
       (get_local $4)
       (i32.const -8)
      )
     )
     (i32.const 8)
    )
    (i32.const 336)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (call $eosio_assert
    (i32.ne
     (get_local $4)
     (i32.const 16)
    )
    (i32.const 336)
   )
   (drop
    (call $memcpy
     (i32.add
      (get_local $6)
      (i32.const 16)
     )
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
     (i32.const 8)
    )
   )
   (i32.store offset=32
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=28
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=36
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load offset=8
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=28
      (get_local $6)
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$6)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy12481914933501493248ENS8_IS4_yXadL_ZNKS4_9get_powerEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
  (get_local $6)
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy12481914933501493248ENS8_IS4_yXadL_ZNKS4_9get_powerEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN12eparticlectr10brainclmidEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $19
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 240)
    )
   )
  )
  (i64.store offset=200
   (get_local $19)
   (get_local $1)
  )
  (set_local $9
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $19)
     (i32.const 160)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=176
   (get_local $19)
   (i64.const -1)
  )
  (i64.store offset=184
   (get_local $19)
   (i64.const 0)
  )
  (i64.store offset=160
   (get_local $19)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=168
   (get_local $19)
   (get_local $1)
  )
  (i32.store16 offset=196
   (get_local $19)
   (i32.const 0)
  )
  (i32.store offset=152
   (get_local $19)
   (i32.add
    (get_local $19)
    (i32.const 160)
   )
  )
  (call $_ZNK5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy12481914933501493248ENS6_IS2_yXadL_ZNKS2_9get_powerEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
   (i32.add
    (get_local $19)
    (i32.const 16)
   )
   (i32.add
    (get_local $19)
    (i32.const 152)
   )
   (i32.add
    (get_local $19)
    (i32.const 200)
   )
  )
  (set_local $12
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $8
      (i32.load offset=20
       (get_local $19)
      )
     )
    )
   )
   (set_local $12
    (select
     (get_local $8)
     (i32.const 0)
     (i64.eq
      (i64.load offset=200
       (get_local $19)
      )
      (i64.load
       (get_local $8)
      )
     )
    )
   )
  )
  (call $eosio_assert
   (tee_local $8
    (i32.ne
     (get_local $12)
     (i32.const 0)
    )
   )
   (i32.const 416)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $19)
     (i32.const 112)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=128
   (get_local $19)
   (i64.const -1)
  )
  (i64.store offset=136
   (get_local $19)
   (i64.const 0)
  )
  (i64.store offset=112
   (get_local $19)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=120
   (get_local $19)
   (get_local $1)
  )
  (i32.store16 offset=148
   (get_local $19)
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $4
      (call $db_find_i64
       (get_local $1)
       (get_local $1)
       (i64.const -4157660949894922240)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=44
      (tee_local $9
       (call $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $19)
         (i32.const 112)
        )
        (get_local $4)
       )
      )
     )
     (i32.add
      (get_local $19)
      (i32.const 112)
     )
    )
    (i32.const 144)
   )
  )
  (call $eosio_assert
   (tee_local $3
    (i32.ne
     (get_local $9)
     (i32.const 0)
    )
   )
   (i32.const 768)
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 448)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=24
     (get_local $12)
    )
    (tee_local $4
     (i32.load offset=152
      (get_local $19)
     )
    )
   )
   (i32.const 496)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $4)
    )
    (call $current_receiver)
   )
   (i32.const 544)
  )
  (i64.store offset=72
   (get_local $19)
   (i64.load
    (get_local $12)
   )
  )
  (i64.store offset=80
   (get_local $19)
   (i64.load
    (tee_local $8
     (i32.add
      (get_local $12)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $1
   (i64.load offset=8
    (get_local $12)
   )
  )
  (call $eosio_assert
   (i64.ne
    (tee_local $2
     (i64.load offset=24
      (get_local $9)
     )
    )
    (i64.const 0)
   )
   (i32.const 608)
  )
  (call $eosio_assert
   (i64.ge_u
    (i64.load
     (get_local $8)
    )
    (get_local $2)
   )
   (i32.const 672)
  )
  (i64.store
   (get_local $8)
   (i64.sub
    (i64.load
     (get_local $8)
    )
    (get_local $2)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $1)
    (i64.load offset=8
     (get_local $12)
    )
   )
   (i32.const 704)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $19)
     (i32.const 16)
    )
    (get_local $12)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $19)
      (i32.const 16)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $12)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.add
     (i32.add
      (get_local $19)
      (i32.const 16)
     )
     (i32.const 16)
    )
    (get_local $8)
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=28
    (get_local $12)
   )
   (i64.const 0)
   (i32.add
    (get_local $19)
    (i32.const 16)
   )
   (i32.const 24)
  )
  (block $label$2
   (br_if $label$2
    (i64.lt_u
     (get_local $1)
     (i64.load offset=16
      (get_local $4)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $1)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $5
   (i32.add
    (i32.add
     (get_local $19)
     (i32.const 72)
    )
    (i32.const 8)
   )
  )
  (i64.store offset=224
   (get_local $19)
   (i64.load
    (get_local $12)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $19)
       (i32.const 72)
      )
      (i32.add
       (get_local $19)
       (i32.const 224)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.gt_s
      (tee_local $11
       (i32.load
        (tee_local $10
         (i32.add
          (get_local $12)
          (i32.const 32)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $10)
     (tee_local $11
      (call $db_idx64_find_primary
       (i64.load
        (get_local $4)
       )
       (i64.load offset=8
        (get_local $4)
       )
       (i64.const 4453191243736408576)
       (get_local $19)
       (get_local $1)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $11)
    (i64.const 0)
    (i32.add
     (get_local $19)
     (i32.const 224)
    )
   )
  )
  (i64.store offset=224
   (get_local $19)
   (i64.load
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (call $memcmp
      (get_local $5)
      (i32.add
       (get_local $19)
       (i32.const 224)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.gt_s
      (tee_local $12
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $12)
          (i32.const 36)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $8)
     (tee_local $12
      (call $db_idx64_find_primary
       (i64.load
        (get_local $4)
       )
       (i64.load offset=8
        (get_local $4)
       )
       (i64.const 4453191243736408577)
       (get_local $19)
       (get_local $1)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $12)
    (i64.const 0)
    (i32.add
     (get_local $19)
     (i32.const 224)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 240)
  )
  (set_local $1
   (i64.const 5462355)
  )
  (set_local $12
   (i32.const 0)
  )
  (block $label$7
   (block $label$8
    (loop $label$9
     (br_if $label$8
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $1)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$10
      (br_if $label$10
       (i64.ne
        (i64.and
         (tee_local $1
          (i64.shr_u
           (get_local $1)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$11
       (br_if $label$8
        (i64.ne
         (i64.and
          (tee_local $1
           (i64.shr_u
            (get_local $1)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$11
        (i32.lt_s
         (tee_local $12
          (i32.add
           (get_local $12)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (br_if $label$9
      (i32.lt_s
       (tee_local $12
        (i32.add
         (get_local $12)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$7)
    )
   )
   (set_local $8
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 304)
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.wrap/i64
     (i64.div_u
      (call $current_time)
      (i64.const 1000000)
     )
    )
    (i32.load offset=36
     (get_local $9)
    )
   )
   (i32.const 1088)
  )
  (set_local $7
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (i64.add
     (tee_local $6
      (i64.load
       (i32.add
        (get_local $9)
        (i32.const 24)
       )
      )
     )
     (i64.const 4611686018427387903)
    )
    (i64.const 9223372036854775807)
   )
   (i32.const 240)
  )
  (set_local $1
   (i64.shr_u
    (get_local $7)
    (i64.const 8)
   )
  )
  (set_local $12
   (i32.const 0)
  )
  (block $label$12
   (block $label$13
    (loop $label$14
     (br_if $label$13
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $1)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$15
      (br_if $label$15
       (i64.ne
        (i64.and
         (tee_local $1
          (i64.shr_u
           (get_local $1)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$16
       (br_if $label$13
        (i64.ne
         (i64.and
          (tee_local $1
           (i64.shr_u
            (get_local $1)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$16
        (i32.lt_s
         (tee_local $12
          (i32.add
           (get_local $12)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (br_if $label$14
      (i32.lt_s
       (tee_local $12
        (i32.add
         (get_local $12)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$12)
    )
   )
   (set_local $8
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 304)
  )
  (set_local $1
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $12
   (i32.const 368)
  )
  (set_local $13
   (i64.const 0)
  )
  (loop $label$17
   (set_local $14
    (i64.const 0)
   )
   (block $label$18
    (br_if $label$18
     (i64.gt_u
      (get_local $1)
      (i64.const 11)
     )
    )
    (block $label$19
     (block $label$20
      (br_if $label$20
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $8
           (i32.load8_s
            (get_local $12)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $8
       (i32.add
        (get_local $8)
        (i32.const 165)
       )
      )
      (br $label$19)
     )
     (set_local $8
      (select
       (i32.add
        (get_local $8)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $8)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $14
     (i64.shl
      (i64.extend_u/i32
       (i32.and
        (get_local $8)
        (i32.const 31)
       )
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $12
    (i32.add
     (get_local $12)
     (i32.const 1)
    )
   )
   (set_local $1
    (i64.add
     (get_local $1)
     (i64.const 1)
    )
   )
   (set_local $13
    (i64.or
     (get_local $14)
     (get_local $13)
    )
   )
   (br_if $label$17
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $1
   (i64.const 0)
  )
  (set_local $14
   (i64.const 59)
  )
  (set_local $12
   (i32.const 352)
  )
  (set_local $15
   (i64.const 0)
  )
  (loop $label$21
   (block $label$22
    (block $label$23
     (block $label$24
      (block $label$25
       (block $label$26
        (br_if $label$26
         (i64.gt_u
          (get_local $1)
          (i64.const 5)
         )
        )
        (br_if $label$25
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $8
             (i32.load8_s
              (get_local $12)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $8
         (i32.add
          (get_local $8)
          (i32.const 165)
         )
        )
        (br $label$24)
       )
       (set_local $2
        (i64.const 0)
       )
       (br_if $label$23
        (i64.le_u
         (get_local $1)
         (i64.const 11)
        )
       )
       (br $label$22)
      )
      (set_local $8
       (select
        (i32.add
         (get_local $8)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $8)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $2
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $8)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $2
     (i64.shl
      (i64.and
       (get_local $2)
       (i64.const 31)
      )
      (i64.and
       (get_local $14)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $12
    (i32.add
     (get_local $12)
     (i32.const 1)
    )
   )
   (set_local $1
    (i64.add
     (get_local $1)
     (i64.const 1)
    )
   )
   (set_local $15
    (i64.or
     (get_local $2)
     (get_local $15)
    )
   )
   (br_if $label$21
    (i64.ne
     (tee_local $14
      (i64.add
       (get_local $14)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $1
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $12
   (i32.const 128)
  )
  (set_local $16
   (i64.const 0)
  )
  (loop $label$27
   (set_local $14
    (i64.const 0)
   )
   (block $label$28
    (br_if $label$28
     (i64.gt_u
      (get_local $1)
      (i64.const 11)
     )
    )
    (block $label$29
     (block $label$30
      (br_if $label$30
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $8
           (i32.load8_s
            (get_local $12)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $8
       (i32.add
        (get_local $8)
        (i32.const 165)
       )
      )
      (br $label$29)
     )
     (set_local $8
      (select
       (i32.add
        (get_local $8)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $8)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $14
     (i64.shl
      (i64.extend_u/i32
       (i32.and
        (get_local $8)
        (i32.const 31)
       )
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $12
    (i32.add
     (get_local $12)
     (i32.const 1)
    )
   )
   (set_local $1
    (i64.add
     (get_local $1)
     (i64.const 1)
    )
   )
   (set_local $16
    (i64.or
     (get_local $14)
     (get_local $16)
    )
   )
   (br_if $label$27
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $1
   (i64.const 0)
  )
  (set_local $14
   (i64.const 59)
  )
  (set_local $12
   (i32.const 800)
  )
  (set_local $17
   (i64.const 0)
  )
  (loop $label$31
   (block $label$32
    (block $label$33
     (block $label$34
      (block $label$35
       (block $label$36
        (br_if $label$36
         (i64.gt_u
          (get_local $1)
          (i64.const 7)
         )
        )
        (br_if $label$35
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $8
             (i32.load8_s
              (get_local $12)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $8
         (i32.add
          (get_local $8)
          (i32.const 165)
         )
        )
        (br $label$34)
       )
       (set_local $2
        (i64.const 0)
       )
       (br_if $label$33
        (i64.le_u
         (get_local $1)
         (i64.const 11)
        )
       )
       (br $label$32)
      )
      (set_local $8
       (select
        (i32.add
         (get_local $8)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $8)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $2
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $8)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $2
     (i64.shl
      (i64.and
       (get_local $2)
       (i64.const 31)
      )
      (i64.and
       (get_local $14)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $12
    (i32.add
     (get_local $12)
     (i32.const 1)
    )
   )
   (set_local $1
    (i64.add
     (get_local $1)
     (i64.const 1)
    )
   )
   (set_local $17
    (i64.or
     (get_local $2)
     (get_local $17)
    )
   )
   (br_if $label$31
    (i64.ne
     (tee_local $14
      (i64.add
       (get_local $14)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $1
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $12
   (i32.const 368)
  )
  (set_local $18
   (i64.const 0)
  )
  (loop $label$37
   (set_local $14
    (i64.const 0)
   )
   (block $label$38
    (br_if $label$38
     (i64.gt_u
      (get_local $1)
      (i64.const 11)
     )
    )
    (block $label$39
     (block $label$40
      (br_if $label$40
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $8
           (i32.load8_s
            (get_local $12)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $8
       (i32.add
        (get_local $8)
        (i32.const 165)
       )
      )
      (br $label$39)
     )
     (set_local $8
      (select
       (i32.add
        (get_local $8)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $8)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $14
     (i64.shl
      (i64.extend_u/i32
       (i32.and
        (get_local $8)
        (i32.const 31)
       )
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $12
    (i32.add
     (get_local $12)
     (i32.const 1)
    )
   )
   (set_local $1
    (i64.add
     (get_local $1)
     (i64.const 1)
    )
   )
   (set_local $18
    (i64.or
     (get_local $14)
     (get_local $18)
    )
   )
   (br_if $label$37
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $19)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (i64.store
   (get_local $19)
   (i64.const 0)
  )
  (block $label$41
   (br_if $label$41
    (i32.ge_u
     (tee_local $12
      (call $strlen
       (i32.const 816)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$42
    (block $label$43
     (block $label$44
      (br_if $label$44
       (i32.ge_u
        (get_local $12)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $19)
       (i32.shl
        (get_local $12)
        (i32.const 1)
       )
      )
      (set_local $8
       (i32.or
        (get_local $19)
        (i32.const 1)
       )
      )
      (br_if $label$43
       (get_local $12)
      )
      (br $label$42)
     )
     (set_local $8
      (call $_Znwj
       (tee_local $4
        (i32.and
         (i32.add
          (get_local $12)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $19)
      (i32.or
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $19)
      (get_local $8)
     )
     (i32.store offset=4
      (get_local $19)
      (get_local $12)
     )
    )
    (drop
     (call $memcpy
      (get_local $8)
      (i32.const 816)
      (get_local $12)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $8)
     (get_local $12)
    )
    (i32.const 0)
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $19)
      (i32.const 16)
     )
     (i32.const 24)
    )
    (get_local $7)
   )
   (i32.store
    (tee_local $8
     (i32.add
      (i32.add
       (get_local $19)
       (i32.const 16)
      )
      (i32.const 36)
     )
    )
    (i32.load offset=4
     (get_local $19)
    )
   )
   (i64.store offset=16
    (get_local $19)
    (get_local $18)
   )
   (i64.store offset=24
    (get_local $19)
    (i64.load offset=200
     (get_local $19)
    )
   )
   (i32.store
    (i32.add
     (get_local $19)
     (i32.const 56)
    )
    (i32.load
     (tee_local $12
      (i32.add
       (get_local $19)
       (i32.const 8)
      )
     )
    )
   )
   (i64.store offset=32
    (get_local $19)
    (get_local $6)
   )
   (i32.store offset=48
    (get_local $19)
    (i32.load
     (get_local $19)
    )
   )
   (i32.store
    (get_local $19)
    (i32.const 0)
   )
   (i32.store offset=4
    (get_local $19)
    (i32.const 0)
   )
   (i32.store
    (get_local $12)
    (i32.const 0)
   )
   (i64.store offset=72
    (get_local $19)
    (get_local $16)
   )
   (i64.store offset=80
    (get_local $19)
    (get_local $17)
   )
   (i64.store
    (tee_local $12
     (call $_Znwj
      (i32.const 16)
     )
    )
    (get_local $13)
   )
   (i64.store offset=8
    (get_local $12)
    (get_local $15)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $19)
      (i32.const 72)
     )
     (i32.const 32)
    )
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $19)
      (i32.const 72)
     )
     (i32.const 24)
    )
    (tee_local $4
     (i32.add
      (get_local $12)
      (i32.const 16)
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $19)
     (i32.const 92)
    )
    (get_local $4)
   )
   (i32.store offset=88
    (get_local $19)
    (get_local $12)
   )
   (i32.store offset=100
    (get_local $19)
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $19)
      (i32.const 72)
     )
     (i32.const 36)
    )
    (i32.const 0)
   )
   (set_local $12
    (i32.add
     (tee_local $8
      (select
       (i32.load
        (get_local $8)
       )
       (i32.shr_u
        (tee_local $12
         (i32.load8_u offset=48
          (get_local $19)
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $12)
        (i32.const 1)
       )
      )
     )
     (i32.const 32)
    )
   )
   (set_local $1
    (i64.extend_u/i32
     (get_local $8)
    )
   )
   (set_local $8
    (i32.add
     (get_local $19)
     (i32.const 100)
    )
   )
   (loop $label$45
    (set_local $12
     (i32.add
      (get_local $12)
      (i32.const 1)
     )
    )
    (br_if $label$45
     (i64.ne
      (tee_local $1
       (i64.shr_u
        (get_local $1)
        (i64.const 7)
       )
      )
      (i64.const 0)
     )
    )
   )
   (block $label$46
    (block $label$47
     (br_if $label$47
      (i32.eqz
       (get_local $12)
      )
     )
     (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
      (get_local $8)
      (get_local $12)
     )
     (set_local $8
      (i32.load
       (i32.add
        (get_local $19)
        (i32.const 104)
       )
      )
     )
     (set_local $12
      (i32.load
       (i32.add
        (get_local $19)
        (i32.const 100)
       )
      )
     )
     (br $label$46)
    )
    (set_local $8
     (i32.const 0)
    )
    (set_local $12
     (i32.const 0)
    )
   )
   (i32.store offset=228
    (get_local $19)
    (get_local $12)
   )
   (i32.store offset=224
    (get_local $19)
    (get_local $12)
   )
   (i32.store offset=232
    (get_local $19)
    (get_local $8)
   )
   (i32.store offset=208
    (get_local $19)
    (i32.add
     (get_local $19)
     (i32.const 224)
    )
   )
   (i32.store offset=216
    (get_local $19)
    (i32.add
     (get_local $19)
     (i32.const 16)
    )
   )
   (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
    (i32.add
     (get_local $19)
     (i32.const 216)
    )
    (i32.add
     (get_local $19)
     (i32.const 208)
    )
   )
   (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
    (i32.add
     (get_local $19)
     (i32.const 224)
    )
    (i32.add
     (get_local $19)
     (i32.const 72)
    )
   )
   (call $send_inline
    (tee_local $12
     (i32.load offset=224
      (get_local $19)
     )
    )
    (i32.sub
     (i32.load offset=228
      (get_local $19)
     )
     (get_local $12)
    )
   )
   (block $label$48
    (br_if $label$48
     (i32.eqz
      (tee_local $12
       (i32.load offset=224
        (get_local $19)
       )
      )
     )
    )
    (i32.store offset=228
     (get_local $19)
     (get_local $12)
    )
    (call $_ZdlPv
     (get_local $12)
    )
   )
   (block $label$49
    (br_if $label$49
     (i32.eqz
      (tee_local $12
       (i32.load offset=100
        (get_local $19)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $19)
      (i32.const 104)
     )
     (get_local $12)
    )
    (call $_ZdlPv
     (get_local $12)
    )
   )
   (block $label$50
    (br_if $label$50
     (i32.eqz
      (tee_local $12
       (i32.load offset=88
        (get_local $19)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $19)
      (i32.const 92)
     )
     (get_local $12)
    )
    (call $_ZdlPv
     (get_local $12)
    )
   )
   (block $label$51
    (br_if $label$51
     (i32.eqz
      (i32.and
       (i32.load8_u
        (i32.add
         (get_local $19)
         (i32.const 48)
        )
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $19)
       (i32.const 56)
      )
     )
    )
   )
   (block $label$52
    (br_if $label$52
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $19)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $19)
       (i32.const 8)
      )
     )
    )
   )
   (call $eosio_assert
    (get_local $3)
    (i32.const 832)
   )
   (call $eosio_assert
    (get_local $3)
    (i32.const 1056)
   )
   (block $label$53
    (br_if $label$53
     (i32.lt_s
      (tee_local $12
       (call $db_next_i64
        (i32.load offset=48
         (get_local $9)
        )
        (i32.add
         (get_local $19)
         (i32.const 16)
        )
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
      (i32.add
       (get_local $19)
       (i32.const 112)
      )
      (get_local $12)
     )
    )
   )
   (call $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5eraseERKS2_
    (i32.add
     (get_local $19)
     (i32.const 112)
    )
    (get_local $9)
   )
   (block $label$54
    (br_if $label$54
     (i32.eqz
      (tee_local $9
       (i32.load offset=136
        (get_local $19)
       )
      )
     )
    )
    (block $label$55
     (block $label$56
      (br_if $label$56
       (i32.eq
        (tee_local $12
         (i32.load
          (tee_local $4
           (i32.add
            (get_local $19)
            (i32.const 140)
           )
          )
         )
        )
        (get_local $9)
       )
      )
      (loop $label$57
       (set_local $8
        (i32.load
         (tee_local $12
          (i32.add
           (get_local $12)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $12)
        (i32.const 0)
       )
       (block $label$58
        (br_if $label$58
         (i32.eqz
          (get_local $8)
         )
        )
        (call $_ZdlPv
         (get_local $8)
        )
       )
       (br_if $label$57
        (i32.ne
         (get_local $9)
         (get_local $12)
        )
       )
      )
      (set_local $12
       (i32.load
        (i32.add
         (get_local $19)
         (i32.const 136)
        )
       )
      )
      (br $label$55)
     )
     (set_local $12
      (get_local $9)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $9)
    )
    (call $_ZdlPv
     (get_local $12)
    )
   )
   (block $label$59
    (br_if $label$59
     (i32.eqz
      (tee_local $9
       (i32.load offset=184
        (get_local $19)
       )
      )
     )
    )
    (block $label$60
     (block $label$61
      (br_if $label$61
       (i32.eq
        (tee_local $12
         (i32.load
          (tee_local $4
           (i32.add
            (get_local $19)
            (i32.const 188)
           )
          )
         )
        )
        (get_local $9)
       )
      )
      (loop $label$62
       (set_local $8
        (i32.load
         (tee_local $12
          (i32.add
           (get_local $12)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $12)
        (i32.const 0)
       )
       (block $label$63
        (br_if $label$63
         (i32.eqz
          (get_local $8)
         )
        )
        (call $_ZdlPv
         (get_local $8)
        )
       )
       (br_if $label$62
        (i32.ne
         (get_local $9)
         (get_local $12)
        )
       )
      )
      (set_local $12
       (i32.load
        (i32.add
         (get_local $19)
         (i32.const 184)
        )
       )
      )
      (br $label$60)
     )
     (set_local $12
      (get_local $9)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $9)
    )
    (call $_ZdlPv
     (get_local $12)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $19)
     (i32.const 240)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $19)
  )
  (unreachable)
 )
 (func $_ZN12eparticlectr16propose_precheckEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_ (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i64.store offset=48
   (get_local $7)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $7)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $7)
   (get_local $1)
  )
  (i32.store16 offset=44
   (get_local $7)
   (i32.const 0)
  )
  (i32.store
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (call $_ZNK5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy12481914933501493248ENS6_IS2_yXadL_ZNKS2_9get_powerEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
   (i32.add
    (get_local $7)
    (i32.const 56)
   )
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $5
      (i32.load offset=60
       (get_local $7)
      )
     )
    )
   )
   (set_local $0
    (select
     (get_local $5)
     (i32.const 0)
     (i64.eq
      (i64.load offset=48
       (get_local $7)
      )
      (i64.load
       (get_local $5)
      )
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $0)
    (i32.const 0)
   )
   (i32.const 416)
  )
  (call $eosio_assert
   (i64.gt_u
    (i64.load offset=16
     (get_local $0)
    )
    (i64.const 10)
   )
   (i32.const 1120)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $4
      (i32.load offset=32
       (get_local $7)
      )
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $7)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$4
      (set_local $5
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $4)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 32)
       )
      )
     )
     (br $label$2)
    )
    (set_local $0
     (get_local $4)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
 )
 (func $_ZN12eparticlectr7proposeEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_S7_ (type $FUNCSIG$vijiii) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 176)
    )
   )
  )
  (i64.store offset=104
   (get_local $8)
   (get_local $1)
  )
  (call $_ZN12eparticlectr16propose_precheckEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_
   (get_local $0)
   (get_local $1)
   (get_local $8)
   (get_local $8)
  )
  (i32.store
   (tee_local $7
    (i32.add
     (get_local $8)
     (i32.const 96)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=80
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=88
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=64
   (get_local $8)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=72
   (get_local $8)
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 102)
   )
   (i32.const 0)
  )
  (i32.store16 offset=100
   (get_local $8)
   (i32.const 0)
  )
  (i32.store offset=56
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
   (get_local $2)
  )
  (call $_ZNK5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (set_local $6
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $5
      (i32.load offset=172
       (get_local $8)
      )
     )
    )
   )
   (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $8)
     (i32.const 112)
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
   (br_if $label$0
    (i32.eqz
     (i64.eqz
      (i64.or
       (i64.xor
        (i64.load offset=16
         (get_local $8)
        )
        (i64.load offset=112
         (get_local $8)
        )
       )
       (i64.xor
        (i64.load offset=24
         (get_local $8)
        )
        (i64.load offset=120
         (get_local $8)
        )
       )
      )
     )
    )
   )
   (br_if $label$0
    (i64.ne
     (i64.or
      (i64.xor
       (i64.load offset=32
        (get_local $8)
       )
       (i64.load offset=128
        (get_local $8)
       )
      )
      (i64.xor
       (i64.load
        (i32.add
         (i32.add
          (get_local $8)
          (i32.const 16)
         )
         (i32.const 24)
        )
       )
       (i64.load
        (i32.add
         (i32.add
          (get_local $8)
          (i32.const 112)
         )
         (i32.const 24)
        )
       )
      )
     )
     (i64.const 0)
    )
   )
   (set_local $6
    (i32.eqz
     (i32.load offset=172
      (get_local $8)
     )
    )
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 1232)
  )
  (i64.store offset=8
   (get_local $8)
   (call $_ZN12eparticlectr20ipfs_to_uint64_truncERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (get_local $2)
   )
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=116
   (get_local $8)
   (get_local $2)
  )
  (i32.store offset=120
   (get_local $8)
   (get_local $3)
  )
  (i32.store offset=124
   (get_local $8)
   (get_local $4)
  )
  (i32.store offset=132
   (get_local $8)
   (get_local $0)
  )
  (i32.store offset=112
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (i32.store offset=128
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 104)
   )
  )
  (i64.store offset=168
   (get_local $8)
   (get_local $1)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=64
     (get_local $8)
    )
    (call $current_receiver)
   )
   (i32.const 1264)
  )
  (i32.store offset=20
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 112)
   )
  )
  (i32.store offset=16
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (i32.store offset=24
   (get_local $8)
   (i32.add
    (get_local $8)
    (i32.const 168)
   )
  )
  (i64.store offset=8 align=4
   (tee_local $6
    (call $_Znwj
     (i32.const 112)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=16 align=4
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=24 align=4
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=32 align=4
   (get_local $6)
   (i64.const 0)
  )
  (i32.store offset=40
   (get_local $6)
   (i32.const 0)
  )
  (i32.store offset=92
   (get_local $6)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
  (call $_ZZN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE7emplaceIZNS1_7proposeEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEESO_SO_E3$_2EENSF_14const_iteratorEyOT_ENKUlRSR_E_clINSF_4itemEEEDaST_
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
   (get_local $6)
  )
  (i32.store offset=160
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=16
   (get_local $8)
   (tee_local $1
    (i64.load
     (get_local $6)
    )
   )
  )
  (i32.store offset=156
   (get_local $8)
   (tee_local $4
    (i32.load offset=96
     (get_local $6)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $8)
          (i32.const 92)
         )
        )
       )
      )
      (i32.load
       (get_local $7)
      )
     )
    )
    (i64.store offset=8
     (get_local $3)
     (get_local $1)
    )
    (i32.store offset=16
     (get_local $3)
     (get_local $4)
    )
    (i32.store offset=160
     (get_local $8)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $6)
    )
    (i32.store
     (get_local $5)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
    (i32.add
     (get_local $8)
     (i32.const 160)
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.add
     (get_local $8)
     (i32.const 156)
    )
   )
  )
  (set_local $6
   (i32.load offset=160
    (get_local $8)
   )
  )
  (i32.store offset=160
   (get_local $8)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $6)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (i32.and
       (i32.load8_u offset=32
        (get_local $6)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const 40)
      )
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (i32.and
       (i32.load8_u offset=20
        (get_local $6)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const 28)
      )
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (i32.and
       (i32.load8_u offset=8
        (get_local $6)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $6)
       (i32.const 16)
      )
     )
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
  (call $_ZN12eparticlectr10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby
   (get_local $0)
   (i64.load offset=104
    (get_local $8)
   )
   (get_local $2)
   (i32.const 1)
   (i64.const 10)
  )
  (drop
   (call $_ZNSt3__113__vector_baseIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEED2Ev
    (i32.add
     (get_local $8)
     (i32.const 88)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 176)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $10)
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx256_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const -5915095046964641792)
       (get_local $10)
       (i32.const 2)
       (i32.add
        (get_local $10)
        (i32.const 40)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=40
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=92
        (tee_local $2
         (i32.load
          (i32.add
           (get_local $9)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 144)
     )
     (br $label$3)
    )
    (set_local $2
     (i32.const 0)
    )
    (br_if $label$3
     (i32.lt_s
      (tee_local $8
       (call $db_find_i64
        (i64.load
         (get_local $4)
        )
        (i64.load offset=8
         (get_local $4)
        )
        (i64.const -5915095046964641792)
        (get_local $5)
       )
      )
      (i32.const 0)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=92
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (get_local $8)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 144)
    )
   )
   (i32.store offset=100
    (get_local $2)
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE7emplaceIZNS1_7proposeEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEESO_SO_E3$_2EENSF_14const_iteratorEyOT_ENKUlRSR_E_clINSF_4itemEEEDaST_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $18
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $19
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $3
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
    (i32.load offset=4
     (get_local $19)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 20)
     )
    )
    (i32.load offset=8
     (get_local $19)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $5
     (i32.add
      (get_local $1)
      (i32.const 32)
     )
    )
    (i32.load offset=12
     (get_local $19)
    )
   )
  )
  (i64.store offset=64
   (get_local $1)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $1)
   (i64.load
    (i32.load offset=16
     (get_local $19)
    )
   )
  )
  (i64.store offset=56
   (get_local $1)
   (i64.or
    (i64.or
     (i64.or
      (i64.shl
       (tee_local $15
        (i64.load
         (i32.load offset=16
          (get_local $19)
         )
        )
       )
       (i64.const 56)
      )
      (i64.and
       (i64.shl
        (get_local $15)
        (i64.const 40)
       )
       (i64.const 71776119061217280)
      )
     )
     (i64.or
      (i64.and
       (i64.shl
        (get_local $15)
        (i64.const 24)
       )
       (i64.const 280375465082880)
      )
      (i64.and
       (i64.shl
        (get_local $15)
        (i64.const 8)
       )
       (i64.const 1095216660480)
      )
     )
    )
    (i64.or
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $15)
        (i64.const 8)
       )
       (i64.const 4278190080)
      )
      (i64.and
       (i64.shr_u
        (get_local $15)
        (i64.const 24)
       )
       (i64.const 16711680)
      )
     )
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $15)
        (i64.const 40)
       )
       (i64.const 65280)
      )
      (i64.shr_u
       (get_local $15)
       (i64.const 56)
      )
     )
    )
   )
  )
  (i64.store32 offset=76
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (set_local $15
   (call $current_time)
  )
  (i32.store offset=88
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=80
   (get_local $1)
   (i32.add
    (i32.wrap/i64
     (i64.div_u
      (get_local $15)
      (i64.const 1000000)
     )
    )
    (i32.const 60)
   )
  )
  (i32.store offset=24
   (tee_local $19
    (get_local $18)
   )
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $19)
   (i32.add
    (get_local $19)
    (i32.const 24)
   )
  )
  (i32.store offset=36
   (get_local $19)
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $19)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $19)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $19)
   (get_local $5)
  )
  (i32.store offset=48
   (get_local $19)
   (tee_local $7
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=52
   (get_local $19)
   (tee_local $8
    (i32.add
     (get_local $1)
     (i32.const 56)
    )
   )
  )
  (i32.store offset=56
   (get_local $19)
   (tee_local $6
    (i32.add
     (get_local $1)
     (i32.const 64)
    )
   )
  )
  (i32.store offset=60
   (get_local $19)
   (tee_local $12
    (i32.add
     (get_local $1)
     (i32.const 72)
    )
   )
  )
  (i32.store offset=64
   (get_local $19)
   (tee_local $9
    (i32.add
     (get_local $1)
     (i32.const 76)
    )
   )
  )
  (i32.store offset=68
   (get_local $19)
   (tee_local $10
    (i32.add
     (get_local $1)
     (i32.const 80)
    )
   )
  )
  (i32.store offset=72
   (get_local $19)
   (tee_local $13
    (i32.add
     (get_local $1)
     (i32.const 84)
    )
   )
  )
  (i32.store offset=76
   (get_local $19)
   (tee_local $11
    (i32.add
     (get_local $1)
     (i32.const 88)
    )
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_SF_S6_S6_S6_RKmSH_SH_SH_SH_EEEZN5eosiolsINSJ_10datastreamIjEEN12eparticlectr12editproposalELPv0EEERT_SR_RKT0_EUlRKSQ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11EEEEvSR_OSS_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $19)
    (i32.const 32)
   )
   (i32.add
    (get_local $19)
    (i32.const 8)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $14
       (i32.load offset=24
        (get_local $19)
       )
      )
      (i32.const 513)
     )
    )
    (set_local $18
     (call $malloc
      (get_local $14)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $18
     (i32.sub
      (get_local $18)
      (i32.and
       (i32.add
        (get_local $14)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=12
   (get_local $19)
   (get_local $18)
  )
  (i32.store offset=8
   (get_local $19)
   (get_local $18)
  )
  (i32.store offset=16
   (get_local $19)
   (i32.add
    (get_local $18)
    (get_local $14)
   )
  )
  (i32.store offset=24
   (get_local $19)
   (i32.add
    (get_local $19)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $19)
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $19)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $19)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $19)
   (get_local $5)
  )
  (i32.store offset=48
   (get_local $19)
   (get_local $7)
  )
  (i32.store offset=52
   (get_local $19)
   (get_local $8)
  )
  (i32.store offset=56
   (get_local $19)
   (get_local $6)
  )
  (i32.store offset=60
   (get_local $19)
   (get_local $12)
  )
  (i32.store offset=64
   (get_local $19)
   (get_local $9)
  )
  (i32.store offset=68
   (get_local $19)
   (get_local $10)
  )
  (i32.store offset=72
   (get_local $19)
   (get_local $13)
  )
  (i32.store offset=76
   (get_local $19)
   (get_local $11)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_SF_S6_S6_S6_RKmSH_SH_SH_SH_EEEZN5eosiolsINSJ_10datastreamIPcEEN12eparticlectr12editproposalELPv0EEERT_SS_RKT0_EUlRKSR_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11EEEEvSS_OST_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $19)
    (i32.const 32)
   )
   (i32.add
    (get_local $19)
    (i32.const 24)
   )
  )
  (i32.store offset=96
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -5915095046964641792)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $15
     (i64.load
      (get_local $1)
     )
    )
    (get_local $18)
    (get_local $14)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.lt_u
     (get_local $14)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $18)
   )
  )
  (block $label$3
   (br_if $label$3
    (i64.lt_u
     (get_local $15)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $15)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $15)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $15
   (i64.load
    (tee_local $18
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $16
   (i64.load
    (tee_local $0
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $17
   (i64.load
    (get_local $1)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $19)
    (i32.const 32)
   )
   (get_local $3)
  )
  (i32.store offset=100
   (get_local $1)
   (call $db_idx256_store
    (get_local $15)
    (i64.const -5915095046964641792)
    (get_local $16)
    (get_local $17)
    (i32.add
     (get_local $19)
     (i32.const 32)
    )
    (i32.const 2)
   )
  )
  (set_local $15
   (i64.load
    (get_local $0)
   )
  )
  (set_local $16
   (i64.load
    (get_local $18)
   )
  )
  (set_local $17
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $19)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 56)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 104)
   )
   (call $db_idx64_store
    (get_local $16)
    (i64.const -5915095046964641791)
    (get_local $15)
    (get_local $17)
    (i32.add
     (get_local $19)
     (i32.const 32)
    )
   )
  )
  (set_local $15
   (i64.load
    (get_local $0)
   )
  )
  (set_local $16
   (i64.load
    (get_local $18)
   )
  )
  (set_local $17
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $19)
   (i64.extend_u/i32
    (i32.div_u
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 84)
      )
     )
     (i32.const 1800)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 108)
   )
   (call $db_idx64_store
    (get_local $16)
    (i64.const -5915095046964641790)
    (get_local $15)
    (get_local $17)
    (i32.add
     (get_local $19)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $19)
    (i32.const 80)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $8
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $9
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $5
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
    (block $label$2
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.ge_u
         (tee_local $9
          (i32.div_s
           (i32.sub
            (i32.load offset=8
             (get_local $0)
            )
            (get_local $9)
           )
           (i32.const 24)
          )
         )
         (i32.const 89478485)
        )
       )
       (i32.store
        (i32.add
         (get_local $10)
         (i32.const 24)
        )
        (get_local $5)
       )
       (set_local $5
        (i32.const 0)
       )
       (i32.store offset=20
        (get_local $10)
        (i32.const 0)
       )
       (set_local $7
        (i32.add
         (get_local $10)
         (i32.const 20)
        )
       )
       (br_if $label$2
        (i32.eqz
         (tee_local $9
          (select
           (get_local $8)
           (tee_local $9
            (i32.shl
             (get_local $9)
             (i32.const 1)
            )
           )
           (i32.lt_u
            (get_local $9)
            (get_local $8)
           )
          )
         )
        )
       )
       (set_local $5
        (get_local $9)
       )
       (br $label$3)
      )
      (i32.store
       (i32.add
        (get_local $10)
        (i32.const 24)
       )
       (get_local $5)
      )
      (i32.store offset=20
       (get_local $10)
       (i32.const 0)
      )
      (set_local $7
       (i32.add
        (get_local $10)
        (i32.const 20)
       )
      )
      (set_local $5
       (i32.const 178956970)
      )
     )
     (set_local $8
      (call $_Znwj
       (i32.mul
        (get_local $5)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $8
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (i32.store offset=8
   (get_local $10)
   (get_local $8)
  )
  (i32.store offset=12
   (get_local $10)
   (tee_local $9
    (i32.add
     (get_local $8)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
  )
  (i32.store
   (get_local $7)
   (tee_local $5
    (i32.add
     (get_local $8)
     (i32.mul
      (get_local $5)
      (i32.const 24)
     )
    )
   )
  )
  (set_local $8
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (set_local $1
   (i32.load
    (get_local $3)
   )
  )
  (set_local $6
   (i64.load
    (get_local $2)
   )
  )
  (i32.store
   (get_local $9)
   (get_local $8)
  )
  (i64.store offset=8
   (get_local $9)
   (get_local $6)
  )
  (i32.store offset=16
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=16
   (get_local $10)
   (tee_local $1
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eq
     (tee_local $8
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (tee_local $2
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (loop $label$6
    (set_local $1
     (i32.load
      (tee_local $5
       (i32.add
        (get_local $8)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $5)
     (i32.const 0)
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
     (get_local $1)
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const -8)
     )
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const -8)
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const -12)
     )
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const -12)
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $9)
      (i32.const -16)
     )
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const -16)
      )
     )
    )
    (i32.store offset=12
     (get_local $10)
     (tee_local $9
      (i32.add
       (i32.load offset=12
        (get_local $10)
       )
       (i32.const -24)
      )
     )
    )
    (set_local $8
     (get_local $5)
    )
    (br_if $label$6
     (i32.ne
      (get_local $2)
      (get_local $5)
     )
    )
   )
   (set_local $8
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
   )
   (set_local $5
    (i32.load
     (get_local $7)
    )
   )
   (set_local $2
    (i32.load
     (get_local $0)
    )
   )
   (set_local $1
    (i32.load
     (i32.add
      (get_local $10)
      (i32.const 16)
     )
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $9)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 8)
    )
    (i32.const 8)
   )
   (get_local $8)
  )
  (set_local $8
   (i32.load
    (tee_local $9
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (i32.store
   (get_local $9)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $10)
   (get_local $2)
  )
  (i32.store
   (get_local $7)
   (get_local $8)
  )
  (i32.store offset=8
   (get_local $10)
   (get_local $2)
  )
  (drop
   (call $_ZNSt3__114__split_bufferIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrERNS_9allocatorISI_EEED2Ev
    (i32.add
     (get_local $10)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
  )
 )
 (func $_ZN12eparticlectr10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby (type $FUNCSIG$vijiij) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 304)
    )
   )
  )
  (i64.store offset=232
   (get_local $10)
   (get_local $1)
  )
  (i32.store8 offset=231
   (get_local $10)
   (get_local $3)
  )
  (i64.store offset=216
   (get_local $10)
   (get_local $4)
  )
  (set_local $3
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 176)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=192
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=200
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=176
   (get_local $10)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=184
   (get_local $10)
   (get_local $4)
  )
  (i32.store8
   (i32.add
    (get_local $10)
    (i32.const 214)
   )
   (i32.const 0)
  )
  (i32.store16 offset=212
   (get_local $10)
   (i32.const 0)
  )
  (i32.store offset=168
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 176)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $10)
    (i32.const 64)
   )
   (get_local $2)
  )
  (call $_ZNK5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $10)
    (i32.const 240)
   )
   (i32.add
    (get_local $10)
    (i32.const 168)
   )
   (i32.add
    (get_local $10)
    (i32.const 64)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $5
      (i32.load offset=244
       (get_local $10)
      )
     )
    )
   )
   (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $10)
     (i32.const 112)
    )
    (i32.add
     (get_local $5)
     (i32.const 8)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i64.eqz
       (i64.or
        (i64.xor
         (i64.load offset=64
          (get_local $10)
         )
         (i64.load offset=112
          (get_local $10)
         )
        )
        (i64.xor
         (i64.load offset=72
          (get_local $10)
         )
         (i64.load offset=120
          (get_local $10)
         )
        )
       )
      )
     )
    )
    (set_local $7
     (i32.const 0)
    )
    (br_if $label$0
     (i64.ne
      (i64.or
       (i64.xor
        (i64.load offset=80
         (get_local $10)
        )
        (i64.load offset=128
         (get_local $10)
        )
       )
       (i64.xor
        (i64.load
         (i32.add
          (i32.add
           (get_local $10)
           (i32.const 64)
          )
          (i32.const 24)
         )
        )
        (i64.load
         (i32.add
          (i32.add
           (get_local $10)
           (i32.const 112)
          )
          (i32.const 24)
         )
        )
       )
      )
      (i64.const 0)
     )
    )
    (set_local $7
     (i32.load offset=244
      (get_local $10)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (i32.const 0)
   )
   (i32.const 1328)
  )
  (i64.store offset=160
   (get_local $10)
   (i64.load
    (get_local $7)
   )
  )
  (i32.store8 offset=159
   (get_local $10)
   (i64.eq
    (i64.load offset=232
     (get_local $10)
    )
    (i64.load offset=48
     (get_local $7)
    )
   )
  )
  (call $eosio_assert
   (i32.lt_u
    (i32.wrap/i64
     (i64.div_u
      (call $current_time)
      (i64.const 1000000)
     )
    )
    (i32.load offset=80
     (get_local $7)
    )
   )
   (i32.const 1360)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 112)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=128
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=136
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=112
   (get_local $10)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=120
   (get_local $10)
   (get_local $4)
  )
  (i32.store16 offset=148
   (get_local $10)
   (i32.const 0)
  )
  (i32.store offset=104
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 112)
   )
  )
  (call $_ZNK5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy12481914933501493248ENS6_IS2_yXadL_ZNKS2_9get_powerEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
   (i32.add
    (get_local $10)
    (i32.const 64)
   )
   (i32.add
    (get_local $10)
    (i32.const 104)
   )
   (i32.add
    (get_local $10)
    (i32.const 232)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $7
      (i32.load offset=68
       (get_local $10)
      )
     )
    )
   )
   (set_local $3
    (select
     (get_local $7)
     (i32.const 0)
     (i64.eq
      (i64.load offset=232
       (get_local $10)
      )
      (i64.load
       (get_local $7)
      )
     )
    )
   )
  )
  (call $eosio_assert
   (i64.ge_u
    (i64.load
     (tee_local $7
      (i32.add
       (get_local $3)
       (i32.const 16)
      )
     )
    )
    (tee_local $1
     (i64.load offset=216
      (get_local $10)
     )
    )
   )
   (i32.const 1392)
  )
  (call $eosio_assert
   (i32.ne
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 448)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=24
     (get_local $3)
    )
    (tee_local $5
     (i32.load offset=104
      (get_local $10)
     )
    )
   )
   (i32.const 496)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $5)
    )
    (call $current_receiver)
   )
   (i32.const 544)
  )
  (i64.store offset=240
   (get_local $10)
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=248
   (get_local $10)
   (i64.load
    (get_local $7)
   )
  )
  (set_local $4
   (i64.load offset=8
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i64.ne
    (get_local $1)
    (i64.const 0)
   )
   (i32.const 608)
  )
  (call $eosio_assert
   (i64.ge_u
    (i64.load
     (get_local $7)
    )
    (get_local $1)
   )
   (i32.const 672)
  )
  (i64.store
   (get_local $7)
   (i64.sub
    (i64.load
     (get_local $7)
    )
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load offset=8
     (get_local $3)
    )
   )
   (i32.const 704)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $10)
     (i32.const 64)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $10)
      (i32.const 64)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.add
     (i32.add
      (get_local $10)
      (i32.const 64)
     )
     (i32.const 16)
    )
    (get_local $7)
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=28
    (get_local $3)
   )
   (i64.const 0)
   (i32.add
    (get_local $10)
    (i32.const 64)
   )
   (i32.const 24)
  )
  (block $label$3
   (br_if $label$3
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $5)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $6
   (i32.add
    (i32.add
     (get_local $10)
     (i32.const 240)
    )
    (i32.const 8)
   )
  )
  (i64.store offset=16
   (get_local $10)
   (i64.load
    (get_local $3)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $10)
       (i32.const 240)
      )
      (i32.add
       (get_local $10)
       (i32.const 16)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $9
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $3)
          (i32.const 32)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $8)
     (tee_local $9
      (call $db_idx64_find_primary
       (i64.load
        (get_local $5)
       )
       (i64.load offset=8
        (get_local $5)
       )
       (i64.const 4453191243736408576)
       (i32.add
        (get_local $10)
        (i32.const 296)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $9)
    (i64.const 0)
    (i32.add
     (get_local $10)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=16
   (get_local $10)
   (i64.load
    (get_local $7)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (get_local $6)
      (i32.add
       (get_local $10)
       (i32.const 16)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $3
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $3)
          (i32.const 36)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $7)
     (tee_local $3
      (call $db_idx64_find_primary
       (i64.load
        (get_local $5)
       )
       (i64.load offset=8
        (get_local $5)
       )
       (i64.const 4453191243736408577)
       (i32.add
        (get_local $10)
        (i32.const 296)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $3)
    (i64.const 0)
    (i32.add
     (get_local $10)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $10)
    (i32.const 96)
   )
   (i32.const 0)
  )
  (i64.store offset=80
   (get_local $10)
   (i64.const -1)
  )
  (i64.store offset=88
   (get_local $10)
   (i64.const 0)
  )
  (i64.store offset=64
   (get_local $10)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=72
   (get_local $10)
   (get_local $4)
  )
  (i32.store8
   (i32.add
    (get_local $10)
    (i32.const 102)
   )
   (i32.const 0)
  )
  (i32.store16 offset=100
   (get_local $10)
   (i32.const 0)
  )
  (i32.store offset=56
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 64)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
   (get_local $2)
  )
  (call $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $10)
    (i32.const 296)
   )
   (i32.add
    (get_local $10)
    (i32.const 56)
   )
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
  (block $label$8
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (tee_local $3
       (i32.load offset=300
        (get_local $10)
       )
      )
     )
    )
    (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
     (i32.add
      (get_local $10)
      (i32.const 240)
     )
     (i32.add
      (get_local $3)
      (i32.const 16)
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load offset=16
           (get_local $10)
          )
          (i64.load offset=240
           (get_local $10)
          )
         )
         (i64.xor
          (i64.load offset=24
           (get_local $10)
          )
          (i64.load offset=248
           (get_local $10)
          )
         )
        )
       )
      )
     )
     (br_if $label$10
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load offset=32
           (get_local $10)
          )
          (i64.load offset=256
           (get_local $10)
          )
         )
         (i64.xor
          (i64.load
           (i32.add
            (i32.add
             (get_local $10)
             (i32.const 16)
            )
            (i32.const 24)
           )
          )
          (i64.load
           (i32.add
            (i32.add
             (get_local $10)
             (i32.const 240)
            )
            (i32.const 24)
           )
          )
         )
        )
       )
      )
     )
     (i64.store offset=48
      (get_local $10)
      (i64.load offset=296
       (get_local $10)
      )
     )
     (br $label$8)
    )
    (i32.store offset=52
     (get_local $10)
     (i32.const 0)
    )
    (i32.store offset=48
     (get_local $10)
     (i32.add
      (get_local $10)
      (i32.const 56)
     )
    )
    (br $label$8)
   )
   (i32.store offset=52
    (get_local $10)
    (i32.const 0)
   )
   (i32.store offset=48
    (get_local $10)
    (i32.add
     (get_local $10)
     (i32.const 56)
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i64.ne
     (tee_local $4
      (i64.load
       (tee_local $3
        (i32.add
         (get_local $10)
         (i32.const 80)
        )
       )
      )
     )
     (i64.const -1)
    )
   )
   (set_local $4
    (i64.const 0)
   )
   (block $label$12
    (br_if $label$12
     (i32.lt_s
      (tee_local $7
       (call $db_lowerbound_i64
        (i64.load offset=64
         (get_local $10)
        )
        (i64.load
         (i32.add
          (get_local $10)
          (i32.const 72)
         )
        )
        (i64.const -2507752492951928832)
        (i64.const 0)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl
      (i32.add
       (get_local $10)
       (i32.const 64)
      )
      (get_local $7)
     )
    )
    (i32.store offset=244
     (get_local $10)
     (i32.const 0)
    )
    (i32.store offset=240
     (get_local $10)
     (i32.add
      (get_local $10)
      (i32.const 64)
     )
    )
    (set_local $4
     (select
      (i64.const -2)
      (i64.add
       (tee_local $4
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE14const_iteratormmEv
           (i32.add
            (get_local $10)
            (i32.const 240)
           )
          )
         )
        )
       )
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $4)
       (i64.const -3)
      )
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $10)
     (i32.const 80)
    )
    (get_local $4)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $4)
    (i64.const -2)
   )
   (i32.const 1424)
  )
  (i64.store offset=8
   (get_local $10)
   (i64.load
    (get_local $3)
   )
  )
  (block $label$13
   (block $label$14
    (block $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (block $label$19
         (block $label$20
          (block $label$21
           (br_if $label$21
            (i32.eqz
             (tee_local $3
              (i32.load offset=52
               (get_local $10)
              )
             )
            )
           )
           (loop $label$22
            (block $label$23
             (br_if $label$23
              (i64.ne
               (i64.load offset=8
                (get_local $3)
               )
               (i64.load offset=160
                (get_local $10)
               )
              )
             )
             (br_if $label$20
              (i64.eq
               (i64.load offset=40
                (get_local $3)
               )
               (i64.load offset=232
                (get_local $10)
               )
              )
             )
            )
            (drop
             (call $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE14const_iteratorppEv
              (i32.add
               (get_local $10)
               (i32.const 48)
              )
             )
            )
            (br_if $label$22
             (tee_local $3
              (i32.load offset=52
               (get_local $10)
              )
             )
            )
            (br $label$16)
           )
          )
          (call $prints
           (i32.const 1488)
          )
          (call $prints
           (i32.const 80)
          )
          (set_local $4
           (i64.load offset=232
            (get_local $10)
           )
          )
          (i32.store offset=248
           (get_local $10)
           (get_local $2)
          )
          (i32.store offset=244
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 160)
           )
          )
          (i32.store offset=240
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 8)
           )
          )
          (i32.store offset=252
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 231)
           )
          )
          (i32.store offset=256
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 159)
           )
          )
          (i32.store offset=260
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 216)
           )
          )
          (i32.store offset=264
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 232)
           )
          )
          (i32.store offset=268
           (get_local $10)
           (get_local $0)
          )
          (i64.store offset=296
           (get_local $10)
           (get_local $4)
          )
          (call $eosio_assert
           (i64.eq
            (i64.load offset=64
             (get_local $10)
            )
            (call $current_receiver)
           )
           (i32.const 1264)
          )
          (i32.store offset=20
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 240)
           )
          )
          (i32.store offset=16
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 64)
           )
          )
          (i32.store offset=24
           (get_local $10)
           (i32.add
            (get_local $10)
            (i32.const 296)
           )
          )
          (i32.store offset=24
           (tee_local $3
            (call $_Znwj
             (i32.const 80)
            )
           )
           (i32.const 0)
          )
          (i64.store offset=16 align=4
           (get_local $3)
           (i64.const 0)
          )
          (i32.store offset=60
           (get_local $3)
           (i32.add
            (get_local $10)
            (i32.const 64)
           )
          )
          (call $_ZZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE7emplaceIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_4EENSF_14const_iteratorEyOT_ENKUlRSR_E_clINSF_4itemEEEDaST_
           (i32.add
            (get_local $10)
            (i32.const 16)
           )
           (get_local $3)
          )
          (i32.store offset=288
           (get_local $10)
           (get_local $3)
          )
          (i64.store offset=16
           (get_local $10)
           (tee_local $4
            (i64.load
             (get_local $3)
            )
           )
          )
          (i32.store offset=284
           (get_local $10)
           (tee_local $0
            (i32.load offset=64
             (get_local $3)
            )
           )
          )
          (br_if $label$19
           (i32.ge_u
            (tee_local $7
             (i32.load
              (tee_local $5
               (i32.add
                (get_local $10)
                (i32.const 92)
               )
              )
             )
            )
            (i32.load
             (i32.add
              (get_local $10)
              (i32.const 96)
             )
            )
           )
          )
          (i64.store offset=8
           (get_local $7)
           (get_local $4)
          )
          (i32.store offset=16
           (get_local $7)
           (get_local $0)
          )
          (i32.store offset=288
           (get_local $10)
           (i32.const 0)
          )
          (i32.store
           (get_local $7)
           (get_local $3)
          )
          (i32.store
           (get_local $5)
           (i32.add
            (get_local $7)
            (i32.const 24)
           )
          )
          (br $label$18)
         )
         (call $prints
          (i32.const 1520)
         )
         (call $prints
          (i32.const 80)
         )
         (br_if $label$17
          (i32.ne
           (i32.load8_u offset=28
            (tee_local $3
             (i32.load offset=52
              (get_local $10)
             )
            )
           )
           (i32.load8_u offset=231
            (get_local $10)
           )
          )
         )
         (call $prints
          (i32.const 1552)
         )
         (call $prints
          (i32.const 80)
         )
         (set_local $3
          (i32.load offset=52
           (get_local $10)
          )
         )
         (i32.store offset=240
          (get_local $10)
          (i32.add
           (get_local $10)
           (i32.const 216)
          )
         )
         (call $eosio_assert
          (i32.ne
           (get_local $3)
           (i32.const 0)
          )
          (i32.const 448)
         )
         (call $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_5EEvRKS2_yOT_
          (i32.load offset=56
           (get_local $10)
          )
          (get_local $3)
          (i32.add
           (get_local $10)
           (i32.const 240)
          )
         )
         (br_if $label$15
          (i32.load offset=52
           (get_local $10)
          )
         )
         (br $label$16)
        )
        (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157746319360ENS8_IS4_yXadL_ZNKS4_15get_proposal_idEvEEEEEENS5_ILy4591222641916264448ENS8_IS4_yXadL_ZNKS4_12get_voter64tEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_
         (i32.add
          (get_local $10)
          (i32.const 88)
         )
         (i32.add
          (get_local $10)
          (i32.const 288)
         )
         (i32.add
          (get_local $10)
          (i32.const 16)
         )
         (i32.add
          (get_local $10)
          (i32.const 284)
         )
        )
       )
       (set_local $3
        (i32.load offset=288
         (get_local $10)
        )
       )
       (i32.store offset=288
        (get_local $10)
        (i32.const 0)
       )
       (br_if $label$15
        (i32.eqz
         (get_local $3)
        )
       )
       (block $label$24
        (br_if $label$24
         (i32.eqz
          (i32.and
           (i32.load8_u offset=16
            (get_local $3)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $3)
           (i32.const 24)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
       (br_if $label$14
        (tee_local $0
         (i32.load offset=88
          (get_local $10)
         )
        )
       )
       (br $label$13)
      )
      (block $label$25
       (br_if $label$25
        (i64.ge_u
         (i64.load offset=32
          (get_local $3)
         )
         (i64.load offset=216
          (get_local $10)
         )
        )
       )
       (call $prints
        (i32.const 1616)
       )
       (call $prints
        (i32.const 80)
       )
       (set_local $3
        (i32.load offset=52
         (get_local $10)
        )
       )
       (i32.store offset=244
        (get_local $10)
        (i32.add
         (get_local $10)
         (i32.const 48)
        )
       )
       (i32.store offset=240
        (get_local $10)
        (i32.add
         (get_local $10)
         (i32.const 216)
        )
       )
       (i32.store offset=248
        (get_local $10)
        (i32.add
         (get_local $10)
         (i32.const 231)
        )
       )
       (call $eosio_assert
        (i32.ne
         (get_local $3)
         (i32.const 0)
        )
        (i32.const 448)
       )
       (call $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_7EEvRKS2_yOT_
        (i32.load offset=56
         (get_local $10)
        )
        (get_local $3)
        (i32.add
         (get_local $10)
         (i32.const 240)
        )
       )
       (br_if $label$15
        (i32.load offset=52
         (get_local $10)
        )
       )
       (br $label$16)
      )
      (call $prints
       (i32.const 1584)
      )
      (call $prints
       (i32.const 80)
      )
      (set_local $3
       (i32.load offset=52
        (get_local $10)
       )
      )
      (i32.store offset=244
       (get_local $10)
       (i32.add
        (get_local $10)
        (i32.const 216)
       )
      )
      (i32.store offset=240
       (get_local $10)
       (i32.add
        (get_local $10)
        (i32.const 48)
       )
      )
      (call $eosio_assert
       (i32.ne
        (get_local $3)
        (i32.const 0)
       )
       (i32.const 448)
      )
      (call $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_6EEvRKS2_yOT_
       (i32.load offset=56
        (get_local $10)
       )
       (get_local $3)
       (i32.add
        (get_local $10)
        (i32.const 240)
       )
      )
      (br_if $label$15
       (i32.load offset=52
        (get_local $10)
       )
      )
     )
     (call $prints
      (i32.const 1632)
     )
     (call $prints
      (i32.const 80)
     )
     (set_local $4
      (i64.load offset=232
       (get_local $10)
      )
     )
     (i32.store offset=248
      (get_local $10)
      (get_local $2)
     )
     (i32.store offset=244
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 160)
      )
     )
     (i32.store offset=240
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 8)
      )
     )
     (i32.store offset=252
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 231)
      )
     )
     (i32.store offset=256
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 159)
      )
     )
     (i32.store offset=260
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 216)
      )
     )
     (i32.store offset=264
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 232)
      )
     )
     (i32.store offset=268
      (get_local $10)
      (get_local $0)
     )
     (i64.store offset=296
      (get_local $10)
      (get_local $4)
     )
     (call $eosio_assert
      (i64.eq
       (i64.load offset=64
        (get_local $10)
       )
       (call $current_receiver)
      )
      (i32.const 1264)
     )
     (i32.store offset=20
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 240)
      )
     )
     (i32.store offset=16
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 64)
      )
     )
     (i32.store offset=24
      (get_local $10)
      (i32.add
       (get_local $10)
       (i32.const 296)
      )
     )
     (i32.store offset=24
      (tee_local $3
       (call $_Znwj
        (i32.const 80)
       )
      )
      (i32.const 0)
     )
     (i64.store offset=16 align=4
      (get_local $3)
      (i64.const 0)
     )
     (i32.store offset=60
      (get_local $3)
      (i32.add
       (get_local $10)
       (i32.const 64)
      )
     )
     (call $_ZZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE7emplaceIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_8EENSF_14const_iteratorEyOT_ENKUlRSR_E_clINSF_4itemEEEDaST_
      (i32.add
       (get_local $10)
       (i32.const 16)
      )
      (get_local $3)
     )
     (i32.store offset=288
      (get_local $10)
      (get_local $3)
     )
     (i64.store offset=16
      (get_local $10)
      (tee_local $4
       (i64.load
        (get_local $3)
       )
      )
     )
     (i32.store offset=284
      (get_local $10)
      (tee_local $0
       (i32.load offset=64
        (get_local $3)
       )
      )
     )
     (block $label$26
      (block $label$27
       (br_if $label$27
        (i32.ge_u
         (tee_local $7
          (i32.load
           (tee_local $5
            (i32.add
             (get_local $10)
             (i32.const 92)
            )
           )
          )
         )
         (i32.load
          (i32.add
           (get_local $10)
           (i32.const 96)
          )
         )
        )
       )
       (i64.store offset=8
        (get_local $7)
        (get_local $4)
       )
       (i32.store offset=16
        (get_local $7)
        (get_local $0)
       )
       (i32.store offset=288
        (get_local $10)
        (i32.const 0)
       )
       (i32.store
        (get_local $7)
        (get_local $3)
       )
       (i32.store
        (get_local $5)
        (i32.add
         (get_local $7)
         (i32.const 24)
        )
       )
       (br $label$26)
      )
      (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157746319360ENS8_IS4_yXadL_ZNKS4_15get_proposal_idEvEEEEEENS5_ILy4591222641916264448ENS8_IS4_yXadL_ZNKS4_12get_voter64tEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_
       (i32.add
        (get_local $10)
        (i32.const 88)
       )
       (i32.add
        (get_local $10)
        (i32.const 288)
       )
       (i32.add
        (get_local $10)
        (i32.const 16)
       )
       (i32.add
        (get_local $10)
        (i32.const 284)
       )
      )
     )
     (set_local $3
      (i32.load offset=288
       (get_local $10)
      )
     )
     (i32.store offset=288
      (get_local $10)
      (i32.const 0)
     )
     (br_if $label$15
      (i32.eqz
       (get_local $3)
      )
     )
     (block $label$28
      (br_if $label$28
       (i32.eqz
        (i32.and
         (i32.load8_u offset=16
          (get_local $3)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 24)
        )
       )
      )
     )
     (call $_ZdlPv
      (get_local $3)
     )
     (br_if $label$14
      (tee_local $0
       (i32.load offset=88
        (get_local $10)
       )
      )
     )
     (br $label$13)
    )
    (br_if $label$13
     (i32.eqz
      (tee_local $0
       (i32.load offset=88
        (get_local $10)
       )
      )
     )
    )
   )
   (block $label$29
    (block $label$30
     (br_if $label$30
      (i32.eq
       (tee_local $3
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $10)
           (i32.const 92)
          )
         )
        )
       )
       (get_local $0)
      )
     )
     (loop $label$31
      (set_local $7
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $3)
       (i32.const 0)
      )
      (block $label$32
       (br_if $label$32
        (i32.eqz
         (get_local $7)
        )
       )
       (block $label$33
        (br_if $label$33
         (i32.eqz
          (i32.and
           (i32.load8_u offset=16
            (get_local $7)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $7)
           (i32.const 24)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $7)
       )
      )
      (br_if $label$31
       (i32.ne
        (get_local $0)
        (get_local $3)
       )
      )
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 88)
       )
      )
     )
     (br $label$29)
    )
    (set_local $3
     (get_local $0)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (block $label$34
   (br_if $label$34
    (i32.eqz
     (tee_local $0
      (i32.load offset=136
       (get_local $10)
      )
     )
    )
   )
   (block $label$35
    (block $label$36
     (br_if $label$36
      (i32.eq
       (tee_local $3
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $10)
           (i32.const 140)
          )
         )
        )
       )
       (get_local $0)
      )
     )
     (loop $label$37
      (set_local $7
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $3)
       (i32.const 0)
      )
      (block $label$38
       (br_if $label$38
        (i32.eqz
         (get_local $7)
        )
       )
       (call $_ZdlPv
        (get_local $7)
       )
      )
      (br_if $label$37
       (i32.ne
        (get_local $0)
        (get_local $3)
       )
      )
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 136)
       )
      )
     )
     (br $label$35)
    )
    (set_local $3
     (get_local $0)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (drop
   (call $_ZNSt3__113__vector_baseIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEED2Ev
    (i32.add
     (get_local $10)
     (i32.const 200)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 304)
   )
  )
 )
 (func $_ZNSt3__113__vector_baseIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEED2Ev (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $1
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $3
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $1)
      )
     )
     (loop $label$3
      (set_local $2
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $3)
       (i32.const 0)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $2)
        )
       )
       (block $label$5
        (br_if $label$5
         (i32.eqz
          (i32.and
           (i32.load8_u offset=32
            (get_local $2)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 40)
          )
         )
        )
       )
       (block $label$6
        (br_if $label$6
         (i32.eqz
          (i32.and
           (i32.load8_u offset=20
            (get_local $2)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 28)
          )
         )
        )
       )
       (block $label$7
        (br_if $label$7
         (i32.eqz
          (i32.and
           (i32.load8_u offset=8
            (get_local $2)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $2)
           (i32.const 16)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $1)
        (get_local $3)
       )
      )
     )
     (set_local $2
      (i32.load
       (get_local $0)
      )
     )
     (br $label$1)
    )
    (set_local $2
     (get_local $1)
    )
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (get_local $1)
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $10)
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx256_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const -2507752492951928832)
       (get_local $10)
       (i32.const 2)
       (i32.add
        (get_local $10)
        (i32.const 40)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=40
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=60
        (tee_local $2
         (i32.load
          (i32.add
           (get_local $9)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 144)
     )
     (br $label$3)
    )
    (set_local $2
     (i32.const 0)
    )
    (br_if $label$3
     (i32.lt_s
      (tee_local $8
       (call $db_find_i64
        (i64.load
         (get_local $4)
        )
        (i64.load offset=8
         (get_local $4)
        )
        (i64.const -2507752492951928832)
        (get_local $5)
       )
      )
      (i32.const 0)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (get_local $8)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 144)
    )
   )
   (i32.store offset=68
    (get_local $2)
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 208)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=20
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=16
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=24
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=24
    (tee_local $6
     (call $_Znwj
      (i32.const 80)
     )
    )
    (i32.const 0)
   )
   (i64.store offset=16 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=60
    (get_local $6)
    (get_local $0)
   )
   (i32.store offset=32
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
   (i32.store offset=44
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
   )
   (i32.store offset=40
    (get_local $8)
    (get_local $6)
   )
   (i32.store offset=48
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (i32.store offset=52
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 28)
    )
   )
   (i32.store offset=56
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 29)
    )
   )
   (i32.store offset=60
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
   )
   (i32.store offset=64
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 40)
    )
   )
   (i32.store offset=68
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 48)
    )
   )
   (i32.store offset=72
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERbSE_S5_S5_S5_RmEEEZN5eosiorsINSH_10datastreamIPKcEEN12eparticlectr4voteELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8EEEEvSR_OSS_NS6_16integer_sequenceIjJXspT1_EEEENS6_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
   (i32.store offset=68
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=64
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=72
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=76
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=40
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=64
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=32
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157746319360ENS8_IS4_yXadL_ZNKS4_15get_proposal_idEvEEEEEENS5_ILy4591222641916264448ENS8_IS4_yXadL_ZNKS4_12get_voter64tEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $8)
      (i32.const 40)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=32
     (get_local $8)
    )
   )
   (i32.store offset=32
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (i32.and
       (i32.load8_u offset=16
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (call $eosio_assert
     (i32.xor
      (i32.shr_u
       (tee_local $1
        (call $db_previous_i64
         (i32.load offset=64
          (get_local $1)
         )
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
       (i32.const 31)
      )
      (i32.const 1)
     )
     (i32.const 1712)
    )
    (br $label$0)
   )
   (call $eosio_assert
    (i32.ne
     (tee_local $1
      (call $db_end_i64
       (i64.load
        (tee_local $1
         (i32.load
          (get_local $0)
         )
        )
       )
       (i64.load offset=8
        (get_local $1)
       )
       (i64.const -2507752492951928832)
      )
     )
     (i32.const -1)
    )
    (i32.const 1648)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $1
       (call $db_previous_i64
        (get_local $1)
        (i32.add
         (get_local $2)
         (i32.const 8)
        )
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 1648)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE7emplaceIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_4EENSF_14const_iteratorEyOT_ENKUlRSR_E_clINSF_4itemEEEDaST_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  (local $15 i32)
  (local $16 i32)
  (set_local $16
   (tee_local $15
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $15)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $13
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (get_local $13)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
    )
    (i32.load offset=8
     (get_local $13)
    )
   )
  )
  (i32.store8 offset=28
   (get_local $1)
   (i32.load8_u
    (i32.load offset=12
     (get_local $13)
    )
   )
  )
  (i32.store8 offset=29
   (get_local $1)
   (i32.load8_u
    (i32.load offset=16
     (get_local $13)
    )
   )
  )
  (i64.store offset=32
   (get_local $1)
   (i64.load
    (i32.load offset=20
     (get_local $13)
    )
   )
  )
  (i64.store offset=40
   (get_local $1)
   (i64.load
    (i32.load offset=24
     (get_local $13)
    )
   )
  )
  (i64.store offset=48
   (get_local $1)
   (i64.or
    (i64.or
     (i64.or
      (i64.shl
       (tee_local $14
        (i64.load
         (i32.load offset=24
          (get_local $13)
         )
        )
       )
       (i64.const 56)
      )
      (i64.and
       (i64.shl
        (get_local $14)
        (i64.const 40)
       )
       (i64.const 71776119061217280)
      )
     )
     (i64.or
      (i64.and
       (i64.shl
        (get_local $14)
        (i64.const 24)
       )
       (i64.const 280375465082880)
      )
      (i64.and
       (i64.shl
        (get_local $14)
        (i64.const 8)
       )
       (i64.const 1095216660480)
      )
     )
    )
    (i64.or
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $14)
        (i64.const 8)
       )
       (i64.const 4278190080)
      )
      (i64.and
       (i64.shr_u
        (get_local $14)
        (i64.const 24)
       )
       (i64.const 16711680)
      )
     )
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $14)
        (i64.const 40)
       )
       (i64.const 65280)
      )
      (i64.shr_u
       (get_local $14)
       (i64.const 56)
      )
     )
    )
   )
  )
  (i64.store32 offset=56
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (set_local $13
   (i32.add
    (tee_local $10
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $13
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $13)
       (i32.const 1)
      )
     )
    )
    (i32.const 46)
   )
  )
  (set_local $14
   (i64.extend_u/i32
    (get_local $10)
   )
  )
  (set_local $10
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (set_local $9
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 29)
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $3
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (loop $label$0
   (set_local $13
    (i32.add
     (get_local $13)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $14
      (i64.shr_u
       (get_local $14)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $13)
      (i32.const 513)
     )
    )
    (set_local $15
     (call $malloc
      (get_local $13)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $15
     (i32.sub
      (get_local $15)
      (i32.and
       (i32.add
        (get_local $13)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=12
   (get_local $16)
   (get_local $15)
  )
  (i32.store offset=8
   (get_local $16)
   (get_local $15)
  )
  (i32.store offset=16
   (get_local $16)
   (i32.add
    (get_local $15)
    (get_local $13)
   )
  )
  (i32.store offset=24
   (get_local $16)
   (i32.add
    (get_local $16)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $16)
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $16)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $16)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $16)
   (get_local $5)
  )
  (i32.store offset=48
   (get_local $16)
   (get_local $6)
  )
  (i32.store offset=52
   (get_local $16)
   (get_local $7)
  )
  (i32.store offset=56
   (get_local $16)
   (get_local $8)
  )
  (i32.store offset=60
   (get_local $16)
   (get_local $9)
  )
  (i32.store offset=64
   (get_local $16)
   (get_local $10)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbSH_S6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN12eparticlectr4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $16)
    (i32.const 32)
   )
   (i32.add
    (get_local $16)
    (i32.const 24)
   )
  )
  (i32.store offset=64
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -2507752492951928832)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $14
     (i64.load
      (get_local $1)
     )
    )
    (get_local $15)
    (get_local $13)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $13)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $15)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $14)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $14)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $14)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $14
   (i64.load
    (tee_local $13
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $11
   (i64.load
    (tee_local $15
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $12
   (i64.load
    (get_local $1)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $16)
    (i32.const 32)
   )
   (get_local $4)
  )
  (i32.store offset=68
   (get_local $1)
   (call $db_idx256_store
    (get_local $14)
    (i64.const -2507752492951928832)
    (get_local $11)
    (get_local $12)
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
    (i32.const 2)
   )
  )
  (set_local $14
   (i64.load
    (get_local $15)
   )
  )
  (set_local $11
   (i64.load
    (get_local $13)
   )
  )
  (i64.store offset=32
   (get_local $16)
   (tee_local $12
    (i64.load
     (get_local $1)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 72)
   )
   (call $db_idx64_store
    (get_local $11)
    (i64.const -2507752492951928831)
    (get_local $14)
    (get_local $12)
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
   )
  )
  (set_local $14
   (i64.load
    (get_local $15)
   )
  )
  (set_local $11
   (i64.load
    (get_local $13)
   )
  )
  (set_local $12
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $16)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 76)
   )
   (call $db_idx64_store
    (get_local $11)
    (i64.const -2507752492951928830)
    (get_local $14)
    (get_local $12)
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $16)
    (i32.const 80)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157746319360ENS8_IS4_yXadL_ZNKS4_15get_proposal_idEvEEEEEENS5_ILy4591222641916264448ENS8_IS4_yXadL_ZNKS4_12get_voter64tEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (i32.and
         (i32.load8_u offset=16
          (get_local $1)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 24)
        )
       )
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_5EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 496)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 544)
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (tee_local $12
     (get_local $11)
    )
    (i32.const 96)
   )
   (tee_local $3
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
     (i32.const 28)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=28
   (get_local $12)
   (i32.load offset=108
    (get_local $12)
   )
  )
  (i32.store offset=24
   (get_local $12)
   (i32.load offset=104
    (get_local $12)
   )
  )
  (i32.store offset=20
   (get_local $12)
   (i32.load offset=100
    (get_local $12)
   )
  )
  (i32.store offset=16
   (get_local $12)
   (i32.load offset=96
    (get_local $12)
   )
  )
  (set_local $4
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=56
   (get_local $12)
   (i64.load
    (tee_local $5
     (i32.add
      (get_local $1)
      (i32.const 48)
     )
    )
   )
  )
  (i64.store offset=48
   (get_local $12)
   (get_local $4)
  )
  (i64.store offset=32
   (get_local $1)
   (i64.add
    (i64.load offset=32
     (get_local $1)
    )
    (i64.load
     (i32.load
      (get_local $2)
     )
    )
   )
  )
  (i64.store32 offset=56
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 704)
  )
  (set_local $2
   (i32.add
    (tee_local $9
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.const 46)
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (get_local $9)
   )
  )
  (set_local $9
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (set_local $7
   (i32.add
    (get_local $12)
    (i32.const 56)
   )
  )
  (set_local $6
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $11
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $11
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $12)
   (get_local $11)
  )
  (i32.store
   (get_local $12)
   (get_local $11)
  )
  (i32.store offset=8
   (get_local $12)
   (i32.add
    (get_local $11)
    (get_local $2)
   )
  )
  (i32.store offset=64
   (get_local $12)
   (get_local $12)
  )
  (i32.store offset=104
   (get_local $12)
   (get_local $3)
  )
  (i32.store offset=116
   (get_local $12)
   (get_local $8)
  )
  (i32.store offset=96
   (get_local $12)
   (get_local $1)
  )
  (i32.store offset=100
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=108
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=112
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 29)
   )
  )
  (i32.store offset=120
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=124
   (get_local $12)
   (get_local $5)
  )
  (i32.store offset=128
   (get_local $12)
   (get_local $9)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbSH_S6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN12eparticlectr4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $12)
    (i32.const 96)
   )
   (i32.add
    (get_local $12)
    (i32.const 64)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $11)
   (get_local $2)
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $11)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $12)
    (i32.const 96)
   )
   (get_local $3)
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $12)
       (i32.const 16)
      )
      (i32.add
       (get_local $12)
       (i32.const 96)
      )
      (i32.const 32)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.gt_s
      (tee_local $2
       (i32.load offset=68
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (i64.store
     (i32.add
      (get_local $12)
      (i32.const 88)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $12)
      (i32.const 80)
     )
     (i64.const 0)
    )
    (i64.store offset=72
     (get_local $12)
     (i64.const 0)
    )
    (i64.store offset=64
     (get_local $12)
     (i64.const 0)
    )
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx256_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928832)
       (i32.add
        (get_local $12)
        (i32.const 64)
       )
       (i32.const 2)
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx256_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
    (i32.const 2)
   )
  )
  (i64.store offset=96
   (get_local $12)
   (i64.load
    (get_local $1)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (call $memcmp
      (get_local $6)
      (i32.add
       (get_local $12)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $11
         (i32.add
          (get_local $1)
          (i32.const 72)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $11)
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928831)
       (i32.add
        (get_local $12)
        (i32.const 64)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
   )
  )
  (i64.store offset=96
   (get_local $12)
   (i64.load
    (get_local $5)
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (call $memcmp
      (get_local $7)
      (i32.add
       (get_local $12)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 76)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $1)
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928830)
       (i32.add
        (get_local $12)
        (i32.const 64)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_6EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 496)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 544)
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (tee_local $12
     (get_local $11)
    )
    (i32.const 96)
   )
   (tee_local $3
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
     (i32.const 28)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $12)
      (i32.const 96)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=28
   (get_local $12)
   (i32.load offset=108
    (get_local $12)
   )
  )
  (i32.store offset=24
   (get_local $12)
   (i32.load offset=104
    (get_local $12)
   )
  )
  (i32.store offset=20
   (get_local $12)
   (i32.load offset=100
    (get_local $12)
   )
  )
  (i32.store offset=16
   (get_local $12)
   (i32.load offset=96
    (get_local $12)
   )
  )
  (set_local $4
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=56
   (get_local $12)
   (i64.load
    (tee_local $5
     (i32.add
      (get_local $1)
      (i32.const 48)
     )
    )
   )
  )
  (i64.store offset=48
   (get_local $12)
   (get_local $4)
  )
  (i64.store offset=32
   (get_local $1)
   (i64.sub
    (i64.load offset=32
     (i32.load offset=4
      (i32.load
       (get_local $2)
      )
     )
    )
    (i64.load
     (i32.load
      (i32.add
       (get_local $2)
       (i32.const 4)
      )
     )
    )
   )
  )
  (i64.store32 offset=56
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 704)
  )
  (set_local $2
   (i32.add
    (tee_local $9
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.const 46)
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (get_local $9)
   )
  )
  (set_local $9
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (set_local $7
   (i32.add
    (get_local $12)
    (i32.const 56)
   )
  )
  (set_local $6
   (i32.add
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $11
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $11
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $12)
   (get_local $11)
  )
  (i32.store
   (get_local $12)
   (get_local $11)
  )
  (i32.store offset=8
   (get_local $12)
   (i32.add
    (get_local $11)
    (get_local $2)
   )
  )
  (i32.store offset=64
   (get_local $12)
   (get_local $12)
  )
  (i32.store offset=104
   (get_local $12)
   (get_local $3)
  )
  (i32.store offset=116
   (get_local $12)
   (get_local $8)
  )
  (i32.store offset=96
   (get_local $12)
   (get_local $1)
  )
  (i32.store offset=100
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=108
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=112
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 29)
   )
  )
  (i32.store offset=120
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=124
   (get_local $12)
   (get_local $5)
  )
  (i32.store offset=128
   (get_local $12)
   (get_local $9)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbSH_S6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN12eparticlectr4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $12)
    (i32.const 96)
   )
   (i32.add
    (get_local $12)
    (i32.const 64)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $11)
   (get_local $2)
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $11)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $12)
    (i32.const 96)
   )
   (get_local $3)
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $12)
       (i32.const 16)
      )
      (i32.add
       (get_local $12)
       (i32.const 96)
      )
      (i32.const 32)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.gt_s
      (tee_local $2
       (i32.load offset=68
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (i64.store
     (i32.add
      (get_local $12)
      (i32.const 88)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $12)
      (i32.const 80)
     )
     (i64.const 0)
    )
    (i64.store offset=72
     (get_local $12)
     (i64.const 0)
    )
    (i64.store offset=64
     (get_local $12)
     (i64.const 0)
    )
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx256_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928832)
       (i32.add
        (get_local $12)
        (i32.const 64)
       )
       (i32.const 2)
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx256_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
    (i32.const 2)
   )
  )
  (i64.store offset=96
   (get_local $12)
   (i64.load
    (get_local $1)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (call $memcmp
      (get_local $6)
      (i32.add
       (get_local $12)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $11
         (i32.add
          (get_local $1)
          (i32.const 72)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $11)
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928831)
       (i32.add
        (get_local $12)
        (i32.const 64)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
   )
  )
  (i64.store offset=96
   (get_local $12)
   (i64.load
    (get_local $5)
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (call $memcmp
      (get_local $7)
      (i32.add
       (get_local $12)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 76)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $1)
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928830)
       (i32.add
        (get_local $12)
        (i32.const 64)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $12)
     (i32.const 96)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_7EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=60
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 496)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 544)
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (tee_local $13
     (get_local $12)
    )
    (i32.const 96)
   )
   (tee_local $3
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 16)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 96)
     )
     (i32.const 28)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 16)
    )
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 96)
     )
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 16)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 96)
     )
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $13)
      (i32.const 96)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=28
   (get_local $13)
   (i32.load offset=108
    (get_local $13)
   )
  )
  (i32.store offset=24
   (get_local $13)
   (i32.load offset=104
    (get_local $13)
   )
  )
  (i32.store offset=20
   (get_local $13)
   (i32.load offset=100
    (get_local $13)
   )
  )
  (i32.store offset=16
   (get_local $13)
   (i32.load offset=96
    (get_local $13)
   )
  )
  (set_local $4
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=56
   (get_local $13)
   (i64.load
    (tee_local $5
     (i32.add
      (get_local $1)
      (i32.const 48)
     )
    )
   )
  )
  (i64.store offset=48
   (get_local $13)
   (get_local $4)
  )
  (i64.store offset=32
   (get_local $1)
   (i64.sub
    (i64.load
     (i32.load
      (get_local $2)
     )
    )
    (i64.load offset=32
     (i32.load offset=4
      (i32.load offset=4
       (get_local $2)
      )
     )
    )
   )
  )
  (i32.store8 offset=28
   (get_local $1)
   (i32.load8_u
    (i32.load offset=8
     (get_local $2)
    )
   )
  )
  (i64.store32 offset=56
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 704)
  )
  (set_local $2
   (i32.add
    (tee_local $10
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.const 46)
   )
  )
  (set_local $11
   (i64.extend_u/i32
    (get_local $10)
   )
  )
  (set_local $10
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (set_local $9
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (set_local $7
   (i32.add
    (get_local $13)
    (i32.const 56)
   )
  )
  (set_local $6
   (i32.add
    (i32.add
     (get_local $13)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $11
      (i64.shr_u
       (get_local $11)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $12
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $12
     (i32.sub
      (get_local $12)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $13)
   (get_local $12)
  )
  (i32.store
   (get_local $13)
   (get_local $12)
  )
  (i32.store offset=8
   (get_local $13)
   (i32.add
    (get_local $12)
    (get_local $2)
   )
  )
  (i32.store offset=64
   (get_local $13)
   (get_local $13)
  )
  (i32.store offset=104
   (get_local $13)
   (get_local $3)
  )
  (i32.store offset=108
   (get_local $13)
   (get_local $9)
  )
  (i32.store offset=116
   (get_local $13)
   (get_local $8)
  )
  (i32.store offset=96
   (get_local $13)
   (get_local $1)
  )
  (i32.store offset=100
   (get_local $13)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=112
   (get_local $13)
   (i32.add
    (get_local $1)
    (i32.const 29)
   )
  )
  (i32.store offset=120
   (get_local $13)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=124
   (get_local $13)
   (get_local $5)
  )
  (i32.store offset=128
   (get_local $13)
   (get_local $10)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbSH_S6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN12eparticlectr4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $13)
    (i32.const 96)
   )
   (i32.add
    (get_local $13)
    (i32.const 64)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $12)
   (get_local $2)
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $12)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $13)
    (i32.const 96)
   )
   (get_local $3)
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $13)
       (i32.const 16)
      )
      (i32.add
       (get_local $13)
       (i32.const 96)
      )
      (i32.const 32)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.gt_s
      (tee_local $2
       (i32.load offset=68
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (i64.store
     (i32.add
      (get_local $13)
      (i32.const 88)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $13)
      (i32.const 80)
     )
     (i64.const 0)
    )
    (i64.store offset=72
     (get_local $13)
     (i64.const 0)
    )
    (i64.store offset=64
     (get_local $13)
     (i64.const 0)
    )
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx256_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928832)
       (i32.add
        (get_local $13)
        (i32.const 64)
       )
       (i32.const 2)
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx256_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $13)
     (i32.const 96)
    )
    (i32.const 2)
   )
  )
  (i64.store offset=96
   (get_local $13)
   (i64.load
    (get_local $1)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (call $memcmp
      (get_local $6)
      (i32.add
       (get_local $13)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $12
         (i32.add
          (get_local $1)
          (i32.const 72)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $12)
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928831)
       (i32.add
        (get_local $13)
        (i32.const 64)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $13)
     (i32.const 96)
    )
   )
  )
  (i64.store offset=96
   (get_local $13)
   (i64.load
    (get_local $5)
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (call $memcmp
      (get_local $7)
      (i32.add
       (get_local $13)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 76)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $1)
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928830)
       (i32.add
        (get_local $13)
        (i32.const 64)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $13)
     (i32.const 96)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $13)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE14const_iteratorppEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 0)
   )
   (i32.const 1056)
  )
  (block $label$0
   (br_if $label$0
    (i32.ne
     (tee_local $6
      (i32.load offset=68
       (tee_local $8
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const -1)
    )
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
    (i64.const 0)
   )
   (i64.store
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
    (i64.const 0)
   )
   (i64.store offset=8
    (get_local $9)
    (i64.const 0)
   )
   (i64.store
    (get_local $9)
    (i64.const 0)
   )
   (set_local $6
    (call $db_idx256_find_primary
     (i64.load
      (tee_local $6
       (i32.load
        (i32.load
         (get_local $0)
        )
       )
      )
     )
     (i64.load offset=8
      (get_local $6)
     )
     (i64.const -2507752492951928832)
     (get_local $9)
     (i32.const 2)
     (i64.load
      (get_local $8)
     )
    )
   )
   (i32.store offset=68
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
    (get_local $6)
   )
  )
  (i64.store
   (get_local $9)
   (i64.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $1
      (call $db_idx256_next
       (get_local $6)
       (get_local $9)
      )
     )
     (i32.const 0)
    )
   )
   (set_local $3
    (i64.load
     (get_local $9)
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.eq
      (tee_local $8
       (i32.load
        (i32.add
         (tee_local $2
          (i32.load
           (i32.load
            (get_local $0)
           )
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $4
       (i32.load offset=24
        (get_local $2)
       )
      )
     )
    )
    (set_local $7
     (i32.add
      (get_local $8)
      (i32.const -24)
     )
    )
    (set_local $5
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (loop $label$3
     (br_if $label$2
      (i64.eq
       (i64.load
        (i32.load
         (get_local $7)
        )
       )
       (get_local $3)
      )
     )
     (set_local $8
      (get_local $7)
     )
     (set_local $7
      (tee_local $6
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
     (br_if $label$3
      (i32.ne
       (i32.add
        (get_local $6)
        (get_local $5)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eq
       (get_local $8)
       (get_local $4)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=60
        (tee_local $7
         (i32.load
          (i32.add
           (get_local $8)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $2)
      )
      (i32.const 144)
     )
     (br $label$4)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $7
        (call $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $2)
         (call $db_find_i64
          (i64.load
           (get_local $2)
          )
          (i64.load offset=8
           (get_local $2)
          )
          (i64.const -2507752492951928832)
          (get_local $3)
         )
        )
       )
      )
      (get_local $2)
     )
     (i32.const 144)
    )
   )
   (i32.store offset=68
    (get_local $7)
    (get_local $1)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
  )
  (get_local $0)
 )
 (func $_ZZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE7emplaceIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSH_11char_traitsIcEENSH_9allocatorIcEEEEbyE3$_8EENSF_14const_iteratorEyOT_ENKUlRSR_E_clINSF_4itemEEEDaST_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i64)
  (local $15 i32)
  (local $16 i32)
  (set_local $16
   (tee_local $15
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $15)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $13
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (get_local $13)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
    )
    (i32.load offset=8
     (get_local $13)
    )
   )
  )
  (i32.store8 offset=28
   (get_local $1)
   (i32.load8_u
    (i32.load offset=12
     (get_local $13)
    )
   )
  )
  (i32.store8 offset=29
   (get_local $1)
   (i32.load8_u
    (i32.load offset=16
     (get_local $13)
    )
   )
  )
  (i64.store offset=32
   (get_local $1)
   (i64.load
    (i32.load offset=20
     (get_local $13)
    )
   )
  )
  (i64.store offset=40
   (get_local $1)
   (i64.load
    (i32.load offset=24
     (get_local $13)
    )
   )
  )
  (i64.store offset=48
   (get_local $1)
   (i64.or
    (i64.or
     (i64.or
      (i64.shl
       (tee_local $14
        (i64.load
         (i32.load offset=24
          (get_local $13)
         )
        )
       )
       (i64.const 56)
      )
      (i64.and
       (i64.shl
        (get_local $14)
        (i64.const 40)
       )
       (i64.const 71776119061217280)
      )
     )
     (i64.or
      (i64.and
       (i64.shl
        (get_local $14)
        (i64.const 24)
       )
       (i64.const 280375465082880)
      )
      (i64.and
       (i64.shl
        (get_local $14)
        (i64.const 8)
       )
       (i64.const 1095216660480)
      )
     )
    )
    (i64.or
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $14)
        (i64.const 8)
       )
       (i64.const 4278190080)
      )
      (i64.and
       (i64.shr_u
        (get_local $14)
        (i64.const 24)
       )
       (i64.const 16711680)
      )
     )
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $14)
        (i64.const 40)
       )
       (i64.const 65280)
      )
      (i64.shr_u
       (get_local $14)
       (i64.const 56)
      )
     )
    )
   )
  )
  (i64.store32 offset=56
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (set_local $13
   (i32.add
    (tee_local $10
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 20)
       )
      )
      (i32.shr_u
       (tee_local $13
        (i32.load8_u offset=16
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $13)
       (i32.const 1)
      )
     )
    )
    (i32.const 46)
   )
  )
  (set_local $14
   (i64.extend_u/i32
    (get_local $10)
   )
  )
  (set_local $10
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (set_local $9
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 29)
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $3
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (loop $label$0
   (set_local $13
    (i32.add
     (get_local $13)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $14
      (i64.shr_u
       (get_local $14)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $13)
      (i32.const 513)
     )
    )
    (set_local $15
     (call $malloc
      (get_local $13)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $15
     (i32.sub
      (get_local $15)
      (i32.and
       (i32.add
        (get_local $13)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=12
   (get_local $16)
   (get_local $15)
  )
  (i32.store offset=8
   (get_local $16)
   (get_local $15)
  )
  (i32.store offset=16
   (get_local $16)
   (i32.add
    (get_local $15)
    (get_local $13)
   )
  )
  (i32.store offset=24
   (get_local $16)
   (i32.add
    (get_local $16)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $16)
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $16)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $16)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $16)
   (get_local $5)
  )
  (i32.store offset=48
   (get_local $16)
   (get_local $6)
  )
  (i32.store offset=52
   (get_local $16)
   (get_local $7)
  )
  (i32.store offset=56
   (get_local $16)
   (get_local $8)
  )
  (i32.store offset=60
   (get_local $16)
   (get_local $9)
  )
  (i32.store offset=64
   (get_local $16)
   (get_local $10)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbSH_S6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN12eparticlectr4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $16)
    (i32.const 32)
   )
   (i32.add
    (get_local $16)
    (i32.const 24)
   )
  )
  (i32.store offset=64
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -2507752492951928832)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $14
     (i64.load
      (get_local $1)
     )
    )
    (get_local $15)
    (get_local $13)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $13)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $15)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $14)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $14)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $14)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $14
   (i64.load
    (tee_local $13
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $11
   (i64.load
    (tee_local $15
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $12
   (i64.load
    (get_local $1)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $16)
    (i32.const 32)
   )
   (get_local $4)
  )
  (i32.store offset=68
   (get_local $1)
   (call $db_idx256_store
    (get_local $14)
    (i64.const -2507752492951928832)
    (get_local $11)
    (get_local $12)
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
    (i32.const 2)
   )
  )
  (set_local $14
   (i64.load
    (get_local $15)
   )
  )
  (set_local $11
   (i64.load
    (get_local $13)
   )
  )
  (i64.store offset=32
   (get_local $16)
   (tee_local $12
    (i64.load
     (get_local $1)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 72)
   )
   (call $db_idx64_store
    (get_local $11)
    (i64.const -2507752492951928831)
    (get_local $14)
    (get_local $12)
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
   )
  )
  (set_local $14
   (i64.load
    (get_local $15)
   )
  )
  (set_local $11
   (i64.load
    (get_local $13)
   )
  )
  (set_local $12
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $16)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 76)
   )
   (call $db_idx64_store
    (get_local $11)
    (i64.const -2507752492951928830)
    (get_local $14)
    (get_local $12)
    (i32.add
     (get_local $16)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $16)
    (i32.const 80)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbSH_S6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN12eparticlectr4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (i32.store8 offset=14
   (get_local $4)
   (i32.load8_u
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 0)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $4)
     (i32.const 14)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (i32.store8 offset=15
   (get_local $4)
   (i32.load8_u
    (i32.load offset=16
     (get_local $0)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 0)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $4)
     (i32.const 15)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (set_local $2
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERbSE_S5_S5_S5_RmEEEZN5eosiorsINSH_10datastreamIPKcEEN12eparticlectr4voteELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8EEEEvSR_OSS_NS6_16integer_sequenceIjJXspT1_EEEENS6_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (i32.const 14)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store8
   (get_local $3)
   (i32.ne
    (i32.load8_u offset=14
     (get_local $4)
    )
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (i32.const 15)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store8
   (get_local $3)
   (i32.ne
    (i32.load8_u offset=15
     (get_local $4)
    )
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (i32.store offset=24
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (i64.const 0)
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
    (get_local $0)
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (br_if $label$8
            (i32.ne
             (tee_local $5
              (i32.load offset=20
               (get_local $7)
              )
             )
             (tee_local $4
              (i32.load offset=16
               (get_local $7)
              )
             )
            )
           )
           (br_if $label$7
            (i32.and
             (i32.load8_u
              (get_local $1)
             )
             (i32.const 1)
            )
           )
           (i32.store16
            (get_local $1)
            (i32.const 0)
           )
           (set_local $4
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
           (br $label$6)
          )
          (i32.store
           (i32.add
            (get_local $7)
            (i32.const 8)
           )
           (i32.const 0)
          )
          (i64.store
           (get_local $7)
           (i64.const 0)
          )
          (br_if $label$0
           (i32.ge_u
            (tee_local $2
             (i32.sub
              (get_local $5)
              (get_local $4)
             )
            )
            (i32.const -16)
           )
          )
          (br_if $label$5
           (i32.ge_u
            (get_local $2)
            (i32.const 11)
           )
          )
          (i32.store8
           (get_local $7)
           (i32.shl
            (get_local $2)
            (i32.const 1)
           )
          )
          (set_local $6
           (i32.or
            (get_local $7)
            (i32.const 1)
           )
          )
          (br_if $label$4
           (get_local $2)
          )
          (br $label$3)
         )
         (i32.store8
          (i32.load offset=8
           (get_local $1)
          )
          (i32.const 0)
         )
         (i32.store offset=4
          (get_local $1)
          (i32.const 0)
         )
         (set_local $4
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
        )
        (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
         (get_local $1)
         (i32.const 0)
        )
        (i32.store
         (get_local $4)
         (i32.const 0)
        )
        (i64.store align=4
         (get_local $1)
         (i64.const 0)
        )
        (br_if $label$2
         (tee_local $4
          (i32.load offset=16
           (get_local $7)
          )
         )
        )
        (br $label$1)
       )
       (set_local $6
        (call $_Znwj
         (tee_local $5
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const 16)
           )
           (i32.const -16)
          )
         )
        )
       )
       (i32.store
        (get_local $7)
        (i32.or
         (get_local $5)
         (i32.const 1)
        )
       )
       (i32.store offset=8
        (get_local $7)
        (get_local $6)
       )
       (i32.store offset=4
        (get_local $7)
        (get_local $2)
       )
      )
      (set_local $3
       (get_local $2)
      )
      (set_local $5
       (get_local $6)
      )
      (loop $label$9
       (i32.store8
        (get_local $5)
        (i32.load8_u
         (get_local $4)
        )
       )
       (set_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.const 1)
        )
       )
       (br_if $label$9
        (tee_local $3
         (i32.add
          (get_local $3)
          (i32.const -1)
         )
        )
       )
      )
      (set_local $6
       (i32.add
        (get_local $6)
        (get_local $2)
       )
      )
     )
     (i32.store8
      (get_local $6)
      (i32.const 0)
     )
     (block $label$10
      (block $label$11
       (br_if $label$11
        (i32.and
         (i32.load8_u
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store16
        (get_local $1)
        (i32.const 0)
       )
       (br $label$10)
      )
      (i32.store8
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $1)
       (i32.const 0)
      )
     )
     (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 8)
       )
      )
     )
     (i64.store align=4
      (get_local $1)
      (i64.load
       (get_local $7)
      )
     )
     (br_if $label$1
      (i32.eqz
       (tee_local $4
        (i32.load offset=16
         (get_local $7)
        )
       )
      )
     )
    )
    (i32.store offset=20
     (get_local $7)
     (get_local $4)
    )
    (call $_ZdlPv
     (get_local $4)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $7)
     (i32.const 32)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $7)
  )
  (unreachable)
 )
 (func $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $2
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$0
   (call $eosio_assert
    (i32.lt_u
     (get_local $5)
     (i32.load
      (get_local $2)
     )
    )
    (i32.const 1760)
   )
   (set_local $4
    (i32.load8_u
     (tee_local $5
      (i32.load
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $4)
        (i32.const 127)
       )
       (tee_local $7
        (i32.and
         (get_local $7)
         (i32.const 255)
        )
       )
      )
     )
     (get_local $6)
    )
   )
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 7)
    )
   )
   (br_if $label$0
    (i32.shr_u
     (get_local $4)
     (i32.const 7)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (tee_local $3
       (i32.wrap/i64
        (get_local $6)
       )
      )
      (tee_local $2
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $4
         (i32.load
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
     (get_local $1)
     (i32.sub
      (get_local $3)
      (get_local $2)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load
      (get_local $1)
     )
    )
    (br $label$1)
   )
   (br_if $label$1
    (i32.ge_u
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $3)
     )
    )
   )
  )
  (call $eosio_assert
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $5)
    )
    (tee_local $5
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $4)
    (i32.load
     (tee_local $7
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $5)
   )
  )
  (i32.store
   (get_local $7)
   (i32.add
    (i32.load
     (get_local $7)
    )
    (get_local $5)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__114__split_bufferIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrERNS_9allocatorISI_EEED2Ev (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $2
      (i32.load offset=8
       (get_local $0)
      )
     )
     (tee_local $1
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (loop $label$1
    (i32.store
     (get_local $4)
     (tee_local $3
      (i32.add
       (get_local $2)
       (i32.const -24)
      )
     )
    )
    (set_local $2
     (i32.load
      (get_local $3)
     )
    )
    (i32.store
     (get_local $3)
     (i32.const 0)
    )
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (get_local $2)
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (i32.and
         (i32.load8_u offset=32
          (get_local $2)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $2)
         (i32.const 40)
        )
       )
      )
     )
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (i32.and
         (i32.load8_u offset=20
          (get_local $2)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $2)
         (i32.const 28)
        )
       )
      )
     )
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (i32.and
         (i32.load8_u offset=8
          (get_local $2)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $2)
         (i32.const 16)
        )
       )
      )
     )
     (call $_ZdlPv
      (get_local $2)
     )
    )
    (br_if $label$1
     (i32.ne
      (tee_local $2
       (i32.load
        (get_local $4)
       )
      )
      (get_local $1)
     )
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $2
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_SF_S6_S6_S6_RKmSH_SH_SH_SH_EEEZN5eosiolsINSJ_10datastreamIjEEN12eparticlectr12editproposalELPv0EEERT_SR_RKT0_EUlRKSQ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11EEEEvSR_OSS_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (tee_local $2
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.shr_u
      (tee_local $4
       (i32.load8_u
        (get_local $2)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $4)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (loop $label$0
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.shr_u
       (get_local $5)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (i32.store
   (get_local $3)
   (get_local $4)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $2
      (select
       (i32.load
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $2
         (i32.load8_u
          (get_local $2)
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (i32.add
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (tee_local $2
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
     (i32.shr_u
      (tee_local $4
       (i32.load8_u
        (get_local $2)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $4)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (loop $label$2
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (br_if $label$2
    (i64.ne
     (tee_local $5
      (i64.shr_u
       (get_local $5)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (i32.store
   (get_local $3)
   (get_local $4)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $2
      (select
       (i32.load
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $2
         (i32.load8_u
          (get_local $2)
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
   (i32.store
    (get_local $3)
    (i32.add
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (tee_local $0
       (i32.load offset=12
        (get_local $0)
       )
      )
     )
     (i32.shr_u
      (tee_local $4
       (i32.load8_u
        (get_local $0)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $4)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $4
   (i32.load
    (tee_local $2
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (loop $label$4
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (br_if $label$4
    (i64.ne
     (tee_local $5
      (i64.shr_u
       (get_local $5)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $4)
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (tee_local $0
      (select
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $0
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $0)
        (i32.const 1)
       )
      )
     )
    )
   )
   (i32.store
    (get_local $2)
    (i32.add
     (get_local $0)
     (get_local $4)
    )
   )
  )
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 4)
   )
  )
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 4)
   )
  )
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 4)
   )
  )
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 4)
   )
  )
  (i32.store
   (tee_local $4
    (i32.load
     (get_local $1)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 4)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_SF_S6_S6_S6_RKmSH_SH_SH_SH_EEEZN5eosiolsINSJ_10datastreamIPcEEN12eparticlectr12editproposalELPv0EEERT_SS_RKT0_EUlRKSR_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11EEEEvSS_OST_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $2
   (i32.load offset=44
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $2)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 208)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=12
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=8
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=16
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i64.store offset=8 align=4
    (tee_local $6
     (call $_Znwj
      (i32.const 112)
     )
    )
    (i64.const 0)
   )
   (i64.store offset=16 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=24 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=32 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=40
    (get_local $6)
    (i32.const 0)
   )
   (i32.store offset=92
    (get_local $6)
    (get_local $0)
   )
   (i32.store offset=24
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $6)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 20)
    )
   )
   (i32.store offset=44
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
   )
   (i32.store offset=48
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 48)
    )
   )
   (i32.store offset=52
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
   )
   (i32.store offset=56
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 64)
    )
   )
   (i32.store offset=60
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 72)
    )
   )
   (i32.store offset=64
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 76)
    )
   )
   (i32.store offset=68
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 80)
    )
   )
   (i32.store offset=72
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 84)
    )
   )
   (i32.store offset=76
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 88)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_S5_S5_S5_RmSE_SE_SE_SE_EEEZN5eosiorsINSG_10datastreamIPKcEEN12eparticlectr12editproposalELPv0EEERT_SQ_RT0_EUlSQ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11EEEEvSQ_OSR_NS6_16integer_sequenceIjJXspT1_EEEENS6_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
   )
   (i32.store offset=100
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=96
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=104
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=108
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=32
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=4
    (get_local $8)
    (tee_local $7
     (i32.load offset=96
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (i32.and
       (i32.load8_u offset=32
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $4)
       (i32.const 40)
      )
     )
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.eqz
      (i32.and
       (i32.load8_u offset=20
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $4)
       (i32.const 28)
      )
     )
    )
   )
   (block $label$11
    (br_if $label$11
     (i32.eqz
      (i32.and
       (i32.load8_u offset=8
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $4)
       (i32.const 16)
      )
     )
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
  (get_local $6)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_S5_S5_S5_RmSE_SE_SE_SE_EEEZN5eosiorsINSG_10datastreamIPKcEEN12eparticlectr12editproposalELPv0EEERT_SQ_RT0_EUlSQ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11EEEEvSQ_OSR_NS6_16integer_sequenceIjJXspT1_EEEENS6_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=4
     (get_local $0)
    )
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=8
     (get_local $0)
    )
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $2
   (i32.load offset=44
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 4)
   )
  )
 )
 (func $_ZN12eparticlectr8votebyidEyyby (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 56)
   )
   (i32.const 0)
  )
  (i64.store offset=40
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=48
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (tee_local $6
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=32
   (get_local $8)
   (get_local $6)
  )
  (i32.store8
   (i32.add
    (get_local $8)
    (i32.const 62)
   )
   (i32.const 0)
  )
  (i32.store16 offset=60
   (get_local $8)
   (i32.const 0)
  )
  (set_local $7
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (get_local $6)
       (get_local $6)
       (i64.const -5915095046964641792)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=92
      (tee_local $7
       (call $_ZNK5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $8)
         (i32.const 24)
        )
        (get_local $5)
       )
      )
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
    )
    (i32.const 144)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (i32.const 0)
   )
   (i32.const 1328)
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
   )
  )
  (call $_ZN12eparticlectr10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby
   (get_local $0)
   (get_local $1)
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
   (get_local $3)
   (get_local $4)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (i32.load8_u offset=8
       (get_local $8)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=16
     (get_local $8)
    )
   )
  )
  (drop
   (call $_ZNSt3__113__vector_baseIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEED2Ev
    (i32.add
     (get_local $8)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 64)
   )
  )
 )
 (func $_ZN12eparticlectr9fnlbyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 128)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $5)
    (i32.const 72)
   )
   (i32.const 0)
  )
  (i64.store offset=56
   (get_local $5)
   (i64.const -1)
  )
  (i64.store offset=64
   (get_local $5)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $5)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=48
   (get_local $5)
   (get_local $4)
  )
  (i32.store8
   (i32.add
    (get_local $5)
    (i32.const 78)
   )
   (i32.const 0)
  )
  (i32.store16 offset=76
   (get_local $5)
   (i32.const 0)
  )
  (i32.store offset=32
   (get_local $5)
   (i32.add
    (get_local $5)
    (i32.const 40)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (get_local $5)
   (get_local $2)
  )
  (call $_ZNK5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $5)
    (i32.const 120)
   )
   (i32.add
    (get_local $5)
    (i32.const 32)
   )
   (get_local $5)
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=124
       (get_local $5)
      )
     )
    )
   )
   (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $5)
     (i32.const 80)
    )
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i64.eqz
       (i64.or
        (i64.xor
         (i64.load
          (get_local $5)
         )
         (i64.load offset=80
          (get_local $5)
         )
        )
        (i64.xor
         (i64.load offset=8
          (get_local $5)
         )
         (i64.load offset=88
          (get_local $5)
         )
        )
       )
      )
     )
    )
    (set_local $2
     (i32.const 0)
    )
    (br_if $label$0
     (i64.ne
      (i64.or
       (i64.xor
        (i64.load offset=16
         (get_local $5)
        )
        (i64.load offset=96
         (get_local $5)
        )
       )
       (i64.xor
        (i64.load
         (i32.add
          (get_local $5)
          (i32.const 24)
         )
        )
        (i64.load
         (i32.add
          (i32.add
           (get_local $5)
           (i32.const 80)
          )
          (i32.const 24)
         )
        )
       )
      )
      (i64.const 0)
     )
    )
    (set_local $2
     (i32.load offset=124
      (get_local $5)
     )
    )
    (br $label$0)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $2)
    (i32.const 0)
   )
   (i32.const 1328)
  )
  (call $printui
   (i64.load
    (get_local $2)
   )
  )
  (call $_ZN12eparticlectr8finalizeEyy
   (get_local $0)
   (get_local $4)
   (i64.load
    (get_local $2)
   )
  )
  (drop
   (call $_ZNSt3__113__vector_baseIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEED2Ev
    (i32.add
     (get_local $5)
     (i32.const 64)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $5)
    (i32.const 128)
   )
  )
 )
 (func $_ZN12eparticlectr8finalizeEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i32)
  (local $17 i64)
  (local $18 i32)
  (local $19 i32)
  (local $20 i64)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 f32)
  (local $28 i32)
  (local $29 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $29
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 416)
    )
   )
  )
  (i64.store offset=312
   (get_local $29)
   (get_local $2)
  )
  (set_local $28
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $29)
    (i32.const 304)
   )
   (i32.const 0)
  )
  (i64.store offset=288
   (get_local $29)
   (i64.const -1)
  )
  (i64.store offset=296
   (get_local $29)
   (i64.const 0)
  )
  (i64.store offset=272
   (get_local $29)
   (tee_local $15
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=280
   (get_local $29)
   (get_local $15)
  )
  (i32.store8
   (i32.add
    (get_local $29)
    (i32.const 310)
   )
   (i32.const 0)
  )
  (i32.store16 offset=308
   (get_local $29)
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.le_s
      (tee_local $12
       (call $db_find_i64
        (get_local $15)
        (get_local $15)
        (i64.const -5915095046964641792)
        (get_local $2)
       )
      )
      (i32.const -1)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=92
       (tee_local $28
        (call $_ZNK5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE31load_object_by_primary_iteratorEl
         (i32.add
          (get_local $29)
          (i32.const 272)
         )
         (get_local $12)
        )
       )
      )
      (i32.add
       (get_local $29)
       (i32.const 272)
      )
     )
     (i32.const 144)
    )
    (i32.store offset=268
     (get_local $29)
     (get_local $28)
    )
    (i32.store offset=264
     (get_local $29)
     (i32.add
      (get_local $29)
      (i32.const 272)
     )
    )
    (set_local $25
     (i32.or
      (i32.add
       (get_local $29)
       (i32.const 264)
      )
      (i32.const 4)
     )
    )
    (br $label$0)
   )
   (i32.store offset=268
    (get_local $29)
    (i32.const 0)
   )
   (i32.store offset=264
    (get_local $29)
    (i32.add
     (get_local $29)
     (i32.const 272)
    )
   )
   (set_local $25
    (i32.or
     (i32.add
      (get_local $29)
      (i32.const 264)
     )
     (i32.const 4)
    )
   )
  )
  (set_local $12
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.ne
    (get_local $28)
    (i32.const 0)
   )
   (i32.const 1328)
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.wrap/i64
     (i64.div_u
      (call $current_time)
      (i64.const 1000000)
     )
    )
    (i32.load offset=80
     (i32.load
      (get_local $25)
     )
    )
   )
   (i32.const 1776)
  )
  (i32.store
   (i32.add
    (get_local $29)
    (i32.const 256)
   )
   (i32.const 0)
  )
  (i64.store offset=240
   (get_local $29)
   (i64.const -1)
  )
  (i64.store offset=248
   (get_local $29)
   (i64.const 0)
  )
  (i64.store offset=224
   (get_local $29)
   (tee_local $15
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=232
   (get_local $29)
   (get_local $15)
  )
  (i32.store8
   (i32.add
    (get_local $29)
    (i32.const 262)
   )
   (i32.const 0)
  )
  (i32.store16 offset=260
   (get_local $29)
   (i32.const 0)
  )
  (i32.store offset=216
   (get_local $29)
   (i32.add
    (get_local $29)
    (i32.const 224)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $29)
    (i32.const 128)
   )
   (i32.add
    (i32.load
     (get_local $25)
    )
    (i32.const 8)
   )
  )
  (call $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $29)
    (i32.const 80)
   )
   (i32.add
    (get_local $29)
    (i32.const 216)
   )
   (i32.add
    (get_local $29)
    (i32.const 128)
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (tee_local $28
       (i32.load offset=84
        (get_local $29)
       )
      )
     )
    )
    (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
     (i32.add
      (get_local $29)
      (i32.const 320)
     )
     (i32.add
      (get_local $28)
      (i32.const 16)
     )
    )
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load offset=128
           (get_local $29)
          )
          (i64.load offset=320
           (get_local $29)
          )
         )
         (i64.xor
          (i64.load offset=136
           (get_local $29)
          )
          (i64.load offset=328
           (get_local $29)
          )
         )
        )
       )
      )
     )
     (br_if $label$4
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load offset=144
           (get_local $29)
          )
          (i64.load offset=336
           (get_local $29)
          )
         )
         (i64.xor
          (i64.load
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 128)
            )
            (i32.const 24)
           )
          )
          (i64.load
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 320)
            )
            (i32.const 24)
           )
          )
         )
        )
       )
      )
     )
     (i64.store offset=208
      (get_local $29)
      (tee_local $15
       (i64.load offset=80
        (get_local $29)
       )
      )
     )
     (set_local $12
      (i32.wrap/i64
       (i64.shr_u
        (get_local $15)
        (i64.const 32)
       )
      )
     )
     (set_local $26
      (i32.or
       (i32.add
        (get_local $29)
        (i32.const 208)
       )
       (i32.const 4)
      )
     )
     (br $label$2)
    )
    (set_local $12
     (i32.const 0)
    )
    (i32.store offset=212
     (get_local $29)
     (i32.const 0)
    )
    (i32.store offset=208
     (get_local $29)
     (i32.add
      (get_local $29)
      (i32.const 216)
     )
    )
    (set_local $26
     (i32.or
      (i32.add
       (get_local $29)
       (i32.const 208)
      )
      (i32.const 4)
     )
    )
    (br $label$2)
   )
   (i32.store offset=212
    (get_local $29)
    (i32.const 0)
   )
   (i32.store offset=208
    (get_local $29)
    (i32.add
     (get_local $29)
     (i32.const 216)
    )
   )
   (set_local $26
    (i32.or
     (i32.add
      (get_local $29)
      (i32.const 208)
     )
     (i32.const 4)
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $12)
    (i32.const 0)
   )
   (i32.const 1808)
  )
  (call $prints
   (i32.const 1840)
  )
  (set_local $2
   (i64.const 0)
  )
  (i64.store offset=200
   (get_local $29)
   (i64.const 0)
  )
  (i64.store offset=192
   (get_local $29)
   (i64.const 0)
  )
  (block $label$5
   (br_if $label$5
    (i64.ne
     (i64.load offset=8
      (tee_local $28
       (i32.load
        (get_local $26)
       )
      )
     )
     (i64.load offset=312
      (get_local $29)
     )
    )
   )
   (loop $label$6
    (set_local $15
     (i64.load offset=32
      (get_local $28)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (i32.load8_u offset=28
         (get_local $28)
        )
       )
      )
      (i64.store offset=200
       (get_local $29)
       (i64.add
        (i64.load offset=200
         (get_local $29)
        )
        (get_local $15)
       )
      )
      (br $label$7)
     )
     (i64.store offset=192
      (get_local $29)
      (i64.add
       (i64.load offset=192
        (get_local $29)
       )
       (get_local $15)
      )
     )
    )
    (drop
     (call $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE14const_iteratorppEv
      (i32.add
       (get_local $29)
       (i32.const 208)
      )
     )
    )
    (br_if $label$6
     (i64.eq
      (i64.load offset=8
       (tee_local $28
        (i32.load
         (get_local $26)
        )
       )
      )
      (i64.load offset=312
       (get_local $29)
      )
     )
    )
   )
  )
  (call $prints
   (i32.const 1856)
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $29)
    (i32.const 128)
   )
   (i32.add
    (i32.load
     (get_local $25)
    )
    (i32.const 8)
   )
  )
  (call $_ZNK5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $29)
    (i32.const 80)
   )
   (i32.add
    (get_local $29)
    (i32.const 216)
   )
   (i32.add
    (get_local $29)
    (i32.const 128)
   )
  )
  (set_local $28
   (i32.add
    (get_local $29)
    (i32.const 216)
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (tee_local $12
      (i32.load offset=84
       (get_local $29)
      )
     )
    )
   )
   (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $29)
     (i32.const 320)
    )
    (i32.add
     (get_local $12)
     (i32.const 16)
    )
   )
   (br_if $label$9
    (i32.eqz
     (i64.eqz
      (i64.or
       (i64.xor
        (i64.load offset=128
         (get_local $29)
        )
        (i64.load offset=320
         (get_local $29)
        )
       )
       (i64.xor
        (i64.load offset=136
         (get_local $29)
        )
        (i64.load offset=328
         (get_local $29)
        )
       )
      )
     )
    )
   )
   (set_local $2
    (i64.const 0)
   )
   (br_if $label$9
    (i64.ne
     (i64.or
      (i64.xor
       (i64.load offset=144
        (get_local $29)
       )
       (i64.load offset=336
        (get_local $29)
       )
      )
      (i64.xor
       (i64.load
        (i32.add
         (i32.add
          (get_local $29)
          (i32.const 128)
         )
         (i32.const 24)
        )
       )
       (i64.load
        (i32.add
         (i32.add
          (get_local $29)
          (i32.const 320)
         )
         (i32.const 24)
        )
       )
      )
     )
     (i64.const 0)
    )
   )
   (set_local $2
    (i64.and
     (tee_local $15
      (i64.load offset=80
       (get_local $29)
      )
     )
     (i64.const -4294967296)
    )
   )
   (set_local $28
    (i32.wrap/i64
     (get_local $15)
    )
   )
  )
  (i64.store offset=208
   (get_local $29)
   (i64.or
    (get_local $2)
    (i64.extend_u/i32
     (get_local $28)
    )
   )
  )
  (i32.store8 offset=191
   (get_local $29)
   (i32.const 0)
  )
  (call $__floatunditf
   (get_local $29)
   (i64.add
    (tee_local $2
     (i64.load offset=192
      (get_local $29)
     )
    )
    (tee_local $15
     (i64.load offset=200
      (get_local $29)
     )
    )
   )
  )
  (block $label$10
   (block $label$11
    (br_if $label$11
     (i32.eqz
      (f32.gt
       (tee_local $8
        (f32.div
         (f32.convert_u/i64
          (get_local $15)
         )
         (tee_local $3
          (call $__trunctfsf2
           (i64.load
            (get_local $29)
           )
           (i64.load
            (i32.add
             (get_local $29)
             (i32.const 8)
            )
           )
          )
         )
        )
       )
       (f32.const 0.5)
      )
     )
    )
    (i32.store8 offset=191
     (get_local $29)
     (i32.const 1)
    )
    (i32.store offset=184
     (get_local $29)
     (i32.const 1)
    )
    (set_local $27
     (f32.div
      (f32.convert_u/i64
       (i64.sub
        (get_local $15)
        (get_local $2)
       )
      )
      (get_local $3)
     )
    )
    (br $label$10)
   )
   (i32.store offset=184
    (get_local $29)
    (i32.const 1)
   )
  )
  (block $label$12
   (block $label$13
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (i32.or
        (f32.lt
         (get_local $8)
         (f32.const 0.75)
        )
        (tee_local $28
         (f32.ne
          (get_local $8)
          (get_local $8)
         )
        )
       )
      )
     )
     (br_if $label$13
      (i32.or
       (f32.le
        (get_local $8)
        (f32.const 0.5)
       )
       (get_local $28)
      )
     )
     (i32.store offset=184
      (get_local $29)
      (i32.const 2)
     )
     (br $label$12)
    )
    (i32.store offset=184
     (get_local $29)
     (i32.const 3)
    )
    (br $label$12)
   )
   (set_local $27
    (f32.div
     (f32.convert_u/i64
      (i64.sub
       (get_local $2)
       (get_local $15)
      )
     )
     (get_local $3)
    )
   )
  )
  (call $prints
   (i32.const 1888)
  )
  (i64.store32 offset=180
   (get_local $29)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (set_local $28
   (i32.load offset=268
    (get_local $29)
   )
  )
  (i32.store offset=324
   (get_local $29)
   (i32.add
    (get_local $29)
    (i32.const 192)
   )
  )
  (i32.store offset=320
   (get_local $29)
   (i32.add
    (get_local $29)
    (i32.const 200)
   )
  )
  (i32.store offset=328
   (get_local $29)
   (i32.add
    (get_local $29)
    (i32.const 184)
   )
  )
  (i32.store offset=332
   (get_local $29)
   (i32.add
    (get_local $29)
    (i32.const 180)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $28)
    (i32.const 0)
   )
   (i32.const 448)
  )
  (call $_ZN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE6modifyIZNS1_8finalizeEyyE3$_9EEvRKS2_yOT_
   (i32.add
    (get_local $29)
    (i32.const 272)
   )
   (get_local $28)
   (i32.add
    (get_local $29)
    (i32.const 320)
   )
  )
  (call $prints
   (i32.const 1920)
  )
  (i32.store
   (tee_local $16
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 128)
     )
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=144
   (get_local $29)
   (i64.const -1)
  )
  (i64.store offset=152
   (get_local $29)
   (i64.const 0)
  )
  (i64.store offset=128
   (get_local $29)
   (tee_local $15
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=136
   (get_local $29)
   (get_local $15)
  )
  (i32.store offset=164
   (get_local $29)
   (i32.const 0)
  )
  (call $prints
   (i32.const 1952)
  )
  (block $label$15
   (br_if $label$15
    (i64.ne
     (i64.load offset=8
      (i32.load
       (get_local $26)
      )
     )
     (i64.load offset=312
      (get_local $29)
     )
    )
   )
   (set_local $8
    (f32.mul
     (get_local $27)
     (f32.const 30)
    )
   )
   (set_local $28
    (i32.load
     (get_local $26)
    )
   )
   (set_local $11
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 80)
     )
     (i32.const 24)
    )
   )
   (set_local $10
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 392)
     )
     (i32.const 8)
    )
   )
   (set_local $9
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 320)
     )
     (i32.const 41)
    )
   )
   (set_local $7
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 128)
     )
     (i32.const 24)
    )
   )
   (set_local $6
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 80)
     )
     (i32.const 16)
    )
   )
   (set_local $5
    (i32.or
     (i32.add
      (get_local $29)
      (i32.const 80)
     )
     (i32.const 8)
    )
   )
   (set_local $4
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 16)
     )
     (i32.const 8)
    )
   )
   (set_local $18
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 320)
     )
     (i32.const 32)
    )
   )
   (set_local $19
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 320)
     )
     (i32.const 36)
    )
   )
   (set_local $22
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 80)
     )
     (i32.const 12)
    )
   )
   (set_local $23
    (i32.add
     (i32.add
      (get_local $29)
      (i32.const 80)
     )
     (i32.const 20)
    )
   )
   (loop $label$16
    (i64.store offset=120
     (get_local $29)
     (i64.load offset=32
      (get_local $28)
     )
    )
    (block $label$17
     (block $label$18
      (block $label$19
       (block $label$20
        (block $label$21
         (block $label$22
          (block $label$23
           (block $label$24
            (block $label$25
             (block $label$26
              (block $label$27
               (block $label$28
                (br_if $label$28
                 (i32.ne
                  (i32.load8_u offset=28
                   (get_local $28)
                  )
                  (i32.load8_u offset=191
                   (get_local $29)
                  )
                 )
                )
                (call $prints
                 (i32.const 2032)
                )
                (i64.store
                 (i32.add
                  (i32.add
                   (get_local $29)
                   (i32.const 320)
                  )
                  (i32.const 16)
                 )
                 (i64.const -1)
                )
                (i64.store
                 (tee_local $13
                  (i32.add
                   (i32.add
                    (get_local $29)
                    (i32.const 320)
                   )
                   (i32.const 24)
                  )
                 )
                 (i64.const 0)
                )
                (set_local $28
                 (i32.const 0)
                )
                (i32.store
                 (get_local $18)
                 (i32.const 0)
                )
                (i64.store
                 (i32.add
                  (i32.add
                   (get_local $29)
                   (i32.const 320)
                  )
                  (i32.const 8)
                 )
                 (tee_local $15
                  (i64.load
                   (get_local $0)
                  )
                 )
                )
                (i64.store offset=320
                 (get_local $29)
                 (get_local $15)
                )
                (i32.store16
                 (get_local $19)
                 (i32.const 0)
                )
                (set_local $12
                 (i32.load
                  (get_local $26)
                 )
                )
                (i32.store offset=64
                 (get_local $29)
                 (i32.add
                  (get_local $29)
                  (i32.const 320)
                 )
                )
                (call $_ZNK5eosio11multi_indexILy4453191243736408576EN12eparticlectr10brainpowerEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy12481914933501493248ENS6_IS2_yXadL_ZNKS2_9get_powerEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
                 (i32.add
                  (get_local $29)
                  (i32.const 80)
                 )
                 (i32.add
                  (get_local $29)
                  (i32.const 64)
                 )
                 (tee_local $12
                  (i32.add
                   (get_local $12)
                   (i32.const 40)
                  )
                 )
                )
                (block $label$29
                 (br_if $label$29
                  (i32.eqz
                   (tee_local $14
                    (i32.load offset=84
                     (get_local $29)
                    )
                   )
                  )
                 )
                 (br_if $label$29
                  (i64.ne
                   (i64.load
                    (get_local $12)
                   )
                   (i64.load
                    (get_local $14)
                   )
                  )
                 )
                 (set_local $28
                  (i32.load offset=84
                   (get_local $29)
                  )
                 )
                )
                (call $eosio_assert
                 (i32.ne
                  (get_local $28)
                  (i32.const 0)
                 )
                 (i32.const 448)
                )
                (call $eosio_assert
                 (i32.eq
                  (i32.load offset=24
                   (get_local $28)
                  )
                  (tee_local $14
                   (i32.load offset=64
                    (get_local $29)
                   )
                  )
                 )
                 (i32.const 496)
                )
                (call $eosio_assert
                 (i64.eq
                  (i64.load
                   (get_local $14)
                  )
                  (call $current_receiver)
                 )
                 (i32.const 544)
                )
                (i64.store
                 (get_local $4)
                 (i64.load
                  (tee_local $12
                   (i32.add
                    (get_local $28)
                    (i32.const 16)
                   )
                  )
                 )
                )
                (i64.store offset=16
                 (get_local $29)
                 (i64.load
                  (get_local $28)
                 )
                )
                (set_local $15
                 (i64.load offset=8
                  (get_local $28)
                 )
                )
                (call $eosio_assert
                 (i64.ne
                  (tee_local $2
                   (i64.load offset=120
                    (get_local $29)
                   )
                  )
                  (i64.const 0)
                 )
                 (i32.const 2064)
                )
                (call $eosio_assert
                 (i32.and
                  (i64.gt_u
                   (tee_local $20
                    (i64.add
                     (get_local $2)
                     (tee_local $17
                      (i64.load
                       (get_local $12)
                      )
                     )
                    )
                   )
                   (get_local $2)
                  )
                  (i64.gt_u
                   (get_local $20)
                   (get_local $17)
                  )
                 )
                 (i32.const 2128)
                )
                (i64.store
                 (get_local $12)
                 (tee_local $2
                  (i64.add
                   (get_local $2)
                   (i64.load
                    (get_local $12)
                   )
                  )
                 )
                )
                (call $prints
                 (i32.const 2160)
                )
                (call $printn
                 (get_local $2)
                )
                (call $eosio_assert
                 (i64.eq
                  (get_local $15)
                  (i64.load offset=8
                   (get_local $28)
                  )
                 )
                 (i32.const 704)
                )
                (call $eosio_assert
                 (i32.const 1)
                 (i32.const 400)
                )
                (drop
                 (call $memcpy
                  (i32.add
                   (get_local $29)
                   (i32.const 80)
                  )
                  (get_local $28)
                  (i32.const 8)
                 )
                )
                (call $eosio_assert
                 (i32.const 1)
                 (i32.const 400)
                )
                (drop
                 (call $memcpy
                  (get_local $5)
                  (i32.add
                   (get_local $28)
                   (i32.const 8)
                  )
                  (i32.const 8)
                 )
                )
                (call $eosio_assert
                 (i32.const 1)
                 (i32.const 400)
                )
                (drop
                 (call $memcpy
                  (get_local $6)
                  (get_local $12)
                  (i32.const 8)
                 )
                )
                (call $db_update_i64
                 (i32.load offset=28
                  (get_local $28)
                 )
                 (i64.const 0)
                 (i32.add
                  (get_local $29)
                  (i32.const 80)
                 )
                 (i32.const 24)
                )
                (block $label$30
                 (br_if $label$30
                  (i64.lt_u
                   (get_local $15)
                   (i64.load offset=16
                    (get_local $14)
                   )
                  )
                 )
                 (i64.store
                  (i32.add
                   (get_local $14)
                   (i32.const 16)
                  )
                  (select
                   (i64.const -2)
                   (i64.add
                    (get_local $15)
                    (i64.const 1)
                   )
                   (i64.gt_u
                    (get_local $15)
                    (i64.const -3)
                   )
                  )
                 )
                )
                (i64.store offset=392
                 (get_local $29)
                 (i64.load
                  (get_local $28)
                 )
                )
                (block $label$31
                 (br_if $label$31
                  (i32.eqz
                   (call $memcmp
                    (i32.add
                     (get_local $29)
                     (i32.const 16)
                    )
                    (i32.add
                     (get_local $29)
                     (i32.const 392)
                    )
                    (i32.const 8)
                   )
                  )
                 )
                 (block $label$32
                  (br_if $label$32
                   (i32.gt_s
                    (tee_local $24
                     (i32.load
                      (tee_local $21
                       (i32.add
                        (get_local $28)
                        (i32.const 32)
                       )
                      )
                     )
                    )
                    (i32.const -1)
                   )
                  )
                  (i32.store
                   (get_local $21)
                   (tee_local $24
                    (call $db_idx64_find_primary
                     (i64.load
                      (get_local $14)
                     )
                     (i64.load offset=8
                      (get_local $14)
                     )
                     (i64.const 4453191243736408576)
                     (i32.add
                      (get_local $29)
                      (i32.const 376)
                     )
                     (get_local $15)
                    )
                   )
                  )
                 )
                 (call $db_idx64_update
                  (get_local $24)
                  (i64.const 0)
                  (i32.add
                   (get_local $29)
                   (i32.const 392)
                  )
                 )
                )
                (i64.store offset=392
                 (get_local $29)
                 (i64.load
                  (get_local $12)
                 )
                )
                (block $label$33
                 (br_if $label$33
                  (i32.eqz
                   (call $memcmp
                    (get_local $4)
                    (i32.add
                     (get_local $29)
                     (i32.const 392)
                    )
                    (i32.const 8)
                   )
                  )
                 )
                 (block $label$34
                  (br_if $label$34
                   (i32.gt_s
                    (tee_local $28
                     (i32.load
                      (tee_local $12
                       (i32.add
                        (get_local $28)
                        (i32.const 36)
                       )
                      )
                     )
                    )
                    (i32.const -1)
                   )
                  )
                  (i32.store
                   (get_local $12)
                   (tee_local $28
                    (call $db_idx64_find_primary
                     (i64.load
                      (get_local $14)
                     )
                     (i64.load offset=8
                      (get_local $14)
                     )
                     (i64.const 4453191243736408577)
                     (i32.add
                      (get_local $29)
                      (i32.const 376)
                     )
                     (get_local $15)
                    )
                   )
                  )
                 )
                 (call $db_idx64_update
                  (get_local $28)
                  (i64.const 0)
                  (i32.add
                   (get_local $29)
                   (i32.const 392)
                  )
                 )
                )
                (set_local $15
                 (i64.load
                  (get_local $0)
                 )
                )
                (i32.store
                 (i32.add
                  (i32.add
                   (get_local $29)
                   (i32.const 80)
                  )
                  (i32.const 8)
                 )
                 (get_local $0)
                )
                (i32.store
                 (get_local $22)
                 (i32.add
                  (get_local $29)
                  (i32.const 120)
                 )
                )
                (i32.store
                 (get_local $6)
                 (i32.add
                  (get_local $29)
                  (i32.const 312)
                 )
                )
                (i32.store
                 (get_local $23)
                 (i32.add
                  (get_local $29)
                  (i32.const 180)
                 )
                )
                (i32.store
                 (get_local $11)
                 (i32.add
                  (get_local $29)
                  (i32.const 191)
                 )
                )
                (i32.store offset=84
                 (get_local $29)
                 (i32.add
                  (get_local $29)
                  (i32.const 208)
                 )
                )
                (i32.store offset=80
                 (get_local $29)
                 (i32.add
                  (get_local $29)
                  (i32.const 128)
                 )
                )
                (i32.store
                 (i32.add
                  (i32.add
                   (get_local $29)
                   (i32.const 80)
                  )
                  (i32.const 28)
                 )
                 (i32.add
                  (get_local $29)
                  (i32.const 184)
                 )
                )
                (i64.store offset=392
                 (get_local $29)
                 (get_local $15)
                )
                (call $eosio_assert
                 (i64.eq
                  (i64.load offset=128
                   (get_local $29)
                  )
                  (call $current_receiver)
                 )
                 (i32.const 1264)
                )
                (i32.store
                 (get_local $4)
                 (i32.add
                  (get_local $29)
                  (i32.const 392)
                 )
                )
                (i32.store offset=20
                 (get_local $29)
                 (i32.add
                  (get_local $29)
                  (i32.const 80)
                 )
                )
                (i32.store offset=16
                 (get_local $29)
                 (i32.add
                  (get_local $29)
                  (i32.const 128)
                 )
                )
                (i32.store offset=48
                 (tee_local $28
                  (call $_Znwj
                   (i32.const 80)
                  )
                 )
                 (i32.const 0)
                )
                (i32.store offset=52
                 (get_local $28)
                 (i32.add
                  (get_local $29)
                  (i32.const 128)
                 )
                )
                (call $_ZZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_15EENSF_14const_iteratorEyOT_ENKUlRSJ_E_clINSF_4itemEEEDaSL_
                 (i32.add
                  (get_local $29)
                  (i32.const 16)
                 )
                 (get_local $28)
                )
                (i32.store offset=376
                 (get_local $29)
                 (get_local $28)
                )
                (i64.store offset=16
                 (get_local $29)
                 (tee_local $15
                  (i64.load
                   (get_local $28)
                  )
                 )
                )
                (i32.store offset=408
                 (get_local $29)
                 (tee_local $14
                  (i32.load offset=56
                   (get_local $28)
                  )
                 )
                )
                (br_if $label$27
                 (i32.ge_u
                  (tee_local $12
                   (i32.load
                    (tee_local $24
                     (i32.add
                      (i32.add
                       (get_local $29)
                       (i32.const 128)
                      )
                      (i32.const 28)
                     )
                    )
                   )
                  )
                  (i32.load
                   (get_local $16)
                  )
                 )
                )
                (i64.store offset=8
                 (get_local $12)
                 (get_local $15)
                )
                (i32.store offset=16
                 (get_local $12)
                 (get_local $14)
                )
                (i32.store offset=376
                 (get_local $29)
                 (i32.const 0)
                )
                (i32.store
                 (get_local $12)
                 (get_local $28)
                )
                (i32.store
                 (get_local $24)
                 (i32.add
                  (get_local $12)
                  (i32.const 24)
                 )
                )
                (br $label$26)
               )
               (call $prints
                (i32.const 1968)
               )
               (set_local $2
                (i64.load offset=32
                 (i32.load
                  (get_local $26)
                 )
                )
               )
               (call $prints
                (i32.const 2000)
               )
               (i64.store
                (get_local $6)
                (i64.const -1)
               )
               (i64.store
                (get_local $11)
                (i64.const 0)
               )
               (i32.store
                (tee_local $24
                 (i32.add
                  (i32.add
                   (get_local $29)
                   (i32.const 80)
                  )
                  (i32.const 32)
                 )
                )
                (i32.const 0)
               )
               (i64.store
                (i32.add
                 (i32.add
                  (get_local $29)
                  (i32.const 80)
                 )
                 (i32.const 8)
                )
                (tee_local $15
                 (i64.load
                  (get_local $0)
                 )
                )
               )
               (i64.store offset=80
                (get_local $29)
                (get_local $15)
               )
               (i32.store16
                (i32.add
                 (i32.add
                  (get_local $29)
                  (i32.const 80)
                 )
                 (i32.const 36)
                )
                (i32.const 0)
               )
               (i32.store offset=72
                (get_local $29)
                (i32.add
                 (get_local $29)
                 (i32.const 80)
                )
               )
               (call $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
                (i32.add
                 (get_local $29)
                 (i32.const 320)
                )
                (i32.add
                 (get_local $29)
                 (i32.const 72)
                )
                (tee_local $28
                 (i32.add
                  (i32.load
                   (get_local $26)
                  )
                  (i32.const 40)
                 )
                )
               )
               (br_if $label$25
                (i32.eqz
                 (tee_local $12
                  (i32.load offset=324
                   (get_local $29)
                  )
                 )
                )
               )
               (br_if $label$24
                (i64.ne
                 (i64.load
                  (get_local $28)
                 )
                 (i64.load offset=8
                  (get_local $12)
                 )
                )
               )
               (i64.store offset=64
                (get_local $29)
                (tee_local $15
                 (i64.load offset=320
                  (get_local $29)
                 )
                )
               )
               (set_local $28
                (i32.wrap/i64
                 (i64.shr_u
                  (get_local $15)
                  (i64.const 32)
                 )
                )
               )
               (br $label$23)
              )
              (call $_ZNSt3__16vectorIN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEENS5_ILy4587895157746319360ENS8_IS4_yXadL_ZNKS4_12get_proposalEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_
               (get_local $7)
               (i32.add
                (get_local $29)
                (i32.const 376)
               )
               (i32.add
                (get_local $29)
                (i32.const 16)
               )
               (i32.add
                (get_local $29)
                (i32.const 408)
               )
              )
             )
             (set_local $28
              (i32.load offset=376
               (get_local $29)
              )
             )
             (i32.store offset=376
              (get_local $29)
              (i32.const 0)
             )
             (block $label$35
              (br_if $label$35
               (i32.eqz
                (get_local $28)
               )
              )
              (call $_ZdlPv
               (get_local $28)
              )
             )
             (br_if $label$17
              (i32.eqz
               (tee_local $14
                (i32.load
                 (get_local $13)
                )
               )
              )
             )
             (br_if $label$22
              (i32.eq
               (tee_local $28
                (i32.load
                 (tee_local $24
                  (i32.add
                   (i32.add
                    (get_local $29)
                    (i32.const 320)
                   )
                   (i32.const 28)
                  )
                 )
                )
               )
               (get_local $14)
              )
             )
             (loop $label$36
              (set_local $12
               (i32.load
                (tee_local $28
                 (i32.add
                  (get_local $28)
                  (i32.const -24)
                 )
                )
               )
              )
              (i32.store
               (get_local $28)
               (i32.const 0)
              )
              (block $label$37
               (br_if $label$37
                (i32.eqz
                 (get_local $12)
                )
               )
               (call $_ZdlPv
                (get_local $12)
               )
              )
              (br_if $label$36
               (i32.ne
                (get_local $14)
                (get_local $28)
               )
              )
             )
             (set_local $28
              (i32.load
               (get_local $13)
              )
             )
             (br $label$21)
            )
            (set_local $28
             (i32.const 0)
            )
            (i32.store offset=68
             (get_local $29)
             (i32.const 0)
            )
            (i32.store offset=64
             (get_local $29)
             (i32.add
              (get_local $29)
              (i32.const 72)
             )
            )
            (br $label$23)
           )
           (set_local $28
            (i32.const 0)
           )
           (i32.store offset=68
            (get_local $29)
            (i32.const 0)
           )
           (i32.store offset=64
            (get_local $29)
            (i32.add
             (get_local $29)
             (i32.const 72)
            )
           )
          )
          (br_if $label$18
           (i64.ne
            (i64.load offset=8
             (get_local $28)
            )
            (i64.load offset=40
             (i32.load
              (get_local $26)
             )
            )
           )
          )
          (block $label$38
           (loop $label$39
            (br_if $label$38
             (i64.lt_u
              (i64.load offset=24
               (get_local $28)
              )
              (get_local $2)
             )
            )
            (call $eosio_assert
             (i32.ne
              (get_local $28)
              (i32.const 0)
             )
             (i32.const 448)
            )
            (call $eosio_assert
             (i32.eq
              (i32.load offset=44
               (get_local $28)
              )
              (tee_local $12
               (i32.load offset=72
                (get_local $29)
               )
              )
             )
             (i32.const 496)
            )
            (call $eosio_assert
             (i64.eq
              (i64.load
               (get_local $12)
              )
              (call $current_receiver)
             )
             (i32.const 544)
            )
            (i64.store
             (get_local $10)
             (i64.load
              (tee_local $14
               (i32.add
                (get_local $28)
                (i32.const 16)
               )
              )
             )
            )
            (i64.store offset=392
             (get_local $29)
             (i64.load
              (tee_local $13
               (i32.add
                (get_local $28)
                (i32.const 8)
               )
              )
             )
            )
            (set_local $15
             (i64.load
              (get_local $28)
             )
            )
            (i32.store offset=36
             (get_local $28)
             (i32.trunc_u/f32
              (f32.add
               (get_local $8)
               (f32.convert_u/i32
                (i32.load offset=36
                 (get_local $28)
                )
               )
              )
             )
            )
            (i32.store offset=32
             (get_local $28)
             (i32.load offset=180
              (get_local $29)
             )
            )
            (set_local $17
             (i64.load offset=24
              (i32.load offset=68
               (get_local $29)
              )
             )
            )
            (call $eosio_assert
             (i32.const 1)
             (i32.const 704)
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 376)
              )
              (i32.const 8)
             )
             (get_local $9)
            )
            (i32.store offset=380
             (get_local $29)
             (i32.add
              (get_local $29)
              (i32.const 320)
             )
            )
            (i32.store offset=376
             (get_local $29)
             (i32.add
              (get_local $29)
              (i32.const 320)
             )
            )
            (i32.store offset=408
             (get_local $29)
             (i32.add
              (get_local $29)
              (i32.const 376)
             )
            )
            (i32.store
             (get_local $4)
             (get_local $14)
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
              (i32.const 12)
             )
             (i32.add
              (get_local $28)
              (i32.const 24)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
              (i32.const 16)
             )
             (i32.add
              (get_local $28)
              (i32.const 32)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
              (i32.const 20)
             )
             (i32.add
              (get_local $28)
              (i32.const 36)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
              (i32.const 24)
             )
             (i32.add
              (get_local $28)
              (i32.const 40)
             )
            )
            (i32.store offset=20
             (get_local $29)
             (get_local $13)
            )
            (i32.store offset=16
             (get_local $29)
             (get_local $28)
            )
            (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS8_RKbEEEZN5eosiolsINSC_10datastreamIPcEEN12eparticlectr5stakeELPv0EEERT_SL_RKT0_EUlRKSK_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENST_17integral_constantIbLb0EEE
             (i32.add
              (get_local $29)
              (i32.const 16)
             )
             (i32.add
              (get_local $29)
              (i32.const 408)
             )
            )
            (call $db_update_i64
             (i32.load offset=48
              (get_local $28)
             )
             (i64.const 0)
             (i32.add
              (get_local $29)
              (i32.const 320)
             )
             (i32.const 41)
            )
            (block $label$40
             (br_if $label$40
              (i64.lt_u
               (get_local $15)
               (i64.load offset=16
                (get_local $12)
               )
              )
             )
             (i64.store
              (i32.add
               (get_local $12)
               (i32.const 16)
              )
              (select
               (i64.const -2)
               (i64.add
                (get_local $15)
                (i64.const 1)
               )
               (i64.gt_u
                (get_local $15)
                (i64.const -3)
               )
              )
             )
            )
            (i64.store offset=16
             (get_local $29)
             (i64.load
              (get_local $13)
             )
            )
            (block $label$41
             (br_if $label$41
              (i32.eqz
               (call $memcmp
                (i32.add
                 (get_local $29)
                 (i32.const 392)
                )
                (i32.add
                 (get_local $29)
                 (i32.const 16)
                )
                (i32.const 8)
               )
              )
             )
             (block $label$42
              (br_if $label$42
               (i32.gt_s
                (tee_local $13
                 (i32.load offset=52
                  (get_local $28)
                 )
                )
                (i32.const -1)
               )
              )
              (i32.store
               (i32.add
                (get_local $28)
                (i32.const 52)
               )
               (tee_local $13
                (call $db_idx64_find_primary
                 (i64.load
                  (get_local $12)
                 )
                 (i64.load offset=8
                  (get_local $12)
                 )
                 (i64.const -4157660949894922240)
                 (i32.add
                  (get_local $29)
                  (i32.const 408)
                 )
                 (get_local $15)
                )
               )
              )
             )
             (call $db_idx64_update
              (get_local $13)
              (i64.const 0)
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
             )
            )
            (i64.store offset=16
             (get_local $29)
             (i64.load
              (get_local $14)
             )
            )
            (block $label$43
             (br_if $label$43
              (i32.eqz
               (call $memcmp
                (get_local $10)
                (i32.add
                 (get_local $29)
                 (i32.const 16)
                )
                (i32.const 8)
               )
              )
             )
             (block $label$44
              (br_if $label$44
               (i32.gt_s
                (tee_local $28
                 (i32.load
                  (tee_local $14
                   (i32.add
                    (get_local $28)
                    (i32.const 56)
                   )
                  )
                 )
                )
                (i32.const -1)
               )
              )
              (i32.store
               (get_local $14)
               (tee_local $28
                (call $db_idx64_find_primary
                 (i64.load
                  (get_local $12)
                 )
                 (i64.load offset=8
                  (get_local $12)
                 )
                 (i64.const -4157660949894922239)
                 (i32.add
                  (get_local $29)
                  (i32.const 408)
                 )
                 (get_local $15)
                )
               )
              )
             )
             (call $db_idx64_update
              (get_local $28)
              (i64.const 0)
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
             )
            )
            (set_local $15
             (i64.load
              (get_local $0)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 320)
              )
              (i32.const 8)
             )
             (get_local $0)
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 320)
              )
              (i32.const 12)
             )
             (i32.add
              (get_local $29)
              (i32.const 120)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 320)
              )
              (i32.const 16)
             )
             (i32.add
              (get_local $29)
              (i32.const 312)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 320)
              )
              (i32.const 20)
             )
             (i32.add
              (get_local $29)
              (i32.const 180)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 320)
              )
              (i32.const 24)
             )
             (i32.add
              (get_local $29)
              (i32.const 191)
             )
            )
            (i32.store offset=324
             (get_local $29)
             (i32.add
              (get_local $29)
              (i32.const 208)
             )
            )
            (i32.store offset=320
             (get_local $29)
             (i32.add
              (get_local $29)
              (i32.const 128)
             )
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $29)
               (i32.const 320)
              )
              (i32.const 28)
             )
             (i32.add
              (get_local $29)
              (i32.const 184)
             )
            )
            (i64.store offset=392
             (get_local $29)
             (get_local $15)
            )
            (call $eosio_assert
             (i64.eq
              (i64.load offset=128
               (get_local $29)
              )
              (call $current_receiver)
             )
             (i32.const 1264)
            )
            (i32.store
             (get_local $4)
             (i32.add
              (get_local $29)
              (i32.const 392)
             )
            )
            (i32.store offset=20
             (get_local $29)
             (i32.add
              (get_local $29)
              (i32.const 320)
             )
            )
            (i32.store offset=16
             (get_local $29)
             (i32.add
              (get_local $29)
              (i32.const 128)
             )
            )
            (i32.store offset=48
             (tee_local $28
              (call $_Znwj
               (i32.const 80)
              )
             )
             (i32.const 0)
            )
            (i32.store offset=52
             (get_local $28)
             (i32.add
              (get_local $29)
              (i32.const 128)
             )
            )
            (call $_ZZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_13EENSF_14const_iteratorEyOT_ENKUlRSJ_E_clINSF_4itemEEEDaSL_
             (i32.add
              (get_local $29)
              (i32.const 16)
             )
             (get_local $28)
            )
            (i32.store offset=376
             (get_local $29)
             (get_local $28)
            )
            (i64.store offset=16
             (get_local $29)
             (tee_local $15
              (i64.load
               (get_local $28)
              )
             )
            )
            (i32.store offset=408
             (get_local $29)
             (tee_local $14
              (i32.load offset=56
               (get_local $28)
              )
             )
            )
            (block $label$45
             (block $label$46
              (br_if $label$46
               (i32.ge_u
                (tee_local $12
                 (i32.load
                  (tee_local $13
                   (i32.add
                    (i32.add
                     (get_local $29)
                     (i32.const 128)
                    )
                    (i32.const 28)
                   )
                  )
                 )
                )
                (i32.load
                 (get_local $16)
                )
               )
              )
              (i64.store offset=8
               (get_local $12)
               (get_local $15)
              )
              (i32.store offset=16
               (get_local $12)
               (get_local $14)
              )
              (i32.store offset=376
               (get_local $29)
               (i32.const 0)
              )
              (i32.store
               (get_local $12)
               (get_local $28)
              )
              (i32.store
               (get_local $13)
               (i32.add
                (get_local $12)
                (i32.const 24)
               )
              )
              (br $label$45)
             )
             (call $_ZNSt3__16vectorIN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEENS5_ILy4587895157746319360ENS8_IS4_yXadL_ZNKS4_12get_proposalEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_
              (get_local $7)
              (i32.add
               (get_local $29)
               (i32.const 376)
              )
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
              (i32.add
               (get_local $29)
               (i32.const 408)
              )
             )
            )
            (set_local $28
             (i32.load offset=376
              (get_local $29)
             )
            )
            (i32.store offset=376
             (get_local $29)
             (i32.const 0)
            )
            (block $label$47
             (br_if $label$47
              (i32.eqz
               (get_local $28)
              )
             )
             (call $_ZdlPv
              (get_local $28)
             )
            )
            (set_local $2
             (i64.sub
              (get_local $2)
              (get_local $17)
             )
            )
            (drop
             (call $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE14const_iteratorppEv
              (i32.add
               (get_local $29)
               (i32.const 64)
              )
             )
            )
            (br_if $label$39
             (i64.eq
              (i64.load offset=8
               (tee_local $28
                (i32.load offset=68
                 (get_local $29)
                )
               )
              )
              (i64.load offset=40
               (i32.load
                (get_local $26)
               )
              )
             )
            )
            (br $label$18)
           )
          )
          (i64.store offset=56
           (get_local $29)
           (i64.sub
            (i64.load offset=24
             (get_local $28)
            )
            (get_local $2)
           )
          )
          (i32.store offset=52
           (get_local $29)
           (i32.load offset=32
            (get_local $28)
           )
          )
          (i32.store offset=48
           (get_local $29)
           (i32.load offset=36
            (get_local $28)
           )
          )
          (call $eosio_assert
           (i32.ne
            (get_local $28)
            (i32.const 0)
           )
           (i32.const 448)
          )
          (call $eosio_assert
           (i32.eq
            (i32.load offset=44
             (get_local $28)
            )
            (tee_local $12
             (i32.load offset=72
              (get_local $29)
             )
            )
           )
           (i32.const 496)
          )
          (call $eosio_assert
           (i64.eq
            (i64.load
             (get_local $12)
            )
            (call $current_receiver)
           )
           (i32.const 544)
          )
          (i64.store
           (get_local $10)
           (i64.load
            (tee_local $14
             (i32.add
              (get_local $28)
              (i32.const 16)
             )
            )
           )
          )
          (i32.store offset=36
           (get_local $28)
           (i32.trunc_u/f32
            (f32.add
             (get_local $8)
             (f32.convert_u/i32
              (i32.load offset=36
               (get_local $28)
              )
             )
            )
           )
          )
          (i64.store offset=392
           (get_local $29)
           (i64.load
            (tee_local $13
             (i32.add
              (get_local $28)
              (i32.const 8)
             )
            )
           )
          )
          (set_local $15
           (i64.load
            (get_local $28)
           )
          )
          (i64.store offset=24
           (get_local $28)
           (get_local $2)
          )
          (call $eosio_assert
           (i32.const 1)
           (i32.const 704)
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 376)
            )
            (i32.const 8)
           )
           (get_local $9)
          )
          (i32.store offset=380
           (get_local $29)
           (i32.add
            (get_local $29)
            (i32.const 320)
           )
          )
          (i32.store offset=376
           (get_local $29)
           (i32.add
            (get_local $29)
            (i32.const 320)
           )
          )
          (i32.store offset=408
           (get_local $29)
           (i32.add
            (get_local $29)
            (i32.const 376)
           )
          )
          (i32.store
           (get_local $4)
           (get_local $14)
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 16)
            )
            (i32.const 12)
           )
           (i32.add
            (get_local $28)
            (i32.const 24)
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 16)
            )
            (i32.const 16)
           )
           (i32.add
            (get_local $28)
            (i32.const 32)
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 16)
            )
            (i32.const 20)
           )
           (i32.add
            (get_local $28)
            (i32.const 36)
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 16)
            )
            (i32.const 24)
           )
           (i32.add
            (get_local $28)
            (i32.const 40)
           )
          )
          (i32.store offset=20
           (get_local $29)
           (get_local $13)
          )
          (i32.store offset=16
           (get_local $29)
           (get_local $28)
          )
          (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS8_RKbEEEZN5eosiolsINSC_10datastreamIPcEEN12eparticlectr5stakeELPv0EEERT_SL_RKT0_EUlRKSK_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENST_17integral_constantIbLb0EEE
           (i32.add
            (get_local $29)
            (i32.const 16)
           )
           (i32.add
            (get_local $29)
            (i32.const 408)
           )
          )
          (call $db_update_i64
           (i32.load offset=48
            (get_local $28)
           )
           (i64.const 0)
           (i32.add
            (get_local $29)
            (i32.const 320)
           )
           (i32.const 41)
          )
          (block $label$48
           (br_if $label$48
            (i64.lt_u
             (get_local $15)
             (i64.load offset=16
              (get_local $12)
             )
            )
           )
           (i64.store
            (i32.add
             (get_local $12)
             (i32.const 16)
            )
            (select
             (i64.const -2)
             (i64.add
              (get_local $15)
              (i64.const 1)
             )
             (i64.gt_u
              (get_local $15)
              (i64.const -3)
             )
            )
           )
          )
          (i64.store offset=16
           (get_local $29)
           (i64.load
            (get_local $13)
           )
          )
          (block $label$49
           (br_if $label$49
            (i32.eqz
             (call $memcmp
              (i32.add
               (get_local $29)
               (i32.const 392)
              )
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
              (i32.const 8)
             )
            )
           )
           (block $label$50
            (br_if $label$50
             (i32.gt_s
              (tee_local $13
               (i32.load offset=52
                (get_local $28)
               )
              )
              (i32.const -1)
             )
            )
            (i32.store
             (i32.add
              (get_local $28)
              (i32.const 52)
             )
             (tee_local $13
              (call $db_idx64_find_primary
               (i64.load
                (get_local $12)
               )
               (i64.load offset=8
                (get_local $12)
               )
               (i64.const -4157660949894922240)
               (i32.add
                (get_local $29)
                (i32.const 408)
               )
               (get_local $15)
              )
             )
            )
           )
           (call $db_idx64_update
            (get_local $13)
            (i64.const 0)
            (i32.add
             (get_local $29)
             (i32.const 16)
            )
           )
          )
          (i64.store offset=16
           (get_local $29)
           (i64.load
            (get_local $14)
           )
          )
          (block $label$51
           (br_if $label$51
            (i32.eqz
             (call $memcmp
              (get_local $10)
              (i32.add
               (get_local $29)
               (i32.const 16)
              )
              (i32.const 8)
             )
            )
           )
           (block $label$52
            (br_if $label$52
             (i32.gt_s
              (tee_local $28
               (i32.load
                (tee_local $14
                 (i32.add
                  (get_local $28)
                  (i32.const 56)
                 )
                )
               )
              )
              (i32.const -1)
             )
            )
            (i32.store
             (get_local $14)
             (tee_local $28
              (call $db_idx64_find_primary
               (i64.load
                (get_local $12)
               )
               (i64.load offset=8
                (get_local $12)
               )
               (i64.const -4157660949894922239)
               (i32.add
                (get_local $29)
                (i32.const 408)
               )
               (get_local $15)
              )
             )
            )
           )
           (call $db_idx64_update
            (get_local $28)
            (i64.const 0)
            (i32.add
             (get_local $29)
             (i32.const 16)
            )
           )
          )
          (set_local $15
           (i64.load offset=40
            (i32.load
             (get_local $26)
            )
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 320)
            )
            (i32.const 8)
           )
           (get_local $0)
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 320)
            )
            (i32.const 12)
           )
           (i32.add
            (get_local $29)
            (i32.const 56)
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 320)
            )
            (i32.const 16)
           )
           (i32.add
            (get_local $29)
            (i32.const 52)
           )
          )
          (i32.store
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 320)
            )
            (i32.const 20)
           )
           (i32.add
            (get_local $29)
            (i32.const 48)
           )
          )
          (i32.store offset=324
           (get_local $29)
           (i32.add
            (get_local $29)
            (i32.const 208)
           )
          )
          (i32.store offset=320
           (get_local $29)
           (i32.add
            (get_local $29)
            (i32.const 80)
           )
          )
          (i64.store offset=392
           (get_local $29)
           (get_local $15)
          )
          (call $eosio_assert
           (i64.eq
            (i64.load offset=80
             (get_local $29)
            )
            (call $current_receiver)
           )
           (i32.const 1264)
          )
          (i32.store
           (get_local $4)
           (i32.add
            (get_local $29)
            (i32.const 392)
           )
          )
          (i32.store offset=20
           (get_local $29)
           (i32.add
            (get_local $29)
            (i32.const 320)
           )
          )
          (i32.store offset=16
           (get_local $29)
           (i32.add
            (get_local $29)
            (i32.const 80)
           )
          )
          (i32.store8 offset=40
           (tee_local $28
            (call $_Znwj
             (i32.const 64)
            )
           )
           (i32.const 0)
          )
          (i32.store offset=44
           (get_local $28)
           (i32.add
            (get_local $29)
            (i32.const 80)
           )
          )
          (call $_ZZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_12EENSB_14const_iteratorEyOT_ENKUlRSF_E_clINSB_4itemEEEDaSH_
           (i32.add
            (get_local $29)
            (i32.const 16)
           )
           (get_local $28)
          )
          (i32.store offset=376
           (get_local $29)
           (get_local $28)
          )
          (i64.store offset=16
           (get_local $29)
           (tee_local $15
            (i64.load
             (get_local $28)
            )
           )
          )
          (i32.store offset=408
           (get_local $29)
           (tee_local $14
            (i32.load offset=48
             (get_local $28)
            )
           )
          )
          (br_if $label$20
           (i32.ge_u
            (tee_local $12
             (i32.load
              (tee_local $13
               (i32.add
                (i32.add
                 (get_local $29)
                 (i32.const 80)
                )
                (i32.const 28)
               )
              )
             )
            )
            (i32.load
             (get_local $24)
            )
           )
          )
          (i64.store offset=8
           (get_local $12)
           (get_local $15)
          )
          (i32.store offset=16
           (get_local $12)
           (get_local $14)
          )
          (i32.store offset=376
           (get_local $29)
           (i32.const 0)
          )
          (i32.store
           (get_local $12)
           (get_local $28)
          )
          (i32.store
           (get_local $13)
           (i32.add
            (get_local $12)
            (i32.const 24)
           )
          )
          (br $label$19)
         )
         (set_local $28
          (get_local $14)
         )
        )
        (i32.store
         (get_local $24)
         (get_local $14)
        )
        (call $_ZdlPv
         (get_local $28)
        )
        (br $label$17)
       )
       (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
        (get_local $11)
        (i32.add
         (get_local $29)
         (i32.const 376)
        )
        (i32.add
         (get_local $29)
         (i32.const 16)
        )
        (i32.add
         (get_local $29)
         (i32.const 408)
        )
       )
      )
      (set_local $28
       (i32.load offset=376
        (get_local $29)
       )
      )
      (i32.store offset=376
       (get_local $29)
       (i32.const 0)
      )
      (br_if $label$18
       (i32.eqz
        (get_local $28)
       )
      )
      (call $_ZdlPv
       (get_local $28)
      )
     )
     (br_if $label$17
      (i32.eqz
       (tee_local $14
        (i32.load
         (get_local $11)
        )
       )
      )
     )
     (block $label$53
      (block $label$54
       (br_if $label$54
        (i32.eq
         (tee_local $28
          (i32.load
           (tee_local $13
            (i32.add
             (i32.add
              (get_local $29)
              (i32.const 80)
             )
             (i32.const 28)
            )
           )
          )
         )
         (get_local $14)
        )
       )
       (loop $label$55
        (set_local $12
         (i32.load
          (tee_local $28
           (i32.add
            (get_local $28)
            (i32.const -24)
           )
          )
         )
        )
        (i32.store
         (get_local $28)
         (i32.const 0)
        )
        (block $label$56
         (br_if $label$56
          (i32.eqz
           (get_local $12)
          )
         )
         (call $_ZdlPv
          (get_local $12)
         )
        )
        (br_if $label$55
         (i32.ne
          (get_local $14)
          (get_local $28)
         )
        )
       )
       (set_local $28
        (i32.load
         (get_local $11)
        )
       )
       (br $label$53)
      )
      (set_local $28
       (get_local $14)
      )
     )
     (i32.store
      (get_local $13)
      (get_local $14)
     )
     (call $_ZdlPv
      (get_local $28)
     )
    )
    (drop
     (call $_ZN5eosio11multi_indexILy15938991580757622784EN12eparticlectr4voteEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE14const_iteratorppEv
      (i32.add
       (get_local $29)
       (i32.const 208)
      )
     )
    )
    (br_if $label$16
     (i64.eq
      (i64.load offset=8
       (tee_local $28
        (i32.load
         (get_local $26)
        )
       )
      )
      (i64.load offset=312
       (get_local $29)
      )
     )
    )
   )
  )
  (block $label$57
   (br_if $label$57
    (i32.eqz
     (i32.load8_u offset=191
      (get_local $29)
     )
    )
   )
   (call $prints
    (i32.const 2192)
   )
   (i32.store
    (i32.add
     (get_local $29)
     (i32.const 352)
    )
    (i32.const 0)
   )
   (i64.store offset=336
    (get_local $29)
    (i64.const -1)
   )
   (i64.store offset=344
    (get_local $29)
    (i64.const 0)
   )
   (i64.store offset=320
    (get_local $29)
    (tee_local $15
     (i64.load
      (get_local $0)
     )
    )
   )
   (i64.store offset=328
    (get_local $29)
    (get_local $15)
   )
   (i32.store16 offset=356
    (get_local $29)
    (i32.const 0)
   )
   (i32.store offset=120
    (get_local $29)
    (i32.add
     (get_local $29)
     (i32.const 320)
    )
   )
   (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $29)
     (i32.const 16)
    )
    (i32.add
     (i32.load
      (get_local $25)
     )
     (i32.const 20)
    )
   )
   (call $_ZNK5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
    (i32.add
     (get_local $29)
     (i32.const 392)
    )
    (i32.add
     (get_local $29)
     (i32.const 120)
    )
    (i32.add
     (get_local $29)
     (i32.const 16)
    )
   )
   (block $label$58
    (block $label$59
     (br_if $label$59
      (i32.eqz
       (tee_local $28
        (i32.load offset=396
         (get_local $29)
        )
       )
      )
     )
     (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
      (i32.add
       (get_local $29)
       (i32.const 80)
      )
      (i32.add
       (get_local $28)
       (i32.const 8)
      )
     )
     (br_if $label$59
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load offset=16
           (get_local $29)
          )
          (i64.load offset=80
           (get_local $29)
          )
         )
         (i64.xor
          (i64.load offset=24
           (get_local $29)
          )
          (i64.load offset=88
           (get_local $29)
          )
         )
        )
       )
      )
     )
     (br_if $label$59
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load offset=32
           (get_local $29)
          )
          (i64.load offset=96
           (get_local $29)
          )
         )
         (i64.xor
          (i64.load
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 16)
            )
            (i32.const 24)
           )
          )
          (i64.load
           (i32.add
            (i32.add
             (get_local $29)
             (i32.const 80)
            )
            (i32.const 24)
           )
          )
         )
        )
       )
      )
     )
     (br_if $label$59
      (i32.eqz
       (tee_local $28
        (i32.load offset=396
         (get_local $29)
        )
       )
      )
     )
     (i32.store offset=80
      (get_local $29)
      (i32.add
       (get_local $29)
       (i32.const 264)
      )
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 448)
     )
     (call $_ZN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE6modifyIZNS1_8finalizeEyyE4$_17EEvRKS2_yOT_
      (i32.load offset=120
       (get_local $29)
      )
      (get_local $28)
      (i32.add
       (get_local $29)
       (i32.const 80)
      )
     )
     (br_if $label$58
      (tee_local $14
       (i32.load offset=344
        (get_local $29)
       )
      )
     )
     (br $label$57)
    )
    (set_local $15
     (i64.load
      (get_local $0)
     )
    )
    (i32.store offset=396
     (get_local $29)
     (i32.add
      (get_local $29)
      (i32.const 264)
     )
    )
    (i32.store offset=392
     (get_local $29)
     (i32.add
      (get_local $29)
      (i32.const 320)
     )
    )
    (i64.store offset=16
     (get_local $29)
     (get_local $15)
    )
    (call $eosio_assert
     (i64.eq
      (i64.load offset=320
       (get_local $29)
      )
      (call $current_receiver)
     )
     (i32.const 1264)
    )
    (i32.store offset=84
     (get_local $29)
     (i32.add
      (get_local $29)
      (i32.const 392)
     )
    )
    (i32.store offset=80
     (get_local $29)
     (i32.add
      (get_local $29)
      (i32.const 320)
     )
    )
    (i32.store offset=88
     (get_local $29)
     (i32.add
      (get_local $29)
      (i32.const 16)
     )
    )
    (i64.store offset=8 align=4
     (tee_local $28
      (call $_Znwj
       (i32.const 48)
      )
     )
     (i64.const 0)
    )
    (i64.store offset=16 align=4
     (get_local $28)
     (i64.const 0)
    )
    (i64.store offset=24 align=4
     (get_local $28)
     (i64.const 0)
    )
    (i32.store offset=32
     (get_local $28)
     (i32.add
      (get_local $29)
      (i32.const 320)
     )
    )
    (call $_ZZN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_16EENSD_14const_iteratorEyOT_ENKUlRSH_E_clINSD_4itemEEEDaSJ_
     (i32.add
      (get_local $29)
      (i32.const 80)
     )
     (get_local $28)
    )
    (i32.store offset=376
     (get_local $29)
     (get_local $28)
    )
    (i64.store offset=80
     (get_local $29)
     (tee_local $15
      (i64.load
       (get_local $28)
      )
     )
    )
    (i32.store offset=408
     (get_local $29)
     (tee_local $14
      (i32.load offset=36
       (get_local $28)
      )
     )
    )
    (block $label$60
     (block $label$61
      (br_if $label$61
       (i32.ge_u
        (tee_local $12
         (i32.load
          (tee_local $13
           (i32.add
            (get_local $29)
            (i32.const 348)
           )
          )
         )
        )
        (i32.load
         (i32.add
          (get_local $29)
          (i32.const 352)
         )
        )
       )
      )
      (i64.store offset=8
       (get_local $12)
       (get_local $15)
      )
      (i32.store offset=16
       (get_local $12)
       (get_local $14)
      )
      (i32.store offset=376
       (get_local $29)
       (i32.const 0)
      )
      (i32.store
       (get_local $12)
       (get_local $28)
      )
      (i32.store
       (get_local $13)
       (i32.add
        (get_local $12)
        (i32.const 24)
       )
      )
      (br $label$60)
     )
     (call $_ZNSt3__16vectorIN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587220462410924032ENS8_IS4_SA_XadL_ZNKS4_22get_parent_hash_key256EvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_
      (i32.add
       (get_local $29)
       (i32.const 344)
      )
      (i32.add
       (get_local $29)
       (i32.const 376)
      )
      (i32.add
       (get_local $29)
       (i32.const 80)
      )
      (i32.add
       (get_local $29)
       (i32.const 408)
      )
     )
    )
    (set_local $28
     (i32.load offset=376
      (get_local $29)
     )
    )
    (i32.store offset=376
     (get_local $29)
     (i32.const 0)
    )
    (block $label$62
     (br_if $label$62
      (i32.eqz
       (get_local $28)
      )
     )
     (block $label$63
      (br_if $label$63
       (i32.eqz
        (i32.and
         (i32.load8_u offset=20
          (get_local $28)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $28)
         (i32.const 28)
        )
       )
      )
     )
     (block $label$64
      (br_if $label$64
       (i32.eqz
        (i32.and
         (i32.load8_u offset=8
          (get_local $28)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $28)
         (i32.const 16)
        )
       )
      )
     )
     (call $_ZdlPv
      (get_local $28)
     )
    )
    (br_if $label$57
     (i32.eqz
      (tee_local $14
       (i32.load offset=344
        (get_local $29)
       )
      )
     )
    )
   )
   (block $label$65
    (block $label$66
     (br_if $label$66
      (i32.eq
       (tee_local $12
        (i32.load
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $29)
            (i32.const 320)
           )
           (i32.const 28)
          )
         )
        )
       )
       (get_local $14)
      )
     )
     (loop $label$67
      (set_local $28
       (i32.load
        (tee_local $12
         (i32.add
          (get_local $12)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $12)
       (i32.const 0)
      )
      (block $label$68
       (br_if $label$68
        (i32.eqz
         (get_local $28)
        )
       )
       (block $label$69
        (br_if $label$69
         (i32.eqz
          (i32.and
           (i32.load8_u offset=20
            (get_local $28)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $28)
           (i32.const 28)
          )
         )
        )
       )
       (block $label$70
        (br_if $label$70
         (i32.eqz
          (i32.and
           (i32.load8_u offset=8
            (get_local $28)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $28)
           (i32.const 16)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $28)
       )
      )
      (br_if $label$67
       (i32.ne
        (get_local $14)
        (get_local $12)
       )
      )
     )
     (set_local $28
      (i32.load
       (i32.add
        (get_local $29)
        (i32.const 344)
       )
      )
     )
     (br $label$65)
    )
    (set_local $28
     (get_local $14)
    )
   )
   (i32.store
    (get_local $13)
    (get_local $14)
   )
   (call $_ZdlPv
    (get_local $28)
   )
  )
  (block $label$71
   (br_if $label$71
    (i32.eqz
     (tee_local $14
      (i32.load offset=152
       (get_local $29)
      )
     )
    )
   )
   (block $label$72
    (block $label$73
     (br_if $label$73
      (i32.eq
       (tee_local $28
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $29)
           (i32.const 156)
          )
         )
        )
       )
       (get_local $14)
      )
     )
     (loop $label$74
      (set_local $12
       (i32.load
        (tee_local $28
         (i32.add
          (get_local $28)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $28)
       (i32.const 0)
      )
      (block $label$75
       (br_if $label$75
        (i32.eqz
         (get_local $12)
        )
       )
       (call $_ZdlPv
        (get_local $12)
       )
      )
      (br_if $label$74
       (i32.ne
        (get_local $14)
        (get_local $28)
       )
      )
     )
     (set_local $28
      (i32.load
       (i32.add
        (get_local $29)
        (i32.const 152)
       )
      )
     )
     (br $label$72)
    )
    (set_local $28
     (get_local $14)
    )
   )
   (i32.store
    (get_local $13)
    (get_local $14)
   )
   (call $_ZdlPv
    (get_local $28)
   )
  )
  (block $label$76
   (br_if $label$76
    (i32.eqz
     (tee_local $14
      (i32.load offset=248
       (get_local $29)
      )
     )
    )
   )
   (block $label$77
    (block $label$78
     (br_if $label$78
      (i32.eq
       (tee_local $28
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $29)
           (i32.const 252)
          )
         )
        )
       )
       (get_local $14)
      )
     )
     (loop $label$79
      (set_local $12
       (i32.load
        (tee_local $28
         (i32.add
          (get_local $28)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $28)
       (i32.const 0)
      )
      (block $label$80
       (br_if $label$80
        (i32.eqz
         (get_local $12)
        )
       )
       (block $label$81
        (br_if $label$81
         (i32.eqz
          (i32.and
           (i32.load8_u offset=16
            (get_local $12)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $12)
           (i32.const 24)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $12)
       )
      )
      (br_if $label$79
       (i32.ne
        (get_local $14)
        (get_local $28)
       )
      )
     )
     (set_local $28
      (i32.load
       (i32.add
        (get_local $29)
        (i32.const 248)
       )
      )
     )
     (br $label$77)
    )
    (set_local $28
     (get_local $14)
    )
   )
   (i32.store
    (get_local $13)
    (get_local $14)
   )
   (call $_ZdlPv
    (get_local $28)
   )
  )
  (drop
   (call $_ZNSt3__113__vector_baseIN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEEEE8item_ptrENS_9allocatorISI_EEED2Ev
    (i32.add
     (get_local $29)
     (i32.const 296)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $29)
    (i32.const 416)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12531649026744909824EN12eparticlectr12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEEEE6modifyIZNS1_8finalizeEyyE3$_9EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $17
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=92
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 496)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 544)
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (tee_local $16
     (get_local $17)
    )
    (i32.const 96)
   )
   (tee_local $3
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $16)
     (i32.const 16)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $16)
      (i32.const 96)
     )
     (i32.const 28)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $16)
     (i32.const 16)
    )
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $16)
      (i32.const 96)
     )
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $16)
     (i32.const 16)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $16)
      (i32.const 96)
     )
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $16)
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $16)
      (i32.const 96)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=28
   (get_local $16)
   (i32.load offset=108
    (get_local $16)
   )
  )
  (i32.store offset=24
   (get_local $16)
   (i32.load offset=104
    (get_local $16)
   )
  )
  (i32.store offset=20
   (get_local $16)
   (i32.load offset=100
    (get_local $16)
   )
  )
  (i32.store offset=16
   (get_local $16)
   (i32.load offset=96
    (get_local $16)
   )
  )
  (set_local $13
   (i32.load
    (tee_local $5
     (i32.add
      (get_local $1)
      (i32.const 84)
     )
    )
   )
  )
  (i64.store offset=48
   (get_local $16)
   (i64.load
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 56)
     )
    )
   )
  )
  (i64.store offset=56
   (get_local $16)
   (i64.extend_u/i32
    (i32.div_u
     (get_local $13)
     (i32.const 1800)
    )
   )
  )
  (i32.store offset=88
   (get_local $1)
   (select
    (i32.const 1)
    (i32.const 2)
    (tee_local $13
     (i64.gt_u
      (i64.load
       (i32.load
        (get_local $2)
       )
      )
      (i64.load
       (i32.load offset=4
        (get_local $2)
       )
      )
     )
    )
   )
  )
  (set_local $6
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=64
   (get_local $1)
   (i64.sub
    (i64.load
     (select
      (tee_local $14
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $15
       (i32.load offset=4
        (get_local $2)
       )
      )
      (get_local $13)
     )
    )
    (i64.load
     (select
      (get_local $15)
      (get_local $14)
      (get_local $13)
     )
    )
   )
  )
  (i32.store offset=72
   (get_local $1)
   (i32.load
    (i32.load offset=8
     (get_local $2)
    )
   )
  )
  (i32.store
   (get_local $5)
   (i32.load
    (i32.load offset=12
     (get_local $2)
    )
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 704)
  )
  (i32.store
   (get_local $16)
   (i32.const 0)
  )
  (i32.store offset=64
   (get_local $16)
   (get_local $16)
  )
  (i32.store offset=100
   (get_local $16)
   (get_local $3)
  )
  (i32.store offset=96
   (get_local $16)
   (get_local $1)
  )
  (i32.store offset=104
   (get_local $16)
   (tee_local $14
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
   )
  )
  (i32.store offset=108
   (get_local $16)
   (tee_local $15
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=112
   (get_local $16)
   (tee_local $10
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=116
   (get_local $16)
   (get_local $4)
  )
  (i32.store offset=120
   (get_local $16)
   (tee_local $8
    (i32.add
     (get_local $1)
     (i32.const 64)
    )
   )
  )
  (i32.store offset=124
   (get_local $16)
   (tee_local $9
    (i32.add
     (get_local $1)
     (i32.const 72)
    )
   )
  )
  (i32.store offset=128
   (get_local $16)
   (tee_local $11
    (i32.add
     (get_local $1)
     (i32.const 76)
    )
   )
  )
  (i32.store offset=132
   (get_local $16)
   (tee_local $12
    (i32.add
     (get_local $1)
     (i32.const 80)
    )
   )
  )
  (i32.store offset=136
   (get_local $16)
   (get_local $5)
  )
  (i32.store offset=140
   (get_local $16)
   (tee_local $7
    (i32.add
     (get_local $1)
     (i32.const 88)
    )
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_SF_S6_S6_S6_RKmSH_SH_SH_SH_EEEZN5eosiolsINSJ_10datastreamIjEEN12eparticlectr12editproposalELPv0EEERT_SR_RKT0_EUlRKSQ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11EEEEvSR_OSS_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $16)
    (i32.const 96)
   )
   (i32.add
    (get_local $16)
    (i32.const 64)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $13
       (i32.load
        (get_local $16)
       )
      )
      (i32.const 513)
     )
    )
    (set_local $2
     (call $malloc
      (get_local $13)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $2
     (i32.sub
      (get_local $17)
      (i32.and
       (i32.add
        (get_local $13)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $16)
   (get_local $2)
  )
  (i32.store
   (get_local $16)
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $16)
   (i32.add
    (get_local $2)
    (get_local $13)
   )
  )
  (i32.store offset=64
   (get_local $16)
   (get_local $16)
  )
  (i32.store offset=100
   (get_local $16)
   (get_local $3)
  )
  (i32.store offset=104
   (get_local $16)
   (get_local $14)
  )
  (i32.store offset=108
   (get_local $16)
   (get_local $15)
  )
  (i32.store offset=112
   (get_local $16)
   (get_local $10)
  )
  (i32.store offset=116
   (get_local $16)
   (get_local $4)
  )
  (i32.store offset=120
   (get_local $16)
   (get_local $8)
  )
  (i32.store offset=96
   (get_local $16)
   (get_local $1)
  )
  (i32.store offset=124
   (get_local $16)
   (get_local $9)
  )
  (i32.store offset=128
   (get_local $16)
   (get_local $11)
  )
  (i32.store offset=132
   (get_local $16)
   (get_local $12)
  )
  (i32.store offset=136
   (get_local $16)
   (get_local $5)
  )
  (i32.store offset=140
   (get_local $16)
   (get_local $7)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_SF_S6_S6_S6_RKmSH_SH_SH_SH_EEEZN5eosiolsINSJ_10datastreamIPcEEN12eparticlectr12editproposalELPv0EEERT_SS_RKT0_EUlRKSR_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10ELj11EEEEvSS_OST_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $16)
    (i32.const 96)
   )
   (i32.add
    (get_local $16)
    (i32.const 64)
   )
  )
  (call $db_update_i64
   (i32.load offset=96
    (get_local $1)
   )
   (i64.const 0)
   (get_local $2)
   (get_local $13)
  )
  (block $label$2
   (br_if $label$2
    (i32.lt_u
     (get_local $13)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $2)
   )
  )
  (block $label$3
   (br_if $label$3
    (i64.lt_u
     (get_local $6)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $6)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $6)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $2
   (i32.add
    (i32.add
     (get_local $16)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $16)
    (i32.const 96)
   )
   (get_local $3)
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $16)
       (i32.const 16)
      )
      (i32.add
       (get_local $16)
       (i32.const 96)
      )
      (i32.const 32)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $13
       (i32.load offset=100
        (get_local $1)
       )
      )
      (i32.const -1)
     )
    )
    (i64.store
     (i32.add
      (get_local $16)
      (i32.const 88)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $16)
      (i32.const 80)
     )
     (i64.const 0)
    )
    (i64.store offset=72
     (get_local $16)
     (i64.const 0)
    )
    (i64.store offset=64
     (get_local $16)
     (i64.const 0)
    )
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 100)
     )
     (tee_local $13
      (call $db_idx256_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -5915095046964641792)
       (i32.add
        (get_local $16)
        (i32.const 64)
       )
       (i32.const 2)
       (get_local $6)
      )
     )
    )
   )
   (call $db_idx256_update
    (get_local $13)
    (i64.const 0)
    (i32.add
     (get_local $16)
     (i32.const 96)
    )
    (i32.const 2)
   )
  )
  (set_local $13
   (i32.add
    (get_local $16)
    (i32.const 56)
   )
  )
  (i64.store offset=96
   (get_local $16)
   (i64.load
    (get_local $4)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (get_local $2)
      (i32.add
       (get_local $16)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 104)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -5915095046964641791)
       (i32.add
        (get_local $16)
        (i32.const 64)
       )
       (get_local $6)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $16)
     (i32.const 96)
    )
   )
  )
  (i64.store offset=96
   (get_local $16)
   (i64.extend_u/i32
    (i32.div_u
     (i32.load
      (get_local $5)
     )
     (i32.const 1800)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (get_local $13)
      (i32.add
       (get_local $16)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $1
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $1)
          (i32.const 108)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $2)
     (tee_local $1
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -5915095046964641790)
       (i32.add
        (get_local $16)
        (i32.const 64)
       )
       (get_local $6)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $1)
    (i64.const 0)
    (i32.add
     (get_local $16)
     (i32.const 96)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $16)
    (i32.const 144)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS8_RKbEEEZN5eosiolsINSC_10datastreamIPcEEN12eparticlectr5stakeELPv0EEERT_SL_RKT0_EUlRKSK_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENST_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $2)
    )
    (get_local $3)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $1
   (i32.load
    (get_local $1)
   )
  )
  (i32.store8 offset=15
   (get_local $4)
   (i32.load8_u
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $1)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (i32.const 0)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $1)
    )
    (i32.add
     (get_local $4)
     (i32.const 15)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_13EENSF_14const_iteratorEyOT_ENKUlRSJ_E_clINSF_4itemEEEDaSL_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (set_local $10
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.load offset=16
       (tee_local $4
        (i32.load
         (tee_local $3
          (i32.load offset=4
           (get_local $0)
          )
         )
        )
       )
      )
     )
     (i64.const -1)
    )
   )
   (set_local $5
    (i64.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (tee_local $6
       (call $db_lowerbound_i64
        (i64.load
         (get_local $4)
        )
        (i64.load offset=8
         (get_local $4)
        )
        (i64.const -4992121821513105408)
        (i64.const 0)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE31load_object_by_primary_iteratorEl
      (get_local $4)
      (get_local $6)
     )
    )
    (i32.store offset=36
     (get_local $10)
     (i32.const 0)
    )
    (i32.store offset=32
     (get_local $10)
     (get_local $4)
    )
    (set_local $5
     (select
      (i64.const -2)
      (i64.add
       (tee_local $5
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE14const_iteratormmEv
           (i32.add
            (get_local $10)
            (i32.const 32)
           )
          )
         )
        )
       )
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $5)
       (i64.const -3)
      )
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (get_local $5)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $5)
    (i64.const -2)
   )
   (i32.const 1424)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load offset=40
    (i32.load offset=4
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
  )
  (i64.store offset=16
   (get_local $1)
   (i64.or
    (i64.or
     (i64.or
      (i64.shl
       (tee_local $5
        (i64.load offset=40
         (i32.load offset=4
          (i32.load offset=4
           (get_local $3)
          )
         )
        )
       )
       (i64.const 56)
      )
      (i64.and
       (i64.shl
        (get_local $5)
        (i64.const 40)
       )
       (i64.const 71776119061217280)
      )
     )
     (i64.or
      (i64.and
       (i64.shl
        (get_local $5)
        (i64.const 24)
       )
       (i64.const 280375465082880)
      )
      (i64.and
       (i64.shl
        (get_local $5)
        (i64.const 8)
       )
       (i64.const 1095216660480)
      )
     )
    )
    (i64.or
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $5)
        (i64.const 8)
       )
       (i64.const 4278190080)
      )
      (i64.and
       (i64.shr_u
        (get_local $5)
        (i64.const 24)
       )
       (i64.const 16711680)
      )
     )
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $5)
        (i64.const 40)
       )
       (i64.const 65280)
      )
      (i64.shr_u
       (get_local $5)
       (i64.const 56)
      )
     )
    )
   )
  )
  (i64.store offset=24
   (get_local $1)
   (i64.load
    (i32.load offset=12
     (get_local $3)
    )
   )
  )
  (i64.store offset=32
   (get_local $1)
   (i64.load
    (i32.load offset=16
     (get_local $3)
    )
   )
  )
  (i32.store offset=40
   (get_local $1)
   (i32.load
    (i32.load offset=20
     (get_local $3)
    )
   )
  )
  (i32.store8 offset=49
   (get_local $1)
   (i32.load8_u offset=29
    (i32.load offset=4
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
  )
  (i32.store8 offset=48
   (get_local $1)
   (i32.load8_u
    (i32.load offset=24
     (get_local $3)
    )
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $3)
   )
  )
  (i32.store16 offset=50
   (get_local $1)
   (i32.const 256)
  )
  (i32.store offset=44
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.add
     (tee_local $4
      (get_local $11)
     )
     (i32.const -64)
    )
   )
  )
  (i32.store offset=12
   (get_local $10)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $10)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $10)
   (i32.add
    (get_local $4)
    (i32.const -12)
   )
  )
  (i32.store offset=24
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $10)
   (tee_local $4
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=32
   (get_local $10)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $10)
   (tee_local $11
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=44
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (i32.store offset=48
   (get_local $10)
   (tee_local $6
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=52
   (get_local $10)
   (tee_local $7
    (i32.add
     (get_local $1)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=56
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
  )
  (i32.store offset=60
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (i32.store offset=64
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 49)
   )
  )
  (i32.store offset=68
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 50)
   )
  )
  (i32.store offset=72
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 51)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_S6_RKmS8_RKbSA_SA_SA_EEEZN5eosiolsINSC_10datastreamIPcEEN12eparticlectr13rewardhistoryELPv0EEERT_SL_RKT0_EUlRKSK_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENST_17integral_constantIbLb0EEE
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.add
    (get_local $10)
    (i32.const 24)
   )
  )
  (i32.store offset=56
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -4992121821513105408)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $5
     (i64.load
      (get_local $1)
     )
    )
    (get_local $3)
    (i32.const 52)
   )
  )
  (block $label$2
   (br_if $label$2
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $5
   (i64.load
    (tee_local $3
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i64.load
    (tee_local $0
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $9
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=60
   (get_local $1)
   (call $db_idx64_store
    (get_local $5)
    (i64.const -4992121821513105408)
    (get_local $8)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (set_local $8
   (i64.load
    (get_local $3)
   )
  )
  (set_local $9
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.load
    (get_local $11)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 64)
   )
   (call $db_idx64_store
    (get_local $8)
    (i64.const -4992121821513105407)
    (get_local $5)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (set_local $8
   (i64.load
    (get_local $3)
   )
  )
  (set_local $9
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.extend_u/i32
    (i32.div_u
     (i32.load
      (get_local $7)
     )
     (i32.const 1800)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 68)
   )
   (call $db_idx64_store
    (get_local $8)
    (i64.const -4992121821513105406)
    (get_local $5)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (set_local $8
   (i64.load
    (get_local $3)
   )
  )
  (set_local $9
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.load
    (get_local $6)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 72)
   )
   (call $db_idx64_store
    (get_local $8)
    (i64.const -4992121821513105405)
    (get_local $5)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 80)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEENS5_ILy4587895157746319360ENS8_IS4_yXadL_ZNKS4_12get_proposalEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_12EENSB_14const_iteratorEyOT_ENKUlRSF_E_clINSB_4itemEEEDaSH_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (set_local $9
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $10)
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.ne
     (tee_local $6
      (i64.load offset=16
       (tee_local $4
        (i32.load
         (tee_local $3
          (i32.load offset=4
           (get_local $0)
          )
         )
        )
       )
      )
     )
     (i64.const -1)
    )
   )
   (set_local $6
    (i64.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (tee_local $5
       (call $db_lowerbound_i64
        (i64.load
         (get_local $4)
        )
        (i64.load offset=8
         (get_local $4)
        )
        (i64.const -4157660949894922240)
        (i64.const 0)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
      (get_local $4)
      (get_local $5)
     )
    )
    (i32.store offset=36
     (get_local $9)
     (i32.const 0)
    )
    (i32.store offset=32
     (get_local $9)
     (get_local $4)
    )
    (set_local $6
     (select
      (i64.const -2)
      (i64.add
       (tee_local $6
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE14const_iteratormmEv
           (i32.add
            (get_local $9)
            (i32.const 32)
           )
          )
         )
        )
       )
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $6)
       (i64.const -3)
      )
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (get_local $6)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $6)
    (i64.const -2)
   )
   (i32.const 1424)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load offset=40
    (i32.load offset=4
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
  )
  (i64.store offset=16
   (get_local $1)
   (i64.or
    (i64.or
     (i64.or
      (i64.shl
       (tee_local $6
        (i64.load offset=40
         (i32.load offset=4
          (i32.load offset=4
           (get_local $3)
          )
         )
        )
       )
       (i64.const 56)
      )
      (i64.and
       (i64.shl
        (get_local $6)
        (i64.const 40)
       )
       (i64.const 71776119061217280)
      )
     )
     (i64.or
      (i64.and
       (i64.shl
        (get_local $6)
        (i64.const 24)
       )
       (i64.const 280375465082880)
      )
      (i64.and
       (i64.shl
        (get_local $6)
        (i64.const 8)
       )
       (i64.const 1095216660480)
      )
     )
    )
    (i64.or
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $6)
        (i64.const 8)
       )
       (i64.const 4278190080)
      )
      (i64.and
       (i64.shr_u
        (get_local $6)
        (i64.const 24)
       )
       (i64.const 16711680)
      )
     )
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $6)
        (i64.const 40)
       )
       (i64.const 65280)
      )
      (i64.shr_u
       (get_local $6)
       (i64.const 56)
      )
     )
    )
   )
  )
  (i64.store offset=24
   (get_local $1)
   (i64.load
    (i32.load offset=12
     (get_local $3)
    )
   )
  )
  (i32.store offset=32
   (get_local $1)
   (i32.load
    (i32.load offset=16
     (get_local $3)
    )
   )
  )
  (i32.store offset=36
   (get_local $1)
   (i32.load
    (i32.load offset=20
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.add
     (tee_local $4
      (get_local $10)
     )
     (i32.const -48)
    )
   )
  )
  (i32.store offset=12
   (get_local $9)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $9)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $9)
   (i32.add
    (get_local $4)
    (i32.const -7)
   )
  )
  (i32.store offset=24
   (get_local $9)
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $9)
   (tee_local $4
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=32
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $9)
   (tee_local $10
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=44
   (get_local $9)
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (i32.store offset=48
   (get_local $9)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=52
   (get_local $9)
   (i32.add
    (get_local $1)
    (i32.const 36)
   )
  )
  (i32.store offset=56
   (get_local $9)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS8_RKbEEEZN5eosiolsINSC_10datastreamIPcEEN12eparticlectr5stakeELPv0EEERT_SL_RKT0_EUlRKSK_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENST_17integral_constantIbLb0EEE
   (i32.add
    (get_local $9)
    (i32.const 32)
   )
   (i32.add
    (get_local $9)
    (i32.const 24)
   )
  )
  (i32.store offset=48
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -4157660949894922240)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $6
     (i64.load
      (get_local $1)
     )
    )
    (get_local $3)
    (i32.const 41)
   )
  )
  (block $label$2
   (br_if $label$2
    (i64.lt_u
     (get_local $6)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $6)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $6)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $6
   (i64.load
    (tee_local $3
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $7
   (i64.load
    (tee_local $0
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $8
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $9)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=52
   (get_local $1)
   (call $db_idx64_store
    (get_local $6)
    (i64.const -4157660949894922240)
    (get_local $7)
    (get_local $8)
    (i32.add
     (get_local $9)
     (i32.const 32)
    )
   )
  )
  (set_local $6
   (i64.load
    (get_local $0)
   )
  )
  (set_local $7
   (i64.load
    (get_local $3)
   )
  )
  (set_local $8
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $9)
   (i64.load
    (get_local $10)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
   (call $db_idx64_store
    (get_local $7)
    (i64.const -4157660949894922239)
    (get_local $6)
    (get_local $8)
    (i32.add
     (get_local $9)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 64)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_15EENSF_14const_iteratorEyOT_ENKUlRSJ_E_clINSF_4itemEEEDaSL_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (set_local $10
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.load offset=16
       (tee_local $4
        (i32.load
         (tee_local $3
          (i32.load offset=4
           (get_local $0)
          )
         )
        )
       )
      )
     )
     (i64.const -1)
    )
   )
   (set_local $5
    (i64.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (tee_local $6
       (call $db_lowerbound_i64
        (i64.load
         (get_local $4)
        )
        (i64.load offset=8
         (get_local $4)
        )
        (i64.const -4992121821513105408)
        (i64.const 0)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE31load_object_by_primary_iteratorEl
      (get_local $4)
      (get_local $6)
     )
    )
    (i32.store offset=36
     (get_local $10)
     (i32.const 0)
    )
    (i32.store offset=32
     (get_local $10)
     (get_local $4)
    )
    (set_local $5
     (select
      (i64.const -2)
      (i64.add
       (tee_local $5
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE14const_iteratormmEv
           (i32.add
            (get_local $10)
            (i32.const 32)
           )
          )
         )
        )
       )
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $5)
       (i64.const -3)
      )
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (get_local $5)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $5)
    (i64.const -2)
   )
   (i32.const 1424)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load offset=40
    (i32.load offset=4
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
  )
  (i64.store offset=16
   (get_local $1)
   (i64.or
    (i64.or
     (i64.or
      (i64.shl
       (tee_local $5
        (i64.load offset=40
         (i32.load offset=4
          (i32.load offset=4
           (get_local $3)
          )
         )
        )
       )
       (i64.const 56)
      )
      (i64.and
       (i64.shl
        (get_local $5)
        (i64.const 40)
       )
       (i64.const 71776119061217280)
      )
     )
     (i64.or
      (i64.and
       (i64.shl
        (get_local $5)
        (i64.const 24)
       )
       (i64.const 280375465082880)
      )
      (i64.and
       (i64.shl
        (get_local $5)
        (i64.const 8)
       )
       (i64.const 1095216660480)
      )
     )
    )
    (i64.or
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $5)
        (i64.const 8)
       )
       (i64.const 4278190080)
      )
      (i64.and
       (i64.shr_u
        (get_local $5)
        (i64.const 24)
       )
       (i64.const 16711680)
      )
     )
     (i64.or
      (i64.and
       (i64.shr_u
        (get_local $5)
        (i64.const 40)
       )
       (i64.const 65280)
      )
      (i64.shr_u
       (get_local $5)
       (i64.const 56)
      )
     )
    )
   )
  )
  (i64.store offset=24
   (get_local $1)
   (i64.load
    (i32.load offset=12
     (get_local $3)
    )
   )
  )
  (i64.store offset=32
   (get_local $1)
   (i64.load
    (i32.load offset=16
     (get_local $3)
    )
   )
  )
  (i32.store offset=40
   (get_local $1)
   (i32.load
    (i32.load offset=20
     (get_local $3)
    )
   )
  )
  (i32.store8 offset=48
   (get_local $1)
   (i32.load8_u
    (i32.load offset=24
     (get_local $3)
    )
   )
  )
  (i32.store8 offset=49
   (get_local $1)
   (i32.load8_u offset=29
    (i32.load offset=4
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
  )
  (i32.store offset=44
   (get_local $1)
   (i32.load
    (i32.load offset=28
     (get_local $3)
    )
   )
  )
  (i32.store8 offset=50
   (get_local $1)
   (i32.const 1)
  )
  (i32.store8 offset=51
   (get_local $1)
   (i32.const 0)
  )
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.add
     (tee_local $4
      (get_local $11)
     )
     (i32.const -64)
    )
   )
  )
  (i32.store offset=12
   (get_local $10)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $10)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $10)
   (i32.add
    (get_local $4)
    (i32.const -12)
   )
  )
  (i32.store offset=24
   (get_local $10)
   (i32.add
    (get_local $10)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $10)
   (tee_local $4
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=32
   (get_local $10)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $10)
   (tee_local $11
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=44
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (i32.store offset=48
   (get_local $10)
   (tee_local $6
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=52
   (get_local $10)
   (tee_local $7
    (i32.add
     (get_local $1)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=56
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
  )
  (i32.store offset=60
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 48)
   )
  )
  (i32.store offset=64
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 49)
   )
  )
  (i32.store offset=68
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 50)
   )
  )
  (i32.store offset=72
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 51)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_S6_RKmS8_RKbSA_SA_SA_EEEZN5eosiolsINSC_10datastreamIPcEEN12eparticlectr13rewardhistoryELPv0EEERT_SL_RKT0_EUlRKSK_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENST_17integral_constantIbLb0EEE
   (i32.add
    (get_local $10)
    (i32.const 32)
   )
   (i32.add
    (get_local $10)
    (i32.const 24)
   )
  )
  (i32.store offset=56
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -4992121821513105408)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $5
     (i64.load
      (get_local $1)
     )
    )
    (get_local $3)
    (i32.const 52)
   )
  )
  (block $label$2
   (br_if $label$2
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $5
   (i64.load
    (tee_local $3
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i64.load
    (tee_local $0
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $9
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=60
   (get_local $1)
   (call $db_idx64_store
    (get_local $5)
    (i64.const -4992121821513105408)
    (get_local $8)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (set_local $8
   (i64.load
    (get_local $3)
   )
  )
  (set_local $9
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.load
    (get_local $11)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 64)
   )
   (call $db_idx64_store
    (get_local $8)
    (i64.const -4992121821513105407)
    (get_local $5)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (set_local $8
   (i64.load
    (get_local $3)
   )
  )
  (set_local $9
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.extend_u/i32
    (i32.div_u
     (i32.load
      (get_local $7)
     )
     (i32.const 1800)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 68)
   )
   (call $db_idx64_store
    (get_local $8)
    (i64.const -4992121821513105406)
    (get_local $5)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (set_local $8
   (i64.load
    (get_local $3)
   )
  )
  (set_local $9
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $10)
   (i64.load
    (get_local $6)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 72)
   )
   (call $db_idx64_store
    (get_local $8)
    (i64.const -4992121821513105405)
    (get_local $5)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 80)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $10)
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx256_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const -2044374312542011392)
       (get_local $10)
       (i32.const 2)
       (i32.add
        (get_local $10)
        (i32.const 40)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=40
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=32
        (tee_local $2
         (i32.load
          (i32.add
           (get_local $9)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 144)
     )
     (br $label$3)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=32
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (call $db_find_i64
          (i64.load
           (get_local $4)
          )
          (i64.load offset=8
           (get_local $4)
          )
          (i64.const -2044374312542011392)
          (get_local $5)
         )
        )
       )
      )
      (get_local $4)
     )
     (i32.const 144)
    )
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const 40)
    )
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_16EENSD_14const_iteratorEyOT_ENKUlRSH_E_clINSD_4itemEEEDaSJ_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (set_local $10
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $11)
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.ne
     (tee_local $7
      (i64.load offset=16
       (tee_local $8
        (i32.load
         (tee_local $9
          (i32.load offset=4
           (get_local $0)
          )
         )
        )
       )
      )
     )
     (i64.const -1)
    )
   )
   (set_local $7
    (i64.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i32.lt_s
      (tee_local $3
       (call $db_lowerbound_i64
        (i64.load
         (get_local $8)
        )
        (i64.load offset=8
         (get_local $8)
        )
        (i64.const -2044374312542011392)
        (i64.const 0)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE31load_object_by_primary_iteratorEl
      (get_local $8)
      (get_local $3)
     )
    )
    (i32.store offset=20
     (get_local $10)
     (i32.const 0)
    )
    (i32.store offset=16
     (get_local $10)
     (get_local $8)
    )
    (set_local $7
     (select
      (i64.const -2)
      (i64.add
       (tee_local $7
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE14const_iteratormmEv
           (i32.add
            (get_local $10)
            (i32.const 16)
           )
          )
         )
        )
       )
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $7)
       (i64.const -3)
      )
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (get_local $7)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $7)
    (i64.const -2)
   )
   (i32.const 1424)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $3
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load offset=4
       (get_local $9)
      )
     )
     (i32.const 8)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 20)
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load offset=4
       (get_local $9)
      )
     )
     (i32.const 20)
    )
   )
  )
  (set_local $8
   (i32.add
    (tee_local $9
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.shr_u
       (tee_local $8
        (i32.load8_u offset=8
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $8)
       (i32.const 1)
      )
     )
    )
    (i32.const 8)
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (get_local $9)
   )
  )
  (loop $label$2
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (br_if $label$2
    (i64.ne
     (tee_local $7
      (i64.shr_u
       (get_local $7)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $8
   (i32.add
    (tee_local $9
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 24)
       )
      )
      (i32.shr_u
       (tee_local $9
        (i32.load8_u
         (i32.add
          (get_local $1)
          (i32.const 20)
         )
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $9)
       (i32.const 1)
      )
     )
    )
    (get_local $8)
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (get_local $9)
   )
  )
  (loop $label$3
   (set_local $8
    (i32.add
     (get_local $8)
     (i32.const 1)
    )
   )
   (br_if $label$3
    (i64.ne
     (tee_local $7
      (i64.shr_u
       (get_local $7)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.lt_u
      (get_local $8)
      (i32.const 513)
     )
    )
    (set_local $9
     (call $malloc
      (get_local $8)
     )
    )
    (br $label$4)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $9
     (i32.sub
      (get_local $11)
      (i32.and
       (i32.add
        (get_local $8)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store
   (get_local $10)
   (get_local $9)
  )
  (i32.store offset=8
   (get_local $10)
   (i32.add
    (get_local $9)
    (get_local $8)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $8)
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (get_local $9)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $10)
   (i32.add
    (get_local $9)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (get_local $10)
    (get_local $3)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (get_local $10)
    (get_local $4)
   )
  )
  (i32.store offset=36
   (get_local $1)
   (call $db_store_i64
    (i64.load offset=8
     (get_local $2)
    )
    (i64.const -2044374312542011392)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $7
     (i64.load
      (get_local $1)
     )
    )
    (get_local $9)
    (get_local $8)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.lt_u
     (get_local $8)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $9)
   )
  )
  (block $label$7
   (br_if $label$7
    (i64.lt_u
     (get_local $7)
     (i64.load offset=16
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $7)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $7)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $7
   (i64.load
    (tee_local $8
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $5
   (i64.load
    (tee_local $9
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (set_local $6
   (i64.load
    (get_local $1)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
   (get_local $3)
  )
  (i32.store offset=40
   (get_local $1)
   (call $db_idx256_store
    (get_local $7)
    (i64.const -2044374312542011392)
    (get_local $5)
    (get_local $6)
    (i32.add
     (get_local $10)
     (i32.const 16)
    )
    (i32.const 2)
   )
  )
  (set_local $7
   (i64.load
    (get_local $9)
   )
  )
  (set_local $5
   (i64.load
    (get_local $8)
   )
  )
  (set_local $6
   (i64.load
    (get_local $1)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 44)
   )
   (call $db_idx256_store
    (get_local $5)
    (i64.const -2044374312542011391)
    (get_local $7)
    (get_local $6)
    (i32.add
     (get_local $10)
     (i32.const 16)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 48)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587220462410924032ENS8_IS4_SA_XadL_ZNKS4_22get_parent_hash_key256EvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ge_u
      (tee_local $5
       (i32.add
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $6
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (tee_local $6
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $6)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$2
       (i32.eqz
        (tee_local $7
         (select
          (get_local $5)
          (tee_local $7
           (i32.shl
            (get_local $6)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $5)
          )
         )
        )
       )
      )
     )
     (set_local $6
      (call $_Znwj
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$0)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $6
     (i32.const 0)
    )
    (br $label$0)
   )
   (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $6)
     (i32.mul
      (get_local $4)
      (i32.const 24)
     )
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $4
   (i32.add
    (get_local $6)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (loop $label$6
     (set_local $3
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $6)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -8)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -8)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -12)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -12)
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const -16)
      )
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $6
      (get_local $2)
     )
     (br_if $label$6
      (i32.ne
       (get_local $7)
       (get_local $2)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $6
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $6
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$7
   (br_if $label$7
    (i32.eq
     (get_local $7)
     (get_local $6)
    )
   )
   (loop $label$8
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$9
     (br_if $label$9
      (i32.eqz
       (get_local $1)
      )
     )
     (block $label$10
      (br_if $label$10
       (i32.eqz
        (i32.and
         (i32.load8_u offset=20
          (get_local $1)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 28)
        )
       )
      )
     )
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (i32.and
         (i32.load8_u offset=8
          (get_local $1)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
      )
     )
     (call $_ZdlPv
      (get_local $1)
     )
    )
    (br_if $label$8
     (i32.ne
      (get_local $6)
      (get_local $7)
     )
    )
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.eqz
     (get_local $6)
    )
   )
   (call $_ZdlPv
    (get_local $6)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE6modifyIZNS1_8finalizeEyyE4$_17EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 144)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=32
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 496)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 544)
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (tee_local $9
     (get_local $8)
    )
    (i32.const 112)
   )
   (tee_local $3
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $9)
    (i32.const 80)
   )
   (tee_local $4
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 112)
     )
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $9)
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 112)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=24
   (get_local $9)
   (i64.load offset=120
    (get_local $9)
   )
  )
  (i64.store offset=16
   (get_local $9)
   (i64.load offset=112
    (get_local $9)
   )
  )
  (i64.store
   (i32.add
    (get_local $9)
    (i32.const 72)
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 80)
     )
     (i32.const 24)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $9)
    (i32.const 64)
   )
   (i64.load
    (i32.add
     (i32.add
      (get_local $9)
      (i32.const 80)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $9)
    (i32.const 56)
   )
   (i64.load offset=88
    (get_local $9)
   )
  )
  (i64.store offset=48
   (get_local $9)
   (i64.load offset=80
    (get_local $9)
   )
  )
  (set_local $5
   (i64.load
    (get_local $1)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (get_local $3)
    (i32.add
     (i32.load offset=4
      (i32.load
       (get_local $2)
      )
     )
     (i32.const 8)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
    (get_local $4)
    (i32.add
     (i32.load offset=4
      (i32.load
       (get_local $2)
      )
     )
     (i32.const 20)
    )
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $5)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 704)
  )
  (set_local $2
   (i32.add
    (tee_local $6
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.shr_u
       (tee_local $2
        (i32.load8_u offset=8
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.const 8)
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (get_local $6)
   )
  )
  (loop $label$0
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $7
      (i64.shr_u
       (get_local $7)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $2
   (i32.add
    (tee_local $6
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 24)
       )
      )
      (i32.shr_u
       (tee_local $6
        (i32.load8_u
         (i32.add
          (get_local $1)
          (i32.const 20)
         )
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $6)
       (i32.const 1)
      )
     )
    )
    (get_local $2)
   )
  )
  (set_local $7
   (i64.extend_u/i32
    (get_local $6)
   )
  )
  (loop $label$1
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $7
      (i64.shr_u
       (get_local $7)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.lt_u
      (get_local $2)
      (i32.const 513)
     )
    )
    (set_local $8
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$2)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $8
     (i32.sub
      (get_local $8)
      (i32.and
       (i32.add
        (get_local $2)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store
   (get_local $9)
   (get_local $8)
  )
  (i32.store offset=8
   (get_local $9)
   (i32.add
    (get_local $8)
    (get_local $2)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (get_local $2)
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $9)
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (get_local $9)
    (get_local $3)
   )
  )
  (drop
   (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
    (get_local $9)
    (get_local $4)
   )
  )
  (call $db_update_i64
   (i32.load offset=36
    (get_local $1)
   )
   (i64.const 0)
   (get_local $8)
   (get_local $2)
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $2)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $9)
    (i32.const 112)
   )
   (get_local $3)
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $9)
       (i32.const 16)
      )
      (i32.add
       (get_local $9)
       (i32.const 112)
      )
      (i32.const 32)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $8
         (i32.add
          (get_local $1)
          (i32.const 40)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 104)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 96)
     )
     (i64.const 0)
    )
    (i64.store offset=88
     (get_local $9)
     (i64.const 0)
    )
    (i64.store offset=80
     (get_local $9)
     (i64.const 0)
    )
    (i32.store
     (get_local $8)
     (tee_local $2
      (call $db_idx256_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2044374312542011392)
       (i32.add
        (get_local $9)
        (i32.const 80)
       )
       (i32.const 2)
       (get_local $5)
      )
     )
    )
   )
   (call $db_idx256_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $9)
     (i32.const 112)
    )
    (i32.const 2)
   )
  )
  (call $_ZN12eparticlectr14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $9)
    (i32.const 112)
   )
   (get_local $4)
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (call $memcmp
      (i32.add
       (i32.add
        (get_local $9)
        (i32.const 16)
       )
       (i32.const 32)
      )
      (i32.add
       (get_local $9)
       (i32.const 112)
      )
      (i32.const 32)
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.gt_s
      (tee_local $2
       (i32.load
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 44)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 104)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $9)
      (i32.const 96)
     )
     (i64.const 0)
    )
    (i64.store offset=88
     (get_local $9)
     (i64.const 0)
    )
    (i64.store offset=80
     (get_local $9)
     (i64.const 0)
    )
    (i32.store
     (get_local $1)
     (tee_local $2
      (call $db_idx256_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2044374312542011391)
       (i32.add
        (get_local $9)
        (i32.const 80)
       )
       (i32.const 2)
       (get_local $5)
      )
     )
    )
   )
   (call $db_idx256_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $9)
     (i32.const 112)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 144)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 208)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=40
    (get_local $8)
    (tee_local $7
     (i32.add
      (get_local $4)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.le_u
      (get_local $6)
      (i32.const 512)
     )
    )
    (call $free
     (get_local $4)
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $8)
       (i32.const 40)
      )
     )
    )
    (set_local $4
     (i32.load offset=36
      (get_local $8)
     )
    )
   )
   (i64.store offset=8 align=4
    (tee_local $6
     (call $_Znwj
      (i32.const 48)
     )
    )
    (i64.const 0)
   )
   (i64.store offset=16 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i64.store offset=24 align=4
    (get_local $6)
    (i64.const 0)
   )
   (i32.store offset=32
    (get_local $6)
    (get_local $0)
   )
   (call $eosio_assert
    (i32.gt_u
     (i32.sub
      (get_local $7)
      (get_local $4)
     )
     (i32.const 7)
    )
    (i32.const 336)
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $4)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (drop
    (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $6)
      (i32.const 8)
     )
    )
   )
   (drop
    (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $6)
      (i32.const 20)
     )
    )
   )
   (i32.store offset=40
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=36
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=44
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=16
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=12
    (get_local $8)
    (tee_local $7
     (i32.load offset=36
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587220462410924032ENS8_IS4_SA_XadL_ZNKS4_22get_parent_hash_key256EvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
     (i32.add
      (get_local $8)
      (i32.const 12)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eqz
      (i32.and
       (i32.load8_u offset=20
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $4)
       (i32.const 28)
      )
     )
    )
   )
   (block $label$10
    (br_if $label$10
     (i32.eqz
      (i32.and
       (i32.load8_u offset=8
        (get_local $4)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $4)
       (i32.const 16)
      )
     )
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (call $eosio_assert
     (i32.xor
      (i32.shr_u
       (tee_local $1
        (call $db_previous_i64
         (i32.load offset=36
          (get_local $1)
         )
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
       (i32.const 31)
      )
      (i32.const 1)
     )
     (i32.const 1712)
    )
    (br $label$0)
   )
   (call $eosio_assert
    (i32.ne
     (tee_local $1
      (call $db_end_i64
       (i64.load
        (tee_local $1
         (i32.load
          (get_local $0)
         )
        )
       )
       (i64.load offset=8
        (get_local $1)
       )
       (i64.const -2044374312542011392)
      )
     )
     (i32.const -1)
    )
    (i32.const 1648)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $1
       (call $db_previous_i64
        (get_local $1)
        (i32.add
         (get_local $2)
         (i32.const 8)
        )
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 1648)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy16402369761167540224EN12eparticlectr4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE31load_object_by_primary_iteratorEl
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $8
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $9)
  )
  (block $label$0
   (br_if $label$0
    (i32.eq
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
     (tee_local $2
      (i32.load offset=24
       (get_local $0)
      )
     )
    )
   )
   (set_local $3
    (i32.sub
     (i32.const 0)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (get_local $7)
     (i32.const -24)
    )
   )
   (loop $label$1
    (br_if $label$0
     (i32.eq
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
    (set_local $7
     (get_local $6)
    )
    (set_local $6
     (tee_local $4
      (i32.add
       (get_local $6)
       (i32.const -24)
      )
     )
    )
    (br_if $label$1
     (i32.ne
      (i32.add
       (get_local $4)
       (get_local $3)
      )
      (i32.const -24)
     )
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.eq
      (get_local $7)
      (get_local $2)
     )
    )
    (set_local $6
     (i32.load
      (i32.add
       (get_local $7)
       (i32.const -24)
      )
     )
    )
    (br $label$2)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $6
       (call $db_get_i64
        (get_local $1)
        (i32.const 0)
        (i32.const 0)
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 208)
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $4
      (call $malloc
       (get_local $6)
      )
     )
     (br $label$4)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $9)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $db_get_i64
     (get_local $1)
     (get_local $4)
     (get_local $6)
    )
   )
   (i32.store offset=12
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=8
    (get_local $8)
    (get_local $4)
   )
   (i32.store offset=16
    (get_local $8)
    (i32.add
     (get_local $4)
     (get_local $6)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.lt_u
      (get_local $6)
      (i32.const 513)
     )
    )
    (call $free
     (get_local $4)
    )
   )
   (i32.store offset=52
    (tee_local $6
     (call $_Znwj
      (i32.const 80)
     )
    )
    (get_local $0)
   )
   (i32.store offset=48
    (get_local $6)
    (i32.const 0)
   )
   (i32.store offset=24
    (get_local $8)
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
   (i32.store offset=36
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
   )
   (i32.store offset=32
    (get_local $8)
    (get_local $6)
   )
   (i32.store offset=40
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 16)
    )
   )
   (i32.store offset=44
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 24)
    )
   )
   (i32.store offset=48
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
   )
   (i32.store offset=52
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 40)
    )
   )
   (i32.store offset=56
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 44)
    )
   )
   (i32.store offset=60
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 48)
    )
   )
   (i32.store offset=64
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 49)
    )
   )
   (i32.store offset=68
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 50)
    )
   )
   (i32.store offset=72
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 51)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_S5_S5_S5_RmS6_RbS7_S7_S7_EEEZN5eosiorsINS9_10datastreamIPKcEEN12eparticlectr13rewardhistoryELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
   )
   (i32.store offset=60
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=56
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=64
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=68
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=72
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=24
    (get_local $8)
    (get_local $6)
   )
   (i64.store offset=32
    (get_local $8)
    (tee_local $5
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=4
    (get_local $8)
    (tee_local $7
     (i32.load offset=56
      (get_local $6)
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $1
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $7)
     )
     (i32.store offset=24
      (get_local $8)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $6)
     )
     (i32.store
      (get_local $1)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (br $label$7)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEENS5_ILy4582106519425105920ENS8_IS4_yXadL_ZNKS4_19get_finalize_periodEvEEEEEENS5_ILy4587895157746319360ENS8_IS4_yXadL_ZNKS4_12get_proposalEvEEEEEEEE8item_ptrENS_9allocatorISI_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSH_4itemENS_14default_deleteISO_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 24)
     )
     (i32.add
      (get_local $8)
      (i32.const 32)
     )
     (i32.add
      (get_local $8)
      (i32.const 4)
     )
    )
   )
   (set_local $4
    (i32.load offset=24
     (get_local $8)
    )
   )
   (i32.store offset=24
    (get_local $8)
    (i32.const 0)
   )
   (br_if $label$2
    (i32.eqz
     (get_local $4)
    )
   )
   (call $_ZdlPv
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 80)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (call $eosio_assert
     (i32.xor
      (i32.shr_u
       (tee_local $1
        (call $db_previous_i64
         (i32.load offset=56
          (get_local $1)
         )
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
       (i32.const 31)
      )
      (i32.const 1)
     )
     (i32.const 1712)
    )
    (br $label$0)
   )
   (call $eosio_assert
    (i32.ne
     (tee_local $1
      (call $db_end_i64
       (i64.load
        (tee_local $1
         (i32.load
          (get_local $0)
         )
        )
       )
       (i64.load offset=8
        (get_local $1)
       )
       (i64.const -4992121821513105408)
      )
     )
     (i32.const -1)
    )
    (i32.const 1648)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $1
       (call $db_previous_i64
        (get_local $1)
        (i32.add
         (get_local $2)
         (i32.const 8)
        )
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 1648)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE31load_object_by_primary_iteratorEl
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_S6_RKmS8_RKbSA_SA_SA_EEEZN5eosiolsINSC_10datastreamIPcEEN12eparticlectr13rewardhistoryELPv0EEERT_SL_RKT0_EUlRKSK_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENST_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $2
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 4)
   )
  )
  (set_local $2
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 3)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (get_local $2)
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (i32.store8 offset=15
   (get_local $4)
   (i32.load8_u
    (i32.load offset=28
     (get_local $0)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 0)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $4)
     (i32.const 15)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (i32.store8 offset=14
   (get_local $4)
   (i32.load8_u
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 0)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $4)
     (i32.const 14)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (i32.store8 offset=13
   (get_local $4)
   (i32.load8_u
    (i32.load offset=36
     (get_local $0)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 0)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $3)
    )
    (i32.add
     (get_local $4)
     (i32.const 13)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (set_local $1
   (i32.load
    (get_local $1)
   )
  )
  (i32.store8 offset=12
   (get_local $4)
   (i32.load8_u
    (i32.load offset=40
     (get_local $0)
    )
   )
  )
  (call $eosio_assert
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $1)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (i32.const 0)
   )
   (i32.const 400)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $1)
    )
    (i32.add
     (get_local $4)
     (i32.const 12)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_S5_S5_S5_RmS6_RbS7_S7_S7_EEEZN5eosiorsINS9_10datastreamIPKcEEN12eparticlectr13rewardhistoryELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 3)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 4)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (i32.const 15)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store8
   (get_local $3)
   (i32.ne
    (i32.load8_u offset=15
     (get_local $4)
    )
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (i32.const 14)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store8
   (get_local $3)
   (i32.ne
    (i32.load8_u offset=14
     (get_local $4)
    )
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (i32.const 13)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store8
   (get_local $3)
   (i32.ne
    (i32.load8_u offset=13
     (get_local $4)
    )
    (i32.const 0)
   )
  )
  (set_local $2
   (i32.load offset=40
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $0
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $0)
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (i32.const 12)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store8
   (get_local $2)
   (i32.ne
    (i32.load8_u offset=12
     (get_local $4)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $2
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (tee_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (call $eosio_assert
     (i32.xor
      (i32.shr_u
       (tee_local $1
        (call $db_previous_i64
         (i32.load offset=48
          (get_local $1)
         )
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
       (i32.const 31)
      )
      (i32.const 1)
     )
     (i32.const 1712)
    )
    (br $label$0)
   )
   (call $eosio_assert
    (i32.ne
     (tee_local $1
      (call $db_end_i64
       (i64.load
        (tee_local $1
         (i32.load
          (get_local $0)
         )
        )
       )
       (i64.load offset=8
        (get_local $1)
       )
       (i64.const -4157660949894922240)
      )
     )
     (i32.const -1)
    )
    (i32.const 1648)
   )
   (call $eosio_assert
    (i32.xor
     (i32.shr_u
      (tee_local $1
       (call $db_previous_i64
        (get_local $1)
        (i32.add
         (get_local $2)
         (i32.const 8)
        )
       )
      )
      (i32.const 31)
     )
     (i32.const 1)
    )
    (i32.const 1648)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy14289083123814629376EN12eparticlectr5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
    (i32.load
     (get_local $0)
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN12eparticlectr11procrewardsEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i64)
  (local $30 i64)
  (local $31 i64)
  (local $32 i64)
  (local $33 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $33
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 416)
    )
   )
  )
  (i64.store offset=248
   (get_local $33)
   (get_local $1)
  )
  (set_local $28
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.const 0)
   (i32.const 2224)
  )
  (set_local $1
   (call $current_time)
  )
  (call $prints
   (i32.const 2272)
  )
  (call $printui
   (i64.extend_u/i32
    (i32.div_u
     (i32.wrap/i64
      (i64.div_u
       (get_local $1)
       (i64.const 1000000)
      )
     )
     (i32.const 1800)
    )
   )
  )
  (call $prints
   (i32.const 80)
  )
  (i32.store
   (i32.add
    (get_local $33)
    (i32.const 240)
   )
   (i32.const 0)
  )
  (i64.store offset=224
   (get_local $33)
   (i64.const -1)
  )
  (i64.store offset=232
   (get_local $33)
   (i64.const 0)
  )
  (i64.store offset=208
   (get_local $33)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=216
   (get_local $33)
   (get_local $1)
  )
  (i32.store offset=244
   (get_local $33)
   (i32.const 0)
  )
  (i32.store offset=200
   (get_local $33)
   (i32.add
    (get_local $33)
    (i32.const 208)
   )
  )
  (call $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE5indexILy4582106519425105920ESB_Ly2ELb0EE11lower_boundERKy
   (i32.add
    (get_local $33)
    (i32.const 256)
   )
   (i32.add
    (get_local $33)
    (i32.const 200)
   )
   (i32.add
    (get_local $33)
    (i32.const 248)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eqz
       (tee_local $17
        (i32.load offset=260
         (get_local $33)
        )
       )
      )
     )
     (br_if $label$1
      (i64.ne
       (i64.load offset=248
        (get_local $33)
       )
       (i64.extend_u/i32
        (i32.div_u
         (i32.load offset=40
          (get_local $17)
         )
         (i32.const 1800)
        )
       )
      )
     )
     (i64.store offset=192
      (get_local $33)
      (tee_local $1
       (i64.load offset=256
        (get_local $33)
       )
      )
     )
     (set_local $28
      (i64.gt_u
       (get_local $1)
       (i64.const 4294967295)
      )
     )
     (set_local $2
      (i32.or
       (i32.add
        (get_local $33)
        (i32.const 192)
       )
       (i32.const 4)
      )
     )
     (br $label$0)
    )
    (i32.store offset=196
     (get_local $33)
     (i32.const 0)
    )
    (i32.store offset=192
     (get_local $33)
     (i32.add
      (get_local $33)
      (i32.const 200)
     )
    )
    (set_local $2
     (i32.or
      (i32.add
       (get_local $33)
       (i32.const 192)
      )
      (i32.const 4)
     )
    )
    (br $label$0)
   )
   (set_local $28
    (i32.const 0)
   )
   (i32.store offset=196
    (get_local $33)
    (i32.const 0)
   )
   (i32.store offset=192
    (get_local $33)
    (i32.add
     (get_local $33)
     (i32.const 200)
    )
   )
   (set_local $2
    (i32.or
     (i32.add
      (get_local $33)
      (i32.const 192)
     )
     (i32.const 4)
    )
   )
  )
  (call $eosio_assert
   (get_local $28)
   (i32.const 2304)
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (tee_local $28
       (i32.load offset=196
        (get_local $33)
       )
      )
     )
    )
    (set_local $14
     (i64.const 0)
    )
    (set_local $1
     (i64.const 0)
    )
    (loop $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (i32.load8_u offset=50
         (get_local $28)
        )
       )
      )
      (block $label$7
       (br_if $label$7
        (i32.eqz
         (i32.load8_u offset=49
          (get_local $28)
         )
        )
       )
       (br_if $label$7
        (i32.lt_u
         (i32.load offset=44
          (get_local $28)
         )
         (i32.const 3)
        )
       )
       (set_local $1
        (i64.add
         (i64.load offset=24
          (get_local $28)
         )
         (get_local $1)
        )
       )
       (br $label$6)
      )
      (set_local $14
       (i64.add
        (i64.load offset=24
         (get_local $28)
        )
        (get_local $14)
       )
      )
     )
     (drop
      (call $_ZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE5indexILy4582106519425105920ESB_Ly2ELb0EE14const_iteratorppEv
       (i32.add
        (get_local $33)
        (i32.const 192)
       )
      )
     )
     (br_if $label$5
      (tee_local $28
       (i32.load offset=196
        (get_local $33)
       )
      )
     )
     (br $label$3)
    )
   )
   (set_local $1
    (i64.const 0)
   )
   (set_local $14
    (i64.const 0)
   )
  )
  (call $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE5indexILy4582106519425105920ESB_Ly2ELb0EE11lower_boundERKy
   (i32.add
    (get_local $33)
    (i32.const 256)
   )
   (i32.add
    (get_local $33)
    (i32.const 200)
   )
   (i32.add
    (get_local $33)
    (i32.const 248)
   )
  )
  (block $label$8
   (block $label$9
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (tee_local $28
         (i32.load offset=260
          (get_local $33)
         )
        )
       )
      )
      (br_if $label$11
       (i64.ne
        (i64.load offset=248
         (get_local $33)
        )
        (i64.extend_u/i32
         (i32.div_u
          (i32.load offset=40
           (get_local $28)
          )
          (i32.const 1800)
         )
        )
       )
      )
      (i64.store offset=192
       (get_local $33)
       (tee_local $32
        (i64.load offset=256
         (get_local $33)
        )
       )
      )
      (br_if $label$10
       (i64.lt_u
        (get_local $32)
        (i64.const 4294967296)
       )
      )
      (call $__floatunditf
       (i32.add
        (get_local $33)
        (i32.const 112)
       )
       (get_local $1)
      )
      (set_local $28
       (i32.load
        (get_local $2)
       )
      )
      (set_local $11
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 256)
        )
        (i32.const 52)
       )
      )
      (set_local $10
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 328)
        )
        (i32.const 24)
       )
      )
      (set_local $9
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 328)
        )
        (i32.const 16)
       )
      )
      (set_local $8
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 328)
        )
        (i32.const 8)
       )
      )
      (set_local $7
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 368)
        )
        (i32.const 16)
       )
      )
      (set_local $6
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 368)
        )
        (i32.const 8)
       )
      )
      (set_local $4
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 368)
        )
        (i32.const 24)
       )
      )
      (set_local $5
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 256)
        )
        (i32.const 28)
       )
      )
      (set_local $3
       (i32.or
        (i32.add
         (get_local $33)
         (i32.const 312)
        )
        (i32.const 1)
       )
      )
      (set_local $13
       (i64.load
        (i32.add
         (i32.add
          (get_local $33)
          (i32.const 112)
         )
         (i32.const 8)
        )
       )
      )
      (set_local $12
       (i64.load offset=112
        (get_local $33)
       )
      )
      (set_local $23
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 256)
        )
        (i32.const 20)
       )
      )
      (set_local $24
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 256)
        )
        (i32.const 32)
       )
      )
      (set_local $25
       (i32.add
        (i32.add
         (get_local $33)
         (i32.const 256)
        )
        (i32.const 36)
       )
      )
      (set_local $27
       (i32.add
        (get_local $33)
        (i32.const 380)
       )
      )
      (loop $label$12
       (block $label$13
        (br_if $label$13
         (i32.eqz
          (i32.load8_u offset=50
           (get_local $28)
          )
         )
        )
        (block $label$14
         (block $label$15
          (br_if $label$15
           (i32.eqz
            (i32.load8_u offset=49
             (get_local $28)
            )
           )
          )
          (br_if $label$15
           (i32.lt_u
            (i32.load offset=44
             (get_local $28)
            )
            (i32.const 3)
           )
          )
          (call $__floatunditf
           (i32.add
            (get_local $33)
            (i32.const 96)
           )
           (i64.load offset=24
            (get_local $28)
           )
          )
          (call $__divtf3
           (i32.add
            (get_local $33)
            (i32.const 80)
           )
           (i64.load offset=96
            (get_local $33)
           )
           (i64.load
            (i32.add
             (i32.add
              (get_local $33)
              (i32.const 96)
             )
             (i32.const 8)
            )
           )
           (get_local $12)
           (get_local $13)
          )
          (call $__multf3
           (i32.add
            (get_local $33)
            (i32.const 64)
           )
           (i64.load offset=80
            (get_local $33)
           )
           (i64.load
            (i32.add
             (i32.add
              (get_local $33)
              (i32.const 80)
             )
             (i32.const 8)
            )
           )
           (i64.const 0)
           (i64.const 4617257010306482176)
          )
          (set_local $1
           (i64.load
            (i32.add
             (i32.add
              (get_local $33)
              (i32.const 64)
             )
             (i32.const 8)
            )
           )
          )
          (set_local $32
           (i64.load offset=64
            (get_local $33)
           )
          )
          (br $label$14)
         )
         (call $__floatunditf
          (i32.add
           (get_local $33)
           (i32.const 32)
          )
          (get_local $14)
         )
         (call $__floatunditf
          (i32.add
           (get_local $33)
           (i32.const 48)
          )
          (tee_local $1
           (i64.load offset=24
            (get_local $28)
           )
          )
         )
         (call $__divtf3
          (i32.add
           (get_local $33)
           (i32.const 16)
          )
          (i64.load offset=48
           (get_local $33)
          )
          (i64.load
           (i32.add
            (i32.add
             (get_local $33)
             (i32.const 48)
            )
            (i32.const 8)
           )
          )
          (i64.load offset=32
           (get_local $33)
          )
          (i64.load
           (i32.add
            (i32.add
             (get_local $33)
             (i32.const 32)
            )
            (i32.const 8)
           )
          )
         )
         (call $__multf3
          (get_local $33)
          (i64.load offset=16
           (get_local $33)
          )
          (i64.load
           (i32.add
            (i32.add
             (get_local $33)
             (i32.const 16)
            )
            (i32.const 8)
           )
          )
          (i64.const 0)
          (i64.const 4616694059816189952)
         )
         (set_local $14
          (i64.add
           (get_local $1)
           (get_local $14)
          )
         )
         (set_local $1
          (i64.load
           (i32.add
            (get_local $33)
            (i32.const 8)
           )
          )
         )
         (set_local $32
          (i64.load
           (get_local $33)
          )
         )
        )
        (set_local $16
         (i64.load
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
         )
        )
        (call $eosio_assert
         (i64.lt_u
          (i64.add
           (tee_local $15
            (call $__fixunstfdi
             (get_local $32)
             (get_local $1)
            )
           )
           (i64.const 4611686018427387903)
          )
          (i64.const 9223372036854775807)
         )
         (i32.const 240)
        )
        (set_local $1
         (i64.shr_u
          (get_local $16)
          (i64.const 8)
         )
        )
        (set_local $28
         (i32.const 0)
        )
        (block $label$16
         (block $label$17
          (loop $label$18
           (br_if $label$17
            (i32.gt_u
             (i32.add
              (i32.shl
               (i32.wrap/i64
                (get_local $1)
               )
               (i32.const 24)
              )
              (i32.const -1073741825)
             )
             (i32.const 452984830)
            )
           )
           (block $label$19
            (br_if $label$19
             (i64.ne
              (i64.and
               (tee_local $1
                (i64.shr_u
                 (get_local $1)
                 (i64.const 8)
                )
               )
               (i64.const 255)
              )
              (i64.const 0)
             )
            )
            (loop $label$20
             (br_if $label$17
              (i64.ne
               (i64.and
                (tee_local $1
                 (i64.shr_u
                  (get_local $1)
                  (i64.const 8)
                 )
                )
                (i64.const 255)
               )
               (i64.const 0)
              )
             )
             (br_if $label$20
              (i32.lt_s
               (tee_local $28
                (i32.add
                 (get_local $28)
                 (i32.const 1)
                )
               )
               (i32.const 7)
              )
             )
            )
           )
           (set_local $17
            (i32.const 1)
           )
           (br_if $label$18
            (i32.lt_s
             (tee_local $28
              (i32.add
               (get_local $28)
               (i32.const 1)
              )
             )
             (i32.const 7)
            )
           )
           (br $label$16)
          )
         )
         (set_local $17
          (i32.const 0)
         )
        )
        (call $eosio_assert
         (get_local $17)
         (i32.const 304)
        )
        (i32.store
         (tee_local $22
          (i32.add
           (i32.add
            (get_local $33)
            (i32.const 176)
           )
           (i32.const 8)
          )
         )
         (i32.const 0)
        )
        (set_local $1
         (i64.const 0)
        )
        (i64.store offset=176
         (get_local $33)
         (i64.const 0)
        )
        (set_local $32
         (i64.const 59)
        )
        (set_local $28
         (i32.const 128)
        )
        (set_local $29
         (i64.const 0)
        )
        (loop $label$21
         (set_local $30
          (i64.const 0)
         )
         (block $label$22
          (br_if $label$22
           (i64.gt_u
            (get_local $1)
            (i64.const 11)
           )
          )
          (block $label$23
           (block $label$24
            (br_if $label$24
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $17
                 (i32.load8_s
                  (get_local $28)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $17
             (i32.add
              (get_local $17)
              (i32.const 165)
             )
            )
            (br $label$23)
           )
           (set_local $17
            (select
             (i32.add
              (get_local $17)
              (i32.const 208)
             )
             (i32.const 0)
             (i32.lt_u
              (i32.and
               (i32.add
                (get_local $17)
                (i32.const -49)
               )
               (i32.const 255)
              )
              (i32.const 5)
             )
            )
           )
          )
          (set_local $30
           (i64.shl
            (i64.extend_u/i32
             (i32.and
              (get_local $17)
              (i32.const 31)
             )
            )
            (i64.and
             (get_local $32)
             (i64.const 4294967295)
            )
           )
          )
         )
         (set_local $28
          (i32.add
           (get_local $28)
           (i32.const 1)
          )
         )
         (set_local $1
          (i64.add
           (get_local $1)
           (i64.const 1)
          )
         )
         (set_local $29
          (i64.or
           (get_local $30)
           (get_local $29)
          )
         )
         (br_if $label$21
          (i64.ne
           (tee_local $32
            (i64.add
             (get_local $32)
             (i64.const -5)
            )
           )
           (i64.const -6)
          )
         )
        )
        (set_local $1
         (i64.const 0)
        )
        (set_local $30
         (i64.const 59)
        )
        (set_local $28
         (i32.const 352)
        )
        (set_local $31
         (i64.const 0)
        )
        (loop $label$25
         (block $label$26
          (block $label$27
           (block $label$28
            (block $label$29
             (block $label$30
              (br_if $label$30
               (i64.gt_u
                (get_local $1)
                (i64.const 5)
               )
              )
              (br_if $label$29
               (i32.gt_u
                (i32.and
                 (i32.add
                  (tee_local $17
                   (i32.load8_s
                    (get_local $28)
                   )
                  )
                  (i32.const -97)
                 )
                 (i32.const 255)
                )
                (i32.const 25)
               )
              )
              (set_local $17
               (i32.add
                (get_local $17)
                (i32.const 165)
               )
              )
              (br $label$28)
             )
             (set_local $32
              (i64.const 0)
             )
             (br_if $label$27
              (i64.le_u
               (get_local $1)
               (i64.const 11)
              )
             )
             (br $label$26)
            )
            (set_local $17
             (select
              (i32.add
               (get_local $17)
               (i32.const 208)
              )
              (i32.const 0)
              (i32.lt_u
               (i32.and
                (i32.add
                 (get_local $17)
                 (i32.const -49)
                )
                (i32.const 255)
               )
               (i32.const 5)
              )
             )
            )
           )
           (set_local $32
            (i64.shr_s
             (i64.shl
              (i64.extend_u/i32
               (get_local $17)
              )
              (i64.const 56)
             )
             (i64.const 56)
            )
           )
          )
          (set_local $32
           (i64.shl
            (i64.and
             (get_local $32)
             (i64.const 31)
            )
            (i64.and
             (get_local $30)
             (i64.const 4294967295)
            )
           )
          )
         )
         (set_local $28
          (i32.add
           (get_local $28)
           (i32.const 1)
          )
         )
         (set_local $1
          (i64.add
           (get_local $1)
           (i64.const 1)
          )
         )
         (set_local $31
          (i64.or
           (get_local $32)
           (get_local $31)
          )
         )
         (br_if $label$25
          (i64.ne
           (tee_local $30
            (i64.add
             (get_local $30)
             (i64.const -5)
            )
           )
           (i64.const -6)
          )
         )
        )
        (i64.store
         (i32.add
          (i32.add
           (get_local $33)
           (i32.const 160)
          )
          (i32.const 8)
         )
         (get_local $31)
        )
        (i64.store offset=160
         (get_local $33)
         (get_local $29)
        )
        (set_local $1
         (i64.const 0)
        )
        (set_local $32
         (i64.const 59)
        )
        (set_local $28
         (i32.const 368)
        )
        (set_local $29
         (i64.const 0)
        )
        (loop $label$31
         (set_local $30
          (i64.const 0)
         )
         (block $label$32
          (br_if $label$32
           (i64.gt_u
            (get_local $1)
            (i64.const 11)
           )
          )
          (block $label$33
           (block $label$34
            (br_if $label$34
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $17
                 (i32.load8_s
                  (get_local $28)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $17
             (i32.add
              (get_local $17)
              (i32.const 165)
             )
            )
            (br $label$33)
           )
           (set_local $17
            (select
             (i32.add
              (get_local $17)
              (i32.const 208)
             )
             (i32.const 0)
             (i32.lt_u
              (i32.and
               (i32.add
                (get_local $17)
                (i32.const -49)
               )
               (i32.const 255)
              )
              (i32.const 5)
             )
            )
           )
          )
          (set_local $30
           (i64.shl
            (i64.extend_u/i32
             (i32.and
              (get_local $17)
              (i32.const 31)
             )
            )
            (i64.and
             (get_local $32)
             (i64.const 4294967295)
            )
           )
          )
         )
         (set_local $28
          (i32.add
           (get_local $28)
           (i32.const 1)
          )
         )
         (set_local $1
          (i64.add
           (get_local $1)
           (i64.const 1)
          )
         )
         (set_local $29
          (i64.or
           (get_local $30)
           (get_local $29)
          )
         )
         (br_if $label$31
          (i64.ne
           (tee_local $32
            (i64.add
             (get_local $32)
             (i64.const -5)
            )
           )
           (i64.const -6)
          )
         )
        )
        (set_local $1
         (i64.const 0)
        )
        (set_local $30
         (i64.const 59)
        )
        (set_local $28
         (i32.const 352)
        )
        (set_local $31
         (i64.const 0)
        )
        (loop $label$35
         (block $label$36
          (block $label$37
           (block $label$38
            (block $label$39
             (block $label$40
              (br_if $label$40
               (i64.gt_u
                (get_local $1)
                (i64.const 5)
               )
              )
              (br_if $label$39
               (i32.gt_u
                (i32.and
                 (i32.add
                  (tee_local $17
                   (i32.load8_s
                    (get_local $28)
                   )
                  )
                  (i32.const -97)
                 )
                 (i32.const 255)
                )
                (i32.const 25)
               )
              )
              (set_local $17
               (i32.add
                (get_local $17)
                (i32.const 165)
               )
              )
              (br $label$38)
             )
             (set_local $32
              (i64.const 0)
             )
             (br_if $label$37
              (i64.le_u
               (get_local $1)
               (i64.const 11)
              )
             )
             (br $label$36)
            )
            (set_local $17
             (select
              (i32.add
               (get_local $17)
               (i32.const 208)
              )
              (i32.const 0)
              (i32.lt_u
               (i32.and
                (i32.add
                 (get_local $17)
                 (i32.const -49)
                )
                (i32.const 255)
               )
               (i32.const 5)
              )
             )
            )
           )
           (set_local $32
            (i64.shr_s
             (i64.shl
              (i64.extend_u/i32
               (get_local $17)
              )
              (i64.const 56)
             )
             (i64.const 56)
            )
           )
          )
          (set_local $32
           (i64.shl
            (i64.and
             (get_local $32)
             (i64.const 31)
            )
            (i64.and
             (get_local $30)
             (i64.const 4294967295)
            )
           )
          )
         )
         (set_local $28
          (i32.add
           (get_local $28)
           (i32.const 1)
          )
         )
         (set_local $1
          (i64.add
           (get_local $1)
           (i64.const 1)
          )
         )
         (set_local $31
          (i64.or
           (get_local $32)
           (get_local $31)
          )
         )
         (br_if $label$35
          (i64.ne
           (tee_local $30
            (i64.add
             (get_local $30)
             (i64.const -5)
            )
           )
           (i64.const -6)
          )
         )
        )
        (i64.store
         (tee_local $17
          (i32.add
           (i32.add
            (get_local $33)
            (i32.const 144)
           )
           (i32.const 8)
          )
         )
         (get_local $31)
        )
        (i64.store offset=144
         (get_local $33)
         (get_local $29)
        )
        (call $_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
         (i32.add
          (get_local $33)
          (i32.const 176)
         )
         (i32.add
          (get_local $33)
          (i32.const 160)
         )
        )
        (block $label$41
         (block $label$42
          (br_if $label$42
           (i32.eq
            (tee_local $28
             (i32.load offset=180
              (get_local $33)
             )
            )
            (i32.load
             (get_local $22)
            )
           )
          )
          (i64.store
           (get_local $28)
           (i64.load offset=144
            (get_local $33)
           )
          )
          (i64.store
           (i32.add
            (get_local $28)
            (i32.const 8)
           )
           (i64.load
            (get_local $17)
           )
          )
          (i32.store offset=180
           (get_local $33)
           (tee_local $28
            (i32.add
             (get_local $28)
             (i32.const 16)
            )
           )
          )
          (br $label$41)
         )
         (call $_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
          (i32.add
           (get_local $33)
           (i32.const 176)
          )
          (i32.add
           (get_local $33)
           (i32.const 144)
          )
         )
         (set_local $28
          (i32.load offset=180
           (get_local $33)
          )
         )
        )
        (i32.store
         (tee_local $21
          (i32.add
           (i32.add
            (get_local $33)
            (i32.const 128)
           )
           (i32.const 8)
          )
         )
         (i32.const 0)
        )
        (i64.store offset=128
         (get_local $33)
         (i64.const 0)
        )
        (block $label$43
         (br_if $label$43
          (i32.eqz
           (tee_local $17
            (i32.shr_s
             (tee_local $28
              (i32.sub
               (get_local $28)
               (i32.load offset=176
                (get_local $33)
               )
              )
             )
             (i32.const 4)
            )
           )
          )
         )
         (br_if $label$8
          (i32.ge_u
           (get_local $17)
           (i32.const 268435456)
          )
         )
         (i32.store
          (get_local $21)
          (i32.add
           (tee_local $28
            (call $_Znwj
             (get_local $28)
            )
           )
           (i32.shl
            (get_local $17)
            (i32.const 4)
           )
          )
         )
         (i32.store offset=128
          (get_local $33)
          (get_local $28)
         )
         (i32.store offset=132
          (get_local $33)
          (get_local $28)
         )
         (br_if $label$43
          (i32.lt_s
           (tee_local $17
            (i32.sub
             (i32.load offset=180
              (get_local $33)
             )
             (tee_local $22
              (i32.load offset=176
               (get_local $33)
              )
             )
            )
           )
           (i32.const 1)
          )
         )
         (drop
          (call $memcpy
           (get_local $28)
           (get_local $22)
           (get_local $17)
          )
         )
         (i32.store offset=132
          (get_local $33)
          (i32.add
           (i32.load offset=132
            (get_local $33)
           )
           (get_local $17)
          )
         )
        )
        (set_local $1
         (i64.const 0)
        )
        (set_local $32
         (i64.const 59)
        )
        (set_local $28
         (i32.const 128)
        )
        (set_local $29
         (i64.const 0)
        )
        (loop $label$44
         (set_local $30
          (i64.const 0)
         )
         (block $label$45
          (br_if $label$45
           (i64.gt_u
            (get_local $1)
            (i64.const 11)
           )
          )
          (block $label$46
           (block $label$47
            (br_if $label$47
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $17
                 (i32.load8_s
                  (get_local $28)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $17
             (i32.add
              (get_local $17)
              (i32.const 165)
             )
            )
            (br $label$46)
           )
           (set_local $17
            (select
             (i32.add
              (get_local $17)
              (i32.const 208)
             )
             (i32.const 0)
             (i32.lt_u
              (i32.and
               (i32.add
                (get_local $17)
                (i32.const -49)
               )
               (i32.const 255)
              )
              (i32.const 5)
             )
            )
           )
          )
          (set_local $30
           (i64.shl
            (i64.extend_u/i32
             (i32.and
              (get_local $17)
              (i32.const 31)
             )
            )
            (i64.and
             (get_local $32)
             (i64.const 4294967295)
            )
           )
          )
         )
         (set_local $28
          (i32.add
           (get_local $28)
           (i32.const 1)
          )
         )
         (set_local $1
          (i64.add
           (get_local $1)
           (i64.const 1)
          )
         )
         (set_local $29
          (i64.or
           (get_local $30)
           (get_local $29)
          )
         )
         (br_if $label$44
          (i64.ne
           (tee_local $32
            (i64.add
             (get_local $32)
             (i64.const -5)
            )
           )
           (i64.const -6)
          )
         )
        )
        (set_local $1
         (i64.const 0)
        )
        (set_local $30
         (i64.const 59)
        )
        (set_local $28
         (i32.const 2352)
        )
        (set_local $31
         (i64.const 0)
        )
        (loop $label$48
         (block $label$49
          (block $label$50
           (block $label$51
            (block $label$52
             (block $label$53
              (br_if $label$53
               (i64.gt_u
                (get_local $1)
                (i64.const 4)
               )
              )
              (br_if $label$52
               (i32.gt_u
                (i32.and
                 (i32.add
                  (tee_local $17
                   (i32.load8_s
                    (get_local $28)
                   )
                  )
                  (i32.const -97)
                 )
                 (i32.const 255)
                )
                (i32.const 25)
               )
              )
              (set_local $17
               (i32.add
                (get_local $17)
                (i32.const 165)
               )
              )
              (br $label$51)
             )
             (set_local $32
              (i64.const 0)
             )
             (br_if $label$50
              (i64.le_u
               (get_local $1)
               (i64.const 11)
              )
             )
             (br $label$49)
            )
            (set_local $17
             (select
              (i32.add
               (get_local $17)
               (i32.const 208)
              )
              (i32.const 0)
              (i32.lt_u
               (i32.and
                (i32.add
                 (get_local $17)
                 (i32.const -49)
                )
                (i32.const 255)
               )
               (i32.const 5)
              )
             )
            )
           )
           (set_local $32
            (i64.shr_s
             (i64.shl
              (i64.extend_u/i32
               (get_local $17)
              )
              (i64.const 56)
             )
             (i64.const 56)
            )
           )
          )
          (set_local $32
           (i64.shl
            (i64.and
             (get_local $32)
             (i64.const 31)
            )
            (i64.and
             (get_local $30)
             (i64.const 4294967295)
            )
           )
          )
         )
         (set_local $28
          (i32.add
           (get_local $28)
           (i32.const 1)
          )
         )
         (set_local $1
          (i64.add
           (get_local $1)
           (i64.const 1)
          )
         )
         (set_local $31
          (i64.or
           (get_local $32)
           (get_local $31)
          )
         )
         (br_if $label$48
          (i64.ne
           (tee_local $30
            (i64.add
             (get_local $30)
             (i64.const -5)
            )
           )
           (i64.const -6)
          )
         )
        )
        (set_local $18
         (i32.load
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $22
          (i32.add
           (i32.add
            (get_local $33)
            (i32.const 312)
           )
           (i32.const 8)
          )
         )
         (i32.const 0)
        )
        (i64.store offset=312
         (get_local $33)
         (i64.const 0)
        )
        (br_if $label$9
         (i32.ge_u
          (tee_local $28
           (call $strlen
            (i32.const 816)
           )
          )
          (i32.const -16)
         )
        )
        (block $label$54
         (block $label$55
          (block $label$56
           (br_if $label$56
            (i32.ge_u
             (get_local $28)
             (i32.const 11)
            )
           )
           (i32.store8 offset=312
            (get_local $33)
            (i32.shl
             (get_local $28)
             (i32.const 1)
            )
           )
           (set_local $17
            (get_local $3)
           )
           (br_if $label$55
            (get_local $28)
           )
           (br $label$54)
          )
          (i32.store
           (get_local $22)
           (tee_local $17
            (call $_Znwj
             (tee_local $20
              (i32.and
               (i32.add
                (get_local $28)
                (i32.const 16)
               )
               (i32.const -16)
              )
             )
            )
           )
          )
          (i32.store offset=312
           (get_local $33)
           (i32.or
            (get_local $20)
            (i32.const 1)
           )
          )
          (i32.store offset=316
           (get_local $33)
           (get_local $28)
          )
         )
         (drop
          (call $memcpy
           (get_local $17)
           (i32.const 816)
           (get_local $28)
          )
         )
        )
        (i32.store8
         (i32.add
          (get_local $17)
          (get_local $28)
         )
         (i32.const 0)
        )
        (set_local $1
         (i64.load
          (i32.add
           (get_local $18)
           (i32.const 8)
          )
         )
        )
        (i64.store
         (get_local $6)
         (get_local $15)
        )
        (i64.store
         (get_local $7)
         (get_local $16)
        )
        (i32.store
         (i32.add
          (get_local $4)
          (i32.const 4)
         )
         (i32.load offset=316
          (get_local $33)
         )
        )
        (i64.store offset=368
         (get_local $33)
         (get_local $1)
        )
        (i32.store
         (get_local $4)
         (i32.load offset=312
          (get_local $33)
         )
        )
        (i32.store
         (i32.add
          (get_local $4)
          (i32.const 8)
         )
         (i32.load
          (get_local $22)
         )
        )
        (i32.store offset=312
         (get_local $33)
         (i32.const 0)
        )
        (i32.store offset=316
         (get_local $33)
         (i32.const 0)
        )
        (i32.store
         (get_local $22)
         (i32.const 0)
        )
        (i64.store
         (i32.add
          (i32.add
           (get_local $33)
           (i32.const 256)
          )
          (i32.const 8)
         )
         (get_local $31)
        )
        (i64.store offset=256
         (get_local $33)
         (get_local $29)
        )
        (i32.store
         (tee_local $18
          (i32.add
           (i32.add
            (get_local $33)
            (i32.const 256)
           )
           (i32.const 16)
          )
         )
         (i32.load offset=128
          (get_local $33)
         )
        )
        (i32.store
         (get_local $23)
         (i32.load offset=132
          (get_local $33)
         )
        )
        (set_local $28
         (i32.load
          (get_local $21)
         )
        )
        (i32.store
         (get_local $21)
         (i32.const 0)
        )
        (i32.store
         (i32.add
          (i32.add
           (get_local $33)
           (i32.const 256)
          )
          (i32.const 24)
         )
         (get_local $28)
        )
        (i32.store offset=132
         (get_local $33)
         (i32.const 0)
        )
        (i32.store offset=128
         (get_local $33)
         (i32.const 0)
        )
        (i32.store
         (get_local $5)
         (i32.const 0)
        )
        (i32.store
         (get_local $24)
         (i32.const 0)
        )
        (i32.store
         (get_local $25)
         (i32.const 0)
        )
        (set_local $28
         (i32.add
          (tee_local $17
           (select
            (i32.load
             (tee_local $26
              (i32.add
               (i32.add
                (get_local $33)
                (i32.const 368)
               )
               (i32.const 28)
              )
             )
            )
            (i32.shr_u
             (tee_local $28
              (i32.load8_u
               (get_local $4)
              )
             )
             (i32.const 1)
            )
            (i32.and
             (get_local $28)
             (i32.const 1)
            )
           )
          )
          (i32.const 24)
         )
        )
        (set_local $1
         (i64.extend_u/i32
          (get_local $17)
         )
        )
        (loop $label$57
         (set_local $28
          (i32.add
           (get_local $28)
           (i32.const 1)
          )
         )
         (br_if $label$57
          (i64.ne
           (tee_local $1
            (i64.shr_u
             (get_local $1)
             (i64.const 7)
            )
           )
           (i64.const 0)
          )
         )
        )
        (block $label$58
         (block $label$59
          (br_if $label$59
           (i32.eqz
            (get_local $28)
           )
          )
          (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
           (get_local $5)
           (get_local $28)
          )
          (set_local $17
           (i32.load
            (get_local $24)
           )
          )
          (set_local $28
           (i32.load
            (get_local $5)
           )
          )
          (br $label$58)
         )
         (set_local $17
          (i32.const 0)
         )
         (set_local $28
          (i32.const 0)
         )
        )
        (i32.store
         (get_local $8)
         (get_local $17)
        )
        (i32.store offset=332
         (get_local $33)
         (get_local $28)
        )
        (i32.store offset=328
         (get_local $33)
         (get_local $28)
        )
        (call $eosio_assert
         (i32.gt_s
          (i32.sub
           (get_local $17)
           (get_local $28)
          )
          (i32.const 7)
         )
         (i32.const 400)
        )
        (drop
         (call $memcpy
          (i32.load offset=332
           (get_local $33)
          )
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
          (i32.const 8)
         )
        )
        (i32.store offset=332
         (get_local $33)
         (tee_local $28
          (i32.add
           (i32.load offset=332
            (get_local $33)
           )
           (i32.const 8)
          )
         )
        )
        (call $eosio_assert
         (i32.gt_s
          (i32.sub
           (i32.load
            (get_local $8)
           )
           (get_local $28)
          )
          (i32.const 7)
         )
         (i32.const 400)
        )
        (drop
         (call $memcpy
          (i32.load offset=332
           (get_local $33)
          )
          (get_local $6)
          (i32.const 8)
         )
        )
        (i32.store offset=332
         (get_local $33)
         (tee_local $28
          (i32.add
           (i32.load offset=332
            (get_local $33)
           )
           (i32.const 8)
          )
         )
        )
        (call $eosio_assert
         (i32.gt_s
          (i32.sub
           (i32.load
            (get_local $8)
           )
           (get_local $28)
          )
          (i32.const 7)
         )
         (i32.const 400)
        )
        (drop
         (call $memcpy
          (i32.load offset=332
           (get_local $33)
          )
          (get_local $7)
          (i32.const 8)
         )
        )
        (i32.store offset=332
         (get_local $33)
         (i32.add
          (i32.load offset=332
           (get_local $33)
          )
          (i32.const 8)
         )
        )
        (drop
         (call $_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
          (i32.add
           (get_local $33)
           (i32.const 328)
          )
          (get_local $4)
         )
        )
        (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
         (i32.add
          (get_local $33)
          (i32.const 328)
         )
         (i32.add
          (get_local $33)
          (i32.const 256)
         )
        )
        (call $send_inline
         (tee_local $28
          (i32.load offset=328
           (get_local $33)
          )
         )
         (i32.sub
          (i32.load offset=332
           (get_local $33)
          )
          (get_local $28)
         )
        )
        (block $label$60
         (br_if $label$60
          (i32.eqz
           (tee_local $28
            (i32.load offset=328
             (get_local $33)
            )
           )
          )
         )
         (i32.store offset=332
          (get_local $33)
          (get_local $28)
         )
         (call $_ZdlPv
          (get_local $28)
         )
        )
        (block $label$61
         (br_if $label$61
          (i32.eqz
           (tee_local $28
            (i32.load
             (get_local $5)
            )
           )
          )
         )
         (i32.store
          (get_local $24)
          (get_local $28)
         )
         (call $_ZdlPv
          (get_local $28)
         )
        )
        (block $label$62
         (br_if $label$62
          (i32.eqz
           (tee_local $28
            (i32.load
             (get_local $18)
            )
           )
          )
         )
         (i32.store
          (get_local $23)
          (get_local $28)
         )
         (call $_ZdlPv
          (get_local $28)
         )
        )
        (block $label$63
         (br_if $label$63
          (i32.eqz
           (i32.and
            (i32.load8_u
             (get_local $4)
            )
            (i32.const 1)
           )
          )
         )
         (call $_ZdlPv
          (i32.load
           (i32.add
            (i32.add
             (get_local $33)
             (i32.const 368)
            )
            (i32.const 32)
           )
          )
         )
        )
        (block $label$64
         (br_if $label$64
          (i32.eqz
           (i32.and
            (i32.load8_u offset=312
             (get_local $33)
            )
            (i32.const 1)
           )
          )
         )
         (call $_ZdlPv
          (i32.load
           (get_local $22)
          )
         )
        )
        (block $label$65
         (br_if $label$65
          (i32.eqz
           (tee_local $28
            (i32.load offset=128
             (get_local $33)
            )
           )
          )
         )
         (i32.store offset=132
          (get_local $33)
          (get_local $28)
         )
         (call $_ZdlPv
          (get_local $28)
         )
        )
        (call $eosio_assert
         (i32.ne
          (tee_local $28
           (i32.load offset=196
            (get_local $33)
           )
          )
          (i32.const 0)
         )
         (i32.const 448)
        )
        (call $eosio_assert
         (i32.eq
          (i32.load offset=52
           (get_local $28)
          )
          (tee_local $17
           (i32.load offset=200
            (get_local $33)
           )
          )
         )
         (i32.const 496)
        )
        (call $eosio_assert
         (i64.eq
          (i64.load
           (get_local $17)
          )
          (call $current_receiver)
         )
         (i32.const 544)
        )
        (i64.store
         (get_local $8)
         (i64.load
          (tee_local $21
           (i32.add
            (get_local $28)
            (i32.const 16)
           )
          )
         )
        )
        (i64.store offset=328
         (get_local $33)
         (i64.load
          (tee_local $18
           (i32.add
            (get_local $28)
            (i32.const 8)
           )
          )
         )
        )
        (set_local $1
         (i64.load
          (tee_local $20
           (i32.add
            (get_local $28)
            (i32.const 32)
           )
          )
         )
        )
        (i64.store
         (get_local $9)
         (i64.extend_u/i32
          (i32.div_u
           (i32.load
            (tee_local $19
             (i32.add
              (get_local $28)
              (i32.const 40)
             )
            )
           )
           (i32.const 1800)
          )
         )
        )
        (i64.store
         (get_local $10)
         (get_local $1)
        )
        (set_local $1
         (i64.load
          (get_local $28)
         )
        )
        (i32.store8 offset=51
         (get_local $28)
         (i32.const 1)
        )
        (call $eosio_assert
         (i32.const 1)
         (i32.const 704)
        )
        (i32.store
         (get_local $22)
         (get_local $11)
        )
        (i32.store offset=316
         (get_local $33)
         (i32.add
          (get_local $33)
          (i32.const 256)
         )
        )
        (i32.store offset=312
         (get_local $33)
         (i32.add
          (get_local $33)
          (i32.const 256)
         )
        )
        (i32.store offset=360
         (get_local $33)
         (i32.add
          (get_local $33)
          (i32.const 312)
         )
        )
        (i32.store
         (get_local $6)
         (get_local $21)
        )
        (i32.store
         (get_local $27)
         (i32.add
          (get_local $28)
          (i32.const 24)
         )
        )
        (i32.store
         (get_local $7)
         (get_local $20)
        )
        (i32.store
         (i32.add
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
          (i32.const 20)
         )
         (get_local $19)
        )
        (i32.store
         (get_local $4)
         (i32.add
          (get_local $28)
          (i32.const 44)
         )
        )
        (i32.store offset=372
         (get_local $33)
         (get_local $18)
        )
        (i32.store offset=368
         (get_local $33)
         (get_local $28)
        )
        (i32.store
         (get_local $26)
         (i32.add
          (get_local $28)
          (i32.const 48)
         )
        )
        (i32.store
         (i32.add
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
          (i32.const 32)
         )
         (i32.add
          (get_local $28)
          (i32.const 49)
         )
        )
        (i32.store
         (i32.add
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
          (i32.const 36)
         )
         (i32.add
          (get_local $28)
          (i32.const 50)
         )
        )
        (i32.store
         (i32.add
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
          (i32.const 40)
         )
         (i32.add
          (get_local $28)
          (i32.const 51)
         )
        )
        (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_S6_RKmS8_RKbSA_SA_SA_EEEZN5eosiolsINSC_10datastreamIPcEEN12eparticlectr13rewardhistoryELPv0EEERT_SL_RKT0_EUlRKSK_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7ELj8ELj9ELj10EEEEvSL_OSM_NSt3__116integer_sequenceIjJXspT1_EEEENST_17integral_constantIbLb0EEE
         (i32.add
          (get_local $33)
          (i32.const 368)
         )
         (i32.add
          (get_local $33)
          (i32.const 360)
         )
        )
        (call $db_update_i64
         (i32.load offset=56
          (get_local $28)
         )
         (i64.const 0)
         (i32.add
          (get_local $33)
          (i32.const 256)
         )
         (i32.const 52)
        )
        (block $label$66
         (br_if $label$66
          (i64.lt_u
           (get_local $1)
           (i64.load offset=16
            (get_local $17)
           )
          )
         )
         (i64.store
          (i32.add
           (get_local $17)
           (i32.const 16)
          )
          (select
           (i64.const -2)
           (i64.add
            (get_local $1)
            (i64.const 1)
           )
           (i64.gt_u
            (get_local $1)
            (i64.const -3)
           )
          )
         )
        )
        (i64.store offset=368
         (get_local $33)
         (i64.load
          (get_local $18)
         )
        )
        (block $label$67
         (br_if $label$67
          (i32.eqz
           (call $memcmp
            (i32.add
             (get_local $33)
             (i32.const 328)
            )
            (i32.add
             (get_local $33)
             (i32.const 368)
            )
            (i32.const 8)
           )
          )
         )
         (block $label$68
          (br_if $label$68
           (i32.gt_s
            (tee_local $22
             (i32.load offset=60
              (get_local $28)
             )
            )
            (i32.const -1)
           )
          )
          (i32.store
           (i32.add
            (get_local $28)
            (i32.const 60)
           )
           (tee_local $22
            (call $db_idx64_find_primary
             (i64.load
              (get_local $17)
             )
             (i64.load offset=8
              (get_local $17)
             )
             (i64.const -4992121821513105408)
             (i32.add
              (get_local $33)
              (i32.const 360)
             )
             (get_local $1)
            )
           )
          )
         )
         (call $db_idx64_update
          (get_local $22)
          (i64.const 0)
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
         )
        )
        (i64.store offset=368
         (get_local $33)
         (i64.load
          (get_local $21)
         )
        )
        (block $label$69
         (br_if $label$69
          (i32.eqz
           (call $memcmp
            (get_local $8)
            (i32.add
             (get_local $33)
             (i32.const 368)
            )
            (i32.const 8)
           )
          )
         )
         (block $label$70
          (br_if $label$70
           (i32.gt_s
            (tee_local $22
             (i32.load
              (tee_local $21
               (i32.add
                (get_local $28)
                (i32.const 64)
               )
              )
             )
            )
            (i32.const -1)
           )
          )
          (i32.store
           (get_local $21)
           (tee_local $22
            (call $db_idx64_find_primary
             (i64.load
              (get_local $17)
             )
             (i64.load offset=8
              (get_local $17)
             )
             (i64.const -4992121821513105407)
             (i32.add
              (get_local $33)
              (i32.const 360)
             )
             (get_local $1)
            )
           )
          )
         )
         (call $db_idx64_update
          (get_local $22)
          (i64.const 0)
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
         )
        )
        (i64.store offset=368
         (get_local $33)
         (i64.extend_u/i32
          (i32.div_u
           (i32.load
            (get_local $19)
           )
           (i32.const 1800)
          )
         )
        )
        (block $label$71
         (br_if $label$71
          (i32.eqz
           (call $memcmp
            (get_local $9)
            (i32.add
             (get_local $33)
             (i32.const 368)
            )
            (i32.const 8)
           )
          )
         )
         (block $label$72
          (br_if $label$72
           (i32.gt_s
            (tee_local $22
             (i32.load
              (tee_local $21
               (i32.add
                (get_local $28)
                (i32.const 68)
               )
              )
             )
            )
            (i32.const -1)
           )
          )
          (i32.store
           (get_local $21)
           (tee_local $22
            (call $db_idx64_find_primary
             (i64.load
              (get_local $17)
             )
             (i64.load offset=8
              (get_local $17)
             )
             (i64.const -4992121821513105406)
             (i32.add
              (get_local $33)
              (i32.const 360)
             )
             (get_local $1)
            )
           )
          )
         )
         (call $db_idx64_update
          (get_local $22)
          (i64.const 0)
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
         )
        )
        (i64.store offset=368
         (get_local $33)
         (i64.load
          (get_local $20)
         )
        )
        (block $label$73
         (br_if $label$73
          (i32.eqz
           (call $memcmp
            (get_local $10)
            (i32.add
             (get_local $33)
             (i32.const 368)
            )
            (i32.const 8)
           )
          )
         )
         (block $label$74
          (br_if $label$74
           (i32.gt_s
            (tee_local $28
             (i32.load
              (tee_local $22
               (i32.add
                (get_local $28)
                (i32.const 72)
               )
              )
             )
            )
            (i32.const -1)
           )
          )
          (i32.store
           (get_local $22)
           (tee_local $28
            (call $db_idx64_find_primary
             (i64.load
              (get_local $17)
             )
             (i64.load offset=8
              (get_local $17)
             )
             (i64.const -4992121821513105405)
             (i32.add
              (get_local $33)
              (i32.const 360)
             )
             (get_local $1)
            )
           )
          )
         )
         (call $db_idx64_update
          (get_local $28)
          (i64.const 0)
          (i32.add
           (get_local $33)
           (i32.const 368)
          )
         )
        )
        (br_if $label$13
         (i32.eqz
          (tee_local $28
           (i32.load offset=176
            (get_local $33)
           )
          )
         )
        )
        (i32.store offset=180
         (get_local $33)
         (get_local $28)
        )
        (call $_ZdlPv
         (get_local $28)
        )
       )
       (drop
        (call $_ZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE5indexILy4582106519425105920ESB_Ly2ELb0EE14const_iteratorppEv
         (i32.add
          (get_local $33)
          (i32.const 192)
         )
        )
       )
       (br_if $label$12
        (tee_local $28
         (i32.load offset=196
          (get_local $33)
         )
        )
       )
       (br $label$10)
      )
     )
     (i64.store offset=192
      (get_local $33)
      (i64.extend_u/i32
       (i32.add
        (get_local $33)
        (i32.const 200)
       )
      )
     )
    )
    (block $label$75
     (br_if $label$75
      (i32.eqz
       (tee_local $4
        (i32.load offset=232
         (get_local $33)
        )
       )
      )
     )
     (block $label$76
      (block $label$77
       (br_if $label$77
        (i32.eq
         (tee_local $28
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $33)
             (i32.const 236)
            )
           )
          )
         )
         (get_local $4)
        )
       )
       (loop $label$78
        (set_local $17
         (i32.load
          (tee_local $28
           (i32.add
            (get_local $28)
            (i32.const -24)
           )
          )
         )
        )
        (i32.store
         (get_local $28)
         (i32.const 0)
        )
        (block $label$79
         (br_if $label$79
          (i32.eqz
           (get_local $17)
          )
         )
         (call $_ZdlPv
          (get_local $17)
         )
        )
        (br_if $label$78
         (i32.ne
          (get_local $4)
          (get_local $28)
         )
        )
       )
       (set_local $28
        (i32.load
         (i32.add
          (get_local $33)
          (i32.const 232)
         )
        )
       )
       (br $label$76)
      )
      (set_local $28
       (get_local $4)
      )
     )
     (i32.store
      (get_local $8)
      (get_local $4)
     )
     (call $_ZdlPv
      (get_local $28)
     )
    )
    (i32.store offset=4
     (i32.const 0)
     (i32.add
      (get_local $33)
      (i32.const 416)
     )
    )
    (return)
   )
   (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
    (i32.add
     (get_local $33)
     (i32.const 312)
    )
   )
   (unreachable)
  )
  (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $33)
    (i32.const 128)
   )
  )
  (unreachable)
 )
 (func $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE5indexILy4582106519425105920ESB_Ly2ELb0EE11lower_boundERKy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $10)
   (i64.const 0)
  )
  (i64.store
   (get_local $10)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $3
      (call $db_idx64_lowerbound
       (i64.load
        (tee_local $8
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $8)
       )
       (i64.const -4992121821513105406)
       (get_local $10)
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $5
    (i64.load offset=8
     (get_local $10)
    )
   )
   (block $label$1
    (br_if $label$1
     (i32.eq
      (tee_local $9
       (i32.load
        (i32.add
         (tee_local $4
          (i32.load
           (get_local $1)
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $6
       (i32.load offset=24
        (get_local $4)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $9)
      (i32.const -24)
     )
    )
    (set_local $7
     (i32.sub
      (i32.const 0)
      (get_local $6)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i64.eq
       (i64.load
        (i32.load
         (get_local $2)
        )
       )
       (get_local $5)
      )
     )
     (set_local $9
      (get_local $2)
     )
     (set_local $2
      (tee_local $8
       (i32.add
        (get_local $2)
        (i32.const -24)
       )
      )
     )
     (br_if $label$2
      (i32.ne
       (i32.add
        (get_local $8)
        (get_local $7)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (get_local $9)
       (get_local $6)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=52
        (tee_local $2
         (i32.load
          (i32.add
           (get_local $9)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $4)
      )
      (i32.const 144)
     )
     (br $label$3)
    )
    (set_local $2
     (i32.const 0)
    )
    (br_if $label$3
     (i32.lt_s
      (tee_local $8
       (call $db_find_i64
        (i64.load
         (get_local $4)
        )
        (i64.load offset=8
         (get_local $4)
        )
        (i64.const -4992121821513105408)
        (get_local $5)
       )
      )
      (i32.const 0)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=52
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (get_local $8)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 144)
    )
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const 68)
    )
    (get_local $3)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE5indexILy4582106519425105920ESB_Ly2ELb0EE14const_iteratorppEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 0)
   )
   (i32.const 1056)
  )
  (block $label$0
   (br_if $label$0
    (i32.ne
     (tee_local $6
      (i32.load
       (i32.add
        (tee_local $8
         (i32.load offset=4
          (get_local $0)
         )
        )
        (i32.const 68)
       )
      )
     )
     (i32.const -1)
    )
   )
   (set_local $6
    (call $db_idx64_find_primary
     (i64.load
      (tee_local $6
       (i32.load
        (i32.load
         (get_local $0)
        )
       )
      )
     )
     (i64.load offset=8
      (get_local $6)
     )
     (i64.const -4992121821513105406)
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
     (i64.load
      (get_local $8)
     )
    )
   )
   (i32.store
    (i32.add
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
     (i32.const 68)
    )
    (get_local $6)
   )
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $1
      (call $db_idx64_next
       (get_local $6)
       (i32.add
        (get_local $9)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $3
    (i64.load offset=8
     (get_local $9)
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.eq
      (tee_local $8
       (i32.load
        (i32.add
         (tee_local $2
          (i32.load
           (i32.load
            (get_local $0)
           )
          )
         )
         (i32.const 28)
        )
       )
      )
      (tee_local $4
       (i32.load offset=24
        (get_local $2)
       )
      )
     )
    )
    (set_local $7
     (i32.add
      (get_local $8)
      (i32.const -24)
     )
    )
    (set_local $5
     (i32.sub
      (i32.const 0)
      (get_local $4)
     )
    )
    (loop $label$3
     (br_if $label$2
      (i64.eq
       (i64.load
        (i32.load
         (get_local $7)
        )
       )
       (get_local $3)
      )
     )
     (set_local $8
      (get_local $7)
     )
     (set_local $7
      (tee_local $6
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
     (br_if $label$3
      (i32.ne
       (i32.add
        (get_local $6)
        (get_local $5)
       )
       (i32.const -24)
      )
     )
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eq
       (get_local $8)
       (get_local $4)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=52
        (tee_local $7
         (i32.load
          (i32.add
           (get_local $8)
           (i32.const -24)
          )
         )
        )
       )
       (get_local $2)
      )
      (i32.const 144)
     )
     (br $label$4)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=52
       (tee_local $7
        (call $_ZNK5eosio11multi_indexILy13454622252196446208EN12eparticlectr13rewardhistoryEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEENS3_ILy4582106519425105920ENS6_IS2_yXadL_ZNKS2_19get_finalize_periodEvEEEEEENS3_ILy4587895157746319360ENS6_IS2_yXadL_ZNKS2_12get_proposalEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $2)
         (call $db_find_i64
          (i64.load
           (get_local $2)
          )
          (i64.load offset=8
           (get_local $2)
          )
          (i64.const -4992121821513105408)
          (get_local $3)
         )
        )
       )
      )
      (get_local $2)
     )
     (i32.const 144)
    )
   )
   (i32.store
    (i32.add
     (get_local $7)
     (i32.const 68)
    )
    (get_local $1)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZNSt3__16vectorIN5eosio16permission_levelENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.ge_u
       (tee_local $3
        (i32.add
         (tee_local $2
          (i32.shr_s
           (i32.sub
            (tee_local $6
             (i32.load offset=4
              (get_local $0)
             )
            )
            (tee_local $5
             (i32.load
              (get_local $0)
             )
            )
           )
           (i32.const 4)
          )
         )
         (i32.const 1)
        )
       )
       (i32.const 268435456)
      )
     )
     (set_local $4
      (i32.const 268435455)
     )
     (block $label$3
      (block $label$4
       (br_if $label$4
        (i32.gt_u
         (i32.shr_s
          (tee_local $7
           (i32.sub
            (i32.load offset=8
             (get_local $0)
            )
            (get_local $5)
           )
          )
          (i32.const 4)
         )
         (i32.const 134217726)
        )
       )
       (br_if $label$3
        (i32.eqz
         (tee_local $4
          (select
           (get_local $3)
           (tee_local $4
            (i32.shr_s
             (get_local $7)
             (i32.const 3)
            )
           )
           (i32.lt_u
            (get_local $4)
            (get_local $3)
           )
          )
         )
        )
       )
       (br_if $label$1
        (i32.ge_u
         (get_local $4)
         (i32.const 268435456)
        )
       )
      )
      (set_local $7
       (call $_Znwj
        (i32.shl
         (get_local $4)
         (i32.const 4)
        )
       )
      )
      (set_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (set_local $5
       (i32.load
        (get_local $0)
       )
      )
      (br $label$0)
     )
     (set_local $4
      (i32.const 0)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $label$0)
    )
    (call $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
     (get_local $0)
    )
    (unreachable)
   )
   (call $abort)
   (unreachable)
  )
  (i64.store
   (tee_local $3
    (i32.add
     (get_local $7)
     (i32.shl
      (get_local $2)
      (i32.const 4)
     )
    )
   )
   (i64.load
    (get_local $1)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (set_local $6
   (i32.sub
    (get_local $3)
    (tee_local $1
     (i32.sub
      (get_local $6)
      (get_local $5)
     )
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $7)
    (i32.shl
     (get_local $4)
     (i32.const 4)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_s
     (get_local $1)
     (i32.const 1)
    )
   )
   (drop
    (call $memcpy
     (get_local $6)
     (get_local $5)
     (get_local $1)
    )
   )
   (set_local $5
    (i32.load
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $6)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $3)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (get_local $5)
    )
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
 )
 (func $_ZN12eparticlectr10testinsertEyNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (type $FUNCSIG$viji) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $11
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $10
   (i64.const 59)
  )
  (set_local $5
   (i32.const 128)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (set_local $7
    (i64.const 0)
   )
   (block $label$1
    (br_if $label$1
     (i64.gt_u
      (get_local $8)
      (i64.const 11)
     )
    )
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $3
           (i32.load8_s
            (get_local $5)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 165)
       )
      )
      (br $label$2)
     )
     (set_local $3
      (select
       (i32.add
        (get_local $3)
        (i32.const 208)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.extend_u/i32
       (i32.and
        (get_local $3)
        (i32.const 31)
       )
      )
      (i64.and
       (get_local $10)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $10
      (i64.add
       (get_local $10)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $8
   (i64.const 0)
  )
  (set_local $7
   (i64.const 59)
  )
  (set_local $5
   (i32.const 2368)
  )
  (set_local $9
   (i64.const 0)
  )
  (loop $label$4
   (block $label$5
    (block $label$6
     (block $label$7
      (block $label$8
       (block $label$9
        (br_if $label$9
         (i64.gt_u
          (get_local $8)
          (i64.const 5)
         )
        )
        (br_if $label$8
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $5)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$7)
       )
       (set_local $10
        (i64.const 0)
       )
       (br_if $label$6
        (i64.le_u
         (get_local $8)
         (i64.const 11)
        )
       )
       (br $label$5)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $10
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $10
     (i64.shl
      (i64.and
       (get_local $10)
       (i64.const 31)
      )
      (i64.and
       (get_local $7)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
   )
   (set_local $8
    (i64.add
     (get_local $8)
     (i64.const 1)
    )
   )
   (set_local $9
    (i64.or
     (get_local $10)
     (get_local $9)
    )
   )
   (br_if $label$4
    (i64.ne
     (tee_local $7
      (i64.add
       (get_local $7)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $11)
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $11)
   (i64.const -1)
  )
  (i64.store offset=8
   (get_local $11)
   (get_local $9)
  )
  (i64.store
   (get_local $11)
   (get_local $6)
  )
  (i64.store offset=24
   (get_local $11)
   (i64.const 0)
  )
  (block $label$10
   (br_if $label$10
    (i32.lt_s
     (tee_local $5
      (call $db_lowerbound_i64
       (get_local $6)
       (get_local $9)
       (i64.const 3607749779137757184)
       (i64.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (set_local $3
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (set_local $5
    (call $_ZNK5eosio11multi_indexILy3607749779137757184EN12eparticlectr7accountEJEE31load_object_by_primary_iteratorEl
     (get_local $11)
     (get_local $5)
    )
   )
   (loop $label$11
    (call $printi
     (i64.load
      (get_local $5)
     )
    )
    (call $prints
     (i32.const 80)
    )
    (call $printui
     (i64.shr_u
      (i64.load offset=8
       (get_local $5)
      )
      (i64.const 8)
     )
    )
    (call $prints
     (i32.const 80)
    )
    (call $_ZNK5eosio11symbol_type5printEb
     (get_local $3)
     (i32.const 1)
    )
    (call $prints
     (i32.const 80)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 1056)
    )
    (br_if $label$10
     (i32.lt_s
      (tee_local $5
       (call $db_next_i64
        (i32.load offset=20
         (get_local $5)
        )
        (i32.add
         (get_local $11)
         (i32.const 40)
        )
       )
      )
      (i32.const 0)
     )
    )
    (set_local $5
     (call $_ZNK5eosio11multi_indexILy3607749779137757184EN12eparticlectr7accountEJEE31load_object_by_primary_iteratorEl
      (get_local $11)
      (get_local $5)
     )
    )
    (br $label$11)
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.eqz
     (tee_local $0
      (i32.load offset=24
       (get_local $11)
      )
     )
    )
   )
   (block $label$13
    (block $label$14
     (br_if $label$14
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $4
          (i32.add
           (get_local $11)
           (i32.const 28)
          )
         )
        )
       )
       (get_local $0)
      )
     )
     (loop $label$15
      (set_local $3
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$16
       (br_if $label$16
        (i32.eqz
         (get_local $3)
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$15
       (i32.ne
        (get_local $0)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $11)
        (i32.const 24)
       )
      )
     )
     (br $label$13)
    )
    (set_local $5
     (get_local $0)
    )
   )
   (i32.store
    (get_local $4)
    (get_local $0)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 48)
   )
  )
 )
 (func $_ZNK5eosio11symbol_type5printEb (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (call $printui
    (i64.load8_u
     (get_local $0)
    )
   )
   (call $prints
    (i32.const 2384)
   )
  )
  (i32.store8 offset=15
   (get_local $3)
   (tee_local $0
    (i32.wrap/i64
     (i64.shr_u
      (tee_local $2
       (i64.load
        (get_local $0)
       )
      )
      (i64.const 8)
     )
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 16)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 24)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 32)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 40)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 48)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 255)
     )
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
   (i32.store8 offset=15
    (get_local $3)
    (tee_local $0
     (i32.wrap/i64
      (i64.shr_u
       (get_local $2)
       (i64.const 56)
      )
     )
    )
   )
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $prints_l
    (i32.add
     (get_local $3)
     (i32.const 15)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
 )
 (func $apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $9
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 160)
    )
   )
  )
  (set_local $6
   (i64.const 0)
  )
  (set_local $5
   (i64.const 59)
  )
  (set_local $4
   (i32.const 2400)
  )
  (set_local $7
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $6)
          (i64.const 6)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $3
             (i32.load8_s
              (get_local $4)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $8
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $6)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $3
       (select
        (i32.add
         (get_local $3)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $3)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $8
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $3)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $8
     (i64.shl
      (i64.and
       (get_local $8)
       (i64.const 31)
      )
      (i64.and
       (get_local $5)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (set_local $6
    (i64.add
     (get_local $6)
     (i64.const 1)
    )
   )
   (set_local $7
    (i64.or
     (get_local $8)
     (get_local $7)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $5
      (i64.add
       (get_local $5)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $7)
     (get_local $2)
    )
   )
   (set_local $6
    (i64.const 0)
   )
   (set_local $5
    (i64.const 59)
   )
   (set_local $4
    (i32.const 2416)
   )
   (set_local $7
    (i64.const 0)
   )
   (loop $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (br_if $label$12
          (i64.gt_u
           (get_local $6)
           (i64.const 4)
          )
         )
         (br_if $label$11
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $3
              (i32.load8_s
               (get_local $4)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 165)
          )
         )
         (br $label$10)
        )
        (set_local $8
         (i64.const 0)
        )
        (br_if $label$9
         (i64.le_u
          (get_local $6)
          (i64.const 11)
         )
        )
        (br $label$8)
       )
       (set_local $3
        (select
         (i32.add
          (get_local $3)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $3)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $8
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $3)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $8
      (i64.shl
       (i64.and
        (get_local $8)
        (i64.const 31)
       )
       (i64.and
        (get_local $5)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (set_local $6
     (i64.add
      (get_local $6)
      (i64.const 1)
     )
    )
    (set_local $7
     (i64.or
      (get_local $8)
      (get_local $7)
     )
    )
    (br_if $label$7
     (i64.ne
      (tee_local $5
       (i64.add
        (get_local $5)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (call $eosio_assert
    (i64.eq
     (get_local $7)
     (get_local $1)
    )
    (i32.const 2432)
   )
  )
  (block $label$13
   (block $label$14
    (br_if $label$14
     (i64.eq
      (get_local $1)
      (get_local $0)
     )
    )
    (set_local $6
     (i64.const 0)
    )
    (set_local $5
     (i64.const 59)
    )
    (set_local $4
     (i32.const 2400)
    )
    (set_local $7
     (i64.const 0)
    )
    (loop $label$15
     (block $label$16
      (block $label$17
       (block $label$18
        (block $label$19
         (block $label$20
          (br_if $label$20
           (i64.gt_u
            (get_local $6)
            (i64.const 6)
           )
          )
          (br_if $label$19
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $3
               (i32.load8_s
                (get_local $4)
               )
              )
              (i32.const -97)
             )
             (i32.const 255)
            )
            (i32.const 25)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 165)
           )
          )
          (br $label$18)
         )
         (set_local $8
          (i64.const 0)
         )
         (br_if $label$17
          (i64.le_u
           (get_local $6)
           (i64.const 11)
          )
         )
         (br $label$16)
        )
        (set_local $3
         (select
          (i32.add
           (get_local $3)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $3)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $8
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $3)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $8
       (i64.shl
        (i64.and
         (get_local $8)
         (i64.const 31)
        )
        (i64.and
         (get_local $5)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $4
      (i32.add
       (get_local $4)
       (i32.const 1)
      )
     )
     (set_local $6
      (i64.add
       (get_local $6)
       (i64.const 1)
      )
     )
     (set_local $7
      (i64.or
       (get_local $8)
       (get_local $7)
      )
     )
     (br_if $label$15
      (i64.ne
       (tee_local $5
        (i64.add
         (get_local $5)
         (i64.const -5)
        )
       )
       (i64.const -6)
      )
     )
    )
    (br_if $label$13
     (i64.ne
      (get_local $7)
      (get_local $2)
     )
    )
   )
   (i64.store offset=152
    (get_local $9)
    (i64.const 5327108)
   )
   (i64.store offset=144
    (get_local $9)
    (get_local $0)
   )
   (block $label$21
    (block $label$22
     (block $label$23
      (block $label$24
       (block $label$25
        (block $label$26
         (block $label$27
          (block $label$28
           (br_if $label$28
            (i64.le_s
             (get_local $2)
             (i64.const 4453191014201720831)
            )
           )
           (br_if $label$27
            (i64.le_s
             (get_local $2)
             (i64.const 4453191182247149567)
            )
           )
           (br_if $label$25
            (i64.eq
             (get_local $2)
             (i64.const 4453191182247149568)
            )
           )
           (br_if $label$24
            (i64.eq
             (get_local $2)
             (i64.const 6604081059879452672)
            )
           )
           (br_if $label$13
            (i64.ne
             (get_local $2)
             (i64.const 6693051861171699712)
            )
           )
           (i32.store offset=108
            (get_local $9)
            (i32.const 0)
           )
           (i32.store offset=104
            (get_local $9)
            (i32.const 1)
           )
           (i64.store offset=32 align=4
            (get_local $9)
            (i64.load offset=104
             (get_local $9)
            )
           )
           (drop
            (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
             (i32.add
              (get_local $9)
              (i32.const 144)
             )
             (i32.add
              (get_local $9)
              (i32.const 32)
             )
            )
           )
           (br $label$13)
          )
          (br_if $label$26
           (i64.gt_s
            (get_local $2)
            (i64.const -3841122641431871489)
           )
          )
          (br_if $label$23
           (i64.eq
            (get_local $2)
            (i64.const -5915324541735112704)
           )
          )
          (br_if $label$13
           (i64.ne
            (get_local $2)
            (i64.const -5915097261842366464)
           )
          )
          (i32.store offset=92
           (get_local $9)
           (i32.const 0)
          )
          (i32.store offset=88
           (get_local $9)
           (i32.const 2)
          )
          (i64.store offset=48 align=4
           (get_local $9)
           (i64.load offset=88
            (get_local $9)
           )
          )
          (drop
           (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E
            (i32.add
             (get_local $9)
             (i32.const 144)
            )
            (i32.add
             (get_local $9)
             (i32.const 48)
            )
           )
          )
          (br $label$13)
         )
         (br_if $label$22
          (i64.eq
           (get_local $2)
           (i64.const 4453191014201720832)
          )
         )
         (br_if $label$13
          (i64.ne
           (get_local $2)
           (i64.const 4453191014402899968)
          )
         )
         (i32.store offset=124
          (get_local $9)
          (i32.const 0)
         )
         (i32.store offset=120
          (get_local $9)
          (i32.const 3)
         )
         (i64.store offset=16 align=4
          (get_local $9)
          (i64.load offset=120
           (get_local $9)
          )
         )
         (drop
          (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyyEEEbPT_MT0_FvDpT1_E
           (i32.add
            (get_local $9)
            (i32.const 144)
           )
           (i32.add
            (get_local $9)
            (i32.const 16)
           )
          )
         )
         (br $label$13)
        )
        (br_if $label$21
         (i64.eq
          (get_local $2)
          (i64.const -3841122641431871488)
         )
        )
        (br_if $label$13
         (i64.ne
          (get_local $2)
          (i64.const -2507761749851947008)
         )
        )
        (i32.store offset=84
         (get_local $9)
         (i32.const 0)
        )
        (i32.store offset=80
         (get_local $9)
         (i32.const 4)
        )
        (i64.store offset=56 align=4
         (get_local $9)
         (i64.load offset=80
          (get_local $9)
         )
        )
        (drop
         (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEbyEEEbPT_MT0_FvDpT1_E
          (i32.add
           (get_local $9)
           (i32.const 144)
          )
          (i32.add
           (get_local $9)
           (i32.const 56)
          )
         )
        )
        (br $label$13)
       )
       (i32.store offset=140
        (get_local $9)
        (i32.const 0)
       )
       (i32.store offset=136
        (get_local $9)
        (i32.const 5)
       )
       (i64.store align=4
        (get_local $9)
        (i64.load offset=136
         (get_local $9)
        )
       )
       (drop
        (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyyEEEbPT_MT0_FvDpT1_E
         (i32.add
          (get_local $9)
          (i32.const 144)
         )
         (get_local $9)
        )
       )
       (br $label$13)
      )
      (i32.store offset=116
       (get_local $9)
       (i32.const 0)
      )
      (i32.store offset=112
       (get_local $9)
       (i32.const 6)
      )
      (i64.store offset=24 align=4
       (get_local $9)
       (i64.load offset=112
        (get_local $9)
       )
      )
      (drop
       (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyyEEEbPT_MT0_FvDpT1_E
        (i32.add
         (get_local $9)
         (i32.const 144)
        )
        (i32.add
         (get_local $9)
         (i32.const 24)
        )
       )
      )
      (br $label$13)
     )
     (i32.store offset=100
      (get_local $9)
      (i32.const 0)
     )
     (i32.store offset=96
      (get_local $9)
      (i32.const 7)
     )
     (i64.store offset=40 align=4
      (get_local $9)
      (i64.load offset=96
       (get_local $9)
      )
     )
     (drop
      (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyEEEbPT_MT0_FvDpT1_E
       (i32.add
        (get_local $9)
        (i32.const 144)
       )
       (i32.add
        (get_local $9)
        (i32.const 40)
       )
      )
     )
     (br $label$13)
    )
    (i32.store offset=132
     (get_local $9)
     (i32.const 0)
    )
    (i32.store offset=128
     (get_local $9)
     (i32.const 8)
    )
    (i64.store offset=8 align=4
     (get_local $9)
     (i64.load offset=128
      (get_local $9)
     )
    )
    (drop
     (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyyEEEbPT_MT0_FvDpT1_E
      (i32.add
       (get_local $9)
       (i32.const 144)
      )
      (i32.add
       (get_local $9)
       (i32.const 8)
      )
     )
    )
    (br $label$13)
   )
   (i32.store offset=76
    (get_local $9)
    (i32.const 0)
   )
   (i32.store offset=72
    (get_local $9)
    (i32.const 9)
   )
   (i64.store offset=64 align=4
    (get_local $9)
    (i64.load offset=72
     (get_local $9)
    )
   )
   (drop
    (call $_ZN5eosio14execute_actionI12eparticlectrS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
     (i32.add
      (get_local $9)
      (i32.const 144)
     )
     (i32.add
      (get_local $9)
      (i32.const 64)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 160)
   )
  )
 )
 (func $_ZN5eosio14execute_actionI12eparticlectrS1_JyyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $8
   (tee_local $6
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $6)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $7
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $6
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $6
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $6
      (i32.sub
       (get_local $6)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $6)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.const 0)
  )
  (i64.store
   (get_local $8)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $8)
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.and
     (get_local $1)
     (i32.const -8)
    )
    (i32.const 8)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (tee_local $5
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $6)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $5)
   )
  )
  (set_local $3
   (i64.load
    (get_local $8)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $7
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $7)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijj)
   (get_local $1)
   (get_local $3)
   (get_local $4)
   (get_local $7)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI12eparticlectrS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $6
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $7)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $7)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $3)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $6)
    (i32.const 24)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $6)
   (i64.const 0)
  )
  (i32.store offset=40
   (get_local $6)
   (i32.add
    (get_local $1)
    (get_local $3)
   )
  )
  (i32.store offset=32
   (get_local $6)
   (get_local $1)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $3)
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $6)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
    (tee_local $7
     (i32.add
      (i32.add
       (get_local $6)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (set_local $4
   (i64.load offset=8
    (get_local $6)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
    (get_local $7)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $5)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$viji)
   (get_local $1)
   (get_local $4)
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
   (get_local $5)
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $6)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=40
     (get_local $6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $6)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $6)
      (i32.const 24)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 48)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI12eparticlectrS1_JyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $6
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $4)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (call $action_data_size)
        )
       )
      )
      (br_if $label$2
       (i32.lt_u
        (get_local $1)
        (i32.const 513)
       )
      )
      (set_local $4
       (call $malloc
        (get_local $1)
       )
      )
      (br $label$1)
     )
     (set_local $4
      (i32.const 0)
     )
     (br $label$0)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $4
      (i32.sub
       (get_local $4)
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $4)
     (get_local $1)
    )
   )
  )
  (i64.store offset=8
   (get_local $6)
   (i64.const 0)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (set_local $3
   (i64.load offset=8
    (get_local $6)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $4)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $5)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vij)
   (get_local $1)
   (get_local $3)
   (get_local $5)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI12eparticlectrS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_S9_EEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
    )
   )
  )
  (i32.store offset=60
   (tee_local $2
    (get_local $3)
   )
   (get_local $0)
  )
  (i32.store offset=48
   (get_local $2)
   (i32.load
    (get_local $1)
   )
  )
  (i32.store offset=52
   (get_local $2)
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $0
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $0)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $0)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $3)
       (i32.and
        (i32.add
         (get_local $0)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
   (i64.const 0)
  )
  (i64.store
   (i32.add
    (get_local $2)
    (i32.const 24)
   )
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=32
   (get_local $2)
   (i64.const 0)
  )
  (i32.store offset=72
   (get_local $2)
   (i32.add
    (get_local $1)
    (get_local $0)
   )
  )
  (i32.store offset=64
   (get_local $2)
   (get_local $1)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $0)
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=68
   (get_local $2)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
    (i32.add
     (get_local $2)
     (i32.const 20)
    )
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
    (i32.add
     (get_local $2)
     (i32.const 32)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $0)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (i32.store offset=68
   (get_local $2)
   (i32.add
    (get_local $2)
    (i32.const 48)
   )
  )
  (i32.store offset=64
   (get_local $2)
   (i32.add
    (get_local $2)
    (i32.const 60)
   )
  )
  (call $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI12eparticlectrS5_JyRNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
   (i32.add
    (get_local $2)
    (i32.const 64)
   )
   (get_local $2)
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 40)
     )
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (i32.load8_u offset=20
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 28)
     )
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (i32.and
      (i32.load8_u offset=8
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 16)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI12eparticlectrS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEbyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $7
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (get_local $8)
  )
  (set_local $2
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $3)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $8)
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $3)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (i32.const 0)
  )
  (i64.store
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $7)
   (i64.const 0)
  )
  (i32.store8 offset=20
   (get_local $7)
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $7)
   (i64.const 0)
  )
  (i32.store offset=52
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=48
   (get_local $7)
   (get_local $1)
  )
  (i32.store offset=56
   (get_local $7)
   (i32.add
    (get_local $1)
    (get_local $3)
   )
  )
  (i32.store offset=32
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (i32.store offset=40
   (get_local $7)
   (get_local $7)
  )
  (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEbyEEELi0EEEZN5eosiorsINSG_10datastreamIPKcEEJySD_byEEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $3)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (set_local $4
   (i64.load
    (get_local $7)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $7)
     (i32.const 48)
    )
    (i32.add
     (get_local $7)
     (i32.const 8)
    )
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (set_local $5
   (i64.load
    (i32.add
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $3
   (i32.load8_u
    (i32.add
     (get_local $7)
     (i32.const 20)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $6)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijiij)
   (get_local $1)
   (get_local $4)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
   (i32.ne
    (i32.and
     (get_local $3)
     (i32.const 255)
    )
    (i32.const 0)
   )
   (get_local $5)
   (get_local $6)
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (i32.load8_u offset=48
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=56
     (get_local $7)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (i32.and
      (i32.load8_u offset=8
       (get_local $7)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI12eparticlectrS1_JyNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i32.store offset=44
   (tee_local $2
    (get_local $3)
   )
   (get_local $0)
  )
  (i32.store offset=32
   (get_local $2)
   (i32.load
    (get_local $1)
   )
  )
  (i32.store offset=36
   (get_local $2)
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $0
      (call $action_data_size)
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.lt_u
       (get_local $0)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $malloc
       (get_local $0)
      )
     )
     (br $label$1)
    )
    (i32.store offset=4
     (i32.const 0)
     (tee_local $1
      (i32.sub
       (get_local $3)
       (i32.and
        (i32.add
         (get_local $0)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $read_action_data
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const 24)
   )
   (i32.const 0)
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $2)
   (i64.const 0)
  )
  (i32.store offset=56
   (get_local $2)
   (i32.add
    (get_local $1)
    (get_local $0)
   )
  )
  (i32.store offset=48
   (get_local $2)
   (get_local $1)
  )
  (call $eosio_assert
   (i32.gt_u
    (get_local $0)
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=52
   (get_local $2)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 48)
    )
    (i32.add
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $0)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $1)
   )
  )
  (i32.store offset=52
   (get_local $2)
   (i32.add
    (get_local $2)
    (i32.const 32)
   )
  )
  (i32.store offset=48
   (get_local $2)
   (i32.add
    (get_local $2)
    (i32.const 44)
   )
  )
  (call $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI12eparticlectrS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_EEEJLj0ELj1EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE
   (i32.add
    (get_local $2)
    (i32.const 48)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $2)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load
     (i32.add
      (get_local $2)
      (i32.const 24)
     )
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $2)
    (i32.const 64)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI12eparticlectrS5_JyNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_EEEJLj0ELj1EEEEDTclclsr3stdE7forwardISD_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISF_Efp0_EEEEOSD_OSF_NS0_16integer_sequenceIjJXspT1_EEEE (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $2
   (i64.load
    (get_local $1)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (get_local $4)
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (set_local $1
   (i32.add
    (i32.load
     (i32.load
      (get_local $0)
     )
    )
    (i32.shr_s
     (tee_local $3
      (i32.load offset=4
       (tee_local $0
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (set_local $0
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $0)
     )
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (get_local $4)
   )
  )
  (call_indirect (type $FUNCSIG$viji)
   (get_local $1)
   (get_local $2)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
   (get_local $0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=24
     (get_local $4)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (i32.and
      (i32.load8_u
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=8
     (get_local $4)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
  )
 )
 (func $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyNS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEbyEEELi0EEEZN5eosiorsINSG_10datastreamIPKcEEJySD_byEEERT_SN_RNS7_IJDpT0_EEEEUlSN_E_EEvRKSM_RKT0_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $2)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (get_local $3)
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.load
     (get_local $1)
    )
    (i32.add
     (tee_local $0
      (i32.load
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (i32.load offset=8
     (tee_local $2
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $2)
    )
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $4)
     (i32.const 15)
    )
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (i32.load offset=4
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (i32.store8 offset=20
   (get_local $0)
   (i32.ne
    (i32.load8_u offset=15
     (get_local $4)
    )
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $1
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (i32.const 7)
   )
   (i32.const 336)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
 )
 (func $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI12eparticlectrS5_JyRNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_SD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_SC_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $4
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $2
   (i64.load
    (get_local $1)
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $4)
     (i32.const 32)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (get_local $4)
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
   )
  )
  (set_local $0
   (i32.add
    (i32.load
     (i32.load
      (get_local $0)
     )
    )
    (i32.shr_s
     (tee_local $3
      (i32.load offset=4
       (tee_local $1
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
  )
  (set_local $1
   (i32.load
    (get_local $1)
   )
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (set_local $1
    (i32.load
     (i32.add
      (i32.load
       (get_local $0)
      )
      (get_local $1)
     )
    )
   )
  )
  (call_indirect (type $FUNCSIG$vijiii)
   (get_local $0)
   (get_local $2)
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
   (get_local $4)
   (get_local $1)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (i32.load8_u
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=8
     (get_local $4)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (i32.and
      (i32.load8_u offset=16
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=24
     (get_local $4)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $4)
      )
      (i32.const 1)
     )
    )
   )
   (call $_ZdlPv
    (i32.load offset=40
     (get_local $4)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 48)
   )
  )
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 2496)
   (get_local $0)
  )
 )
 (func $_ZN5eosio14memory_manager6mallocEm (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$1
    (br_if $label$1
     (tee_local $13
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $13
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $2
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $2
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (tee_local $10
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $13)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $10)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$5
       (br_if $label$5
        (get_local $10)
       )
       (br_if $label$5
        (i32.load
         (tee_local $13
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $13)
        (get_local $0)
       )
      )
      (set_local $10
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
      )
      (loop $label$6
       (block $label$7
        (br_if $label$7
         (i32.gt_u
          (i32.add
           (tee_local $13
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $10)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $13
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $13)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $13)
           )
           (i32.const -2147483648)
          )
          (get_local $2)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $10)
         )
        )
        (i32.store
         (get_local $13)
         (i32.or
          (i32.load
           (get_local $13)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$3
         (tee_local $1
          (i32.add
           (get_local $13)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$6
        (tee_local $1
         (call $_ZN5eosio14memory_manager16next_active_heapEv
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $4
      (i32.sub
       (i32.const 2147483644)
       (get_local $2)
      )
     )
     (set_local $11
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $12
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $13
      (tee_local $3
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$8
      (call $eosio_assert
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $13)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $5
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 10896)
      )
      (set_local $13
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$9
       (set_local $7
        (i32.add
         (get_local $6)
         (i32.load
          (get_local $5)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $9
          (i32.load
           (tee_local $8
            (i32.add
             (get_local $13)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.lt_s
          (get_local $9)
          (i32.const 0)
         )
        )
        (block $label$11
         (br_if $label$11
          (i32.ge_u
           (get_local $1)
           (get_local $2)
          )
         )
         (loop $label$12
          (br_if $label$11
           (i32.ge_u
            (tee_local $10
             (i32.add
              (get_local $13)
              (get_local $1)
             )
            )
            (get_local $7)
           )
          )
          (br_if $label$11
           (i32.lt_s
            (tee_local $10
             (i32.load
              (get_local $10)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$12
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $10)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $2)
           )
          )
         )
        )
        (i32.store
         (get_local $8)
         (i32.or
          (select
           (get_local $1)
           (get_local $2)
           (i32.lt_u
            (get_local $1)
            (get_local $2)
           )
          )
          (i32.and
           (get_local $9)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$13
         (br_if $label$13
          (i32.le_u
           (get_local $1)
           (get_local $2)
          )
         )
         (i32.store
          (i32.add
           (get_local $13)
           (get_local $2)
          )
          (i32.and
           (i32.add
            (get_local $4)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$2
         (i32.ge_u
          (get_local $1)
          (get_local $2)
         )
        )
       )
       (br_if $label$9
        (i32.lt_u
         (tee_local $13
          (i32.add
           (i32.add
            (get_local $13)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $7)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $11)
       (tee_local $13
        (select
         (i32.const 0)
         (tee_local $13
          (i32.add
           (i32.load
            (get_local $11)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $13)
          (i32.load
           (get_local $12)
          )
         )
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $13)
        (get_local $3)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $8)
    (i32.or
     (i32.load
      (get_local $8)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $13)
   )
  )
  (i32.const 0)
 )
 (func $_ZN5eosio14memory_manager16next_active_heapEv (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.load8_u offset=10982
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=10984
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=10982
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=10984
    (i32.const 0)
    (tee_local $7
     (i32.shl
      (get_local $7)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $7)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.le_u
        (tee_local $2
         (i32.shr_u
          (i32.add
           (get_local $7)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (set_local $8
       (i32.const 0)
      )
      (br_if $label$4
       (i32.ne
        (get_local $2)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=10984
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=10984
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.mul
        (get_local $1)
        (i32.const 12)
       )
      )
     )
     (set_local $7
      (i32.sub
       (i32.sub
        (i32.add
         (get_local $7)
         (select
          (i32.const 65536)
          (i32.const 131072)
          (tee_local $6
           (i32.lt_u
            (tee_local $8
             (i32.and
              (get_local $7)
              (i32.const 65535)
             )
            )
            (i32.const 64513)
           )
          )
         )
        )
        (select
         (get_local $8)
         (i32.and
          (get_local $7)
          (i32.const 131071)
         )
         (get_local $6)
        )
       )
       (get_local $7)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.load8_u offset=10982
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=10982
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=10984
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8192)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $7)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$7
      (br_if $label$7
       (i32.le_u
        (tee_local $8
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $5
             (i32.and
              (i32.add
               (get_local $7)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $4
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $8)
         (get_local $4)
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $8)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=10984
        (i32.const 0)
       )
      )
     )
     (i32.store offset=10984
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $5)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$2
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $8
         (i32.load
          (get_local $2)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.eq
        (get_local $8)
        (tee_local $1
         (i32.load
          (tee_local $5
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $8)
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.load
        (get_local $2)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $2
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $2
       (i32.add
        (i32.load
         (get_local $2)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (i32.add
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $2)
          (i32.const 12)
         )
        )
       )
       (i32.const 8196)
      )
      (get_local $3)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (get_local $0)
        (i32.const 8192)
       )
      )
      (get_local $7)
     )
    )
    (return
     (get_local $8)
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.eq
      (tee_local $8
       (i32.load
        (get_local $2)
       )
      )
      (tee_local $7
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $7)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $7)
       )
       (get_local $8)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $2)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $7
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (get_local $2)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.lt_s
      (tee_local $2
       (i32.load offset=10880
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 10688)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 10688)
     )
    )
    (loop $label$2
     (br_if $label$1
      (i32.eqz
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$3
      (br_if $label$3
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$0
       (i32.gt_u
        (i32.add
         (get_local $2)
         (i32.load
          (get_local $3)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$2
      (i32.lt_u
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 12)
        )
       )
       (get_local $1)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $3)
    )
    (i32.const 2147483647)
   )
  )
 )
 (func $_Znwj (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$0
   (br_if $label$0
    (tee_local $0
     (call $malloc
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$1
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$0
     (i32.eqz
      (tee_local $2
       (i32.load offset=10988
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $FUNCSIG$v)
     (get_local $2)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $0
       (call $malloc
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_ZdlPv (param $0 i32)
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $0)
    )
   )
   (call $free
    (get_local $0)
   )
  )
 )
 (func $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (set_local $2
       (select
        (i32.load offset=4
         (get_local $1)
        )
        (i32.shr_u
         (tee_local $2
          (i32.load8_u
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        (tee_local $4
         (i32.and
          (get_local $2)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $5
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.load offset=8
        (get_local $1)
       )
      )
      (set_local $1
       (i32.const 10)
      )
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (i32.and
          (tee_local $3
           (i32.load8_u
            (get_local $0)
           )
          )
          (i32.const 1)
         )
        )
       )
       (set_local $1
        (i32.add
         (i32.and
          (tee_local $3
           (i32.load
            (get_local $0)
           )
          )
          (i32.const -2)
         )
         (i32.const -1)
        )
       )
      )
      (set_local $5
       (select
        (get_local $6)
        (get_local $5)
        (get_local $4)
       )
      )
      (set_local $4
       (i32.and
        (get_local $3)
        (i32.const 1)
       )
      )
      (block $label$5
       (block $label$6
        (block $label$7
         (br_if $label$7
          (i32.le_u
           (get_local $2)
           (get_local $1)
          )
         )
         (br_if $label$6
          (get_local $4)
         )
         (set_local $3
          (i32.shr_u
           (i32.and
            (get_local $3)
            (i32.const 254)
           )
           (i32.const 1)
          )
         )
         (br $label$5)
        )
        (br_if $label$2
         (get_local $4)
        )
        (set_local $1
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (br_if $label$1
         (get_local $2)
        )
        (br $label$0)
       )
       (set_local $3
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
      (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
       (get_local $0)
       (get_local $1)
       (i32.sub
        (get_local $2)
        (get_local $1)
       )
       (get_local $3)
       (i32.const 0)
       (get_local $3)
       (get_local $2)
       (get_local $5)
      )
     )
     (return
      (get_local $0)
     )
    )
    (set_local $1
     (i32.load offset=8
      (get_local $0)
     )
    )
    (br_if $label$0
     (i32.eqz
      (get_local $2)
     )
    )
   )
   (drop
    (call $memmove
     (get_local $1)
     (get_local $5)
     (get_local $2)
    )
   )
  )
  (i32.store8
   (i32.add
    (get_local $1)
    (get_local $2)
   )
   (i32.const 0)
  )
  (block $label$8
   (br_if $label$8
    (i32.and
     (i32.load8_u
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (i32.store8
    (get_local $0)
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
   (return
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (i32.sub
      (i32.const -18)
      (get_local $1)
     )
     (get_local $2)
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.and
       (i32.load8_u
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $9
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $label$1)
    )
    (set_local $9
     (i32.load offset=8
      (get_local $0)
     )
    )
   )
   (set_local $10
    (i32.const -17)
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_u
      (get_local $1)
      (i32.const 2147483622)
     )
    )
    (set_local $10
     (i32.const 11)
    )
    (br_if $label$3
     (i32.lt_u
      (tee_local $2
       (select
        (tee_local $8
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
        (tee_local $2
         (i32.add
          (get_local $2)
          (get_local $1)
         )
        )
        (i32.lt_u
         (get_local $2)
         (get_local $8)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $10
     (i32.and
      (i32.add
       (get_local $2)
       (i32.const 16)
      )
      (i32.const -16)
     )
    )
   )
   (set_local $2
    (call $_Znwj
     (get_local $10)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $4)
     )
    )
    (drop
     (call $memcpy
      (get_local $2)
      (get_local $9)
      (get_local $4)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (get_local $6)
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $2)
       (get_local $4)
      )
      (get_local $7)
      (get_local $6)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (tee_local $7
       (i32.sub
        (tee_local $3
         (i32.sub
          (get_local $3)
          (get_local $5)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (drop
     (call $memcpy
      (i32.add
       (i32.add
        (get_local $2)
        (get_local $4)
       )
       (get_local $6)
      )
      (i32.add
       (i32.add
        (get_local $9)
        (get_local $4)
       )
       (get_local $5)
      )
      (get_local $7)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eq
      (get_local $1)
      (i32.const 10)
     )
    )
    (call $_ZdlPv
     (get_local $9)
    )
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
   (i32.store
    (get_local $0)
    (i32.or
     (get_local $10)
     (i32.const 1)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (tee_local $4
     (i32.add
      (get_local $3)
      (get_local $6)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $2)
     (get_local $4)
    )
    (i32.const 0)
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (get_local $1)
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.const 10)
   )
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (tee_local $5
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
     )
    )
    (set_local $2
     (i32.add
      (i32.and
       (tee_local $5
        (i32.load
         (get_local $0)
        )
       )
       (i32.const -2)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.and
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.shr_u
       (i32.and
        (get_local $5)
        (i32.const 254)
       )
       (i32.const 1)
      )
     )
     (br $label$2)
    )
    (set_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (set_local $4
    (i32.const 10)
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_u
      (tee_local $1
       (select
        (get_local $3)
        (get_local $1)
        (i32.gt_u
         (get_local $3)
         (get_local $1)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $4
     (i32.add
      (i32.and
       (i32.add
        (get_local $1)
        (i32.const 16)
       )
       (i32.const -16)
      )
      (i32.const -1)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eq
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$6
     (block $label$7
      (br_if $label$7
       (i32.ne
        (get_local $4)
        (i32.const 10)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $2
       (i32.load offset=8
        (get_local $0)
       )
      )
      (set_local $7
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $1
      (call $_Znwj
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
      )
     )
     (block $label$8
      (br_if $label$8
       (i32.gt_u
        (get_local $4)
        (get_local $2)
       )
      )
      (br_if $label$5
       (i32.eqz
        (get_local $1)
       )
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.and
        (tee_local $5
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $7
       (i32.const 1)
      )
      (set_local $2
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.const 0)
      )
      (br $label$6)
     )
     (set_local $2
      (i32.load offset=8
       (get_local $0)
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (set_local $7
      (i32.const 1)
     )
    )
    (block $label$10
     (block $label$11
      (br_if $label$11
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $5
       (i32.shr_u
        (i32.and
         (get_local $5)
         (i32.const 254)
        )
        (i32.const 1)
       )
      )
      (br $label$10)
     )
     (set_local $5
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (block $label$12
     (br_if $label$12
      (i32.eqz
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
     (drop
      (call $memcpy
       (get_local $1)
       (get_local $2)
       (get_local $5)
      )
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.eqz
       (get_local $6)
      )
     )
     (call $_ZdlPv
      (get_local $2)
     )
    )
    (block $label$14
     (br_if $label$14
      (i32.eqz
       (get_local $7)
      )
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store
      (get_local $0)
      (i32.or
       (i32.add
        (get_local $4)
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (return)
    )
    (i32.store8
     (get_local $0)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (return)
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEjj (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (tee_local $3
       (i32.and
        (tee_local $6
         (i32.load8_u
          (get_local $0)
         )
        )
        (i32.const 1)
       )
      )
     )
     (br_if $label$1
      (i32.ge_u
       (tee_local $4
        (i32.shr_u
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $1)
      )
     )
     (br $label$0)
    )
    (br_if $label$0
     (i32.lt_u
      (tee_local $4
       (i32.load offset=4
        (get_local $0)
       )
      )
      (get_local $1)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.eqz
      (get_local $2)
     )
    )
    (block $label$4
     (block $label$5
      (br_if $label$5
       (get_local $3)
      )
      (set_local $5
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $label$4)
     )
     (set_local $5
      (i32.load offset=8
       (get_local $0)
      )
     )
    )
    (block $label$6
     (br_if $label$6
      (i32.eqz
       (tee_local $3
        (i32.sub
         (tee_local $3
          (i32.sub
           (get_local $4)
           (get_local $1)
          )
         )
         (tee_local $2
          (select
           (get_local $3)
           (get_local $2)
           (i32.lt_u
            (get_local $3)
            (get_local $2)
           )
          )
         )
        )
       )
      )
     )
     (drop
      (call $memmove
       (tee_local $1
        (i32.add
         (get_local $5)
         (get_local $1)
        )
       )
       (i32.add
        (get_local $1)
        (get_local $2)
       )
       (get_local $3)
      )
     )
     (set_local $6
      (i32.load8_u
       (get_local $0)
      )
     )
    )
    (set_local $2
     (i32.sub
      (get_local $4)
      (get_local $2)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.and
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $label$7)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.store8
     (i32.add
      (get_local $5)
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv (param $0 i32)
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_ (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.and
     (i32.load8_u
      (get_local $1)
     )
     (i32.const 1)
    )
   )
   (i64.store align=4
    (get_local $0)
    (i64.load align=4
     (get_local $1)
    )
   )
   (i32.store
    (get_local $3)
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (return
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.ge_u
     (tee_local $3
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const -16)
    )
   )
   (set_local $2
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (get_local $3)
      )
      (br $label$2)
     )
     (set_local $1
      (call $_Znwj
       (tee_local $4
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $1)
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $1)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_u
     (tee_local $8
      (select
       (i32.load offset=4
        (get_local $1)
       )
       (i32.shr_u
        (tee_local $8
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $5
        (i32.and
         (get_local $8)
         (i32.const 1)
        )
       )
      )
     )
     (get_local $2)
    )
   )
   (br_if $label$0
    (i32.ge_u
     (tee_local $3
      (select
       (tee_local $8
        (i32.sub
         (get_local $8)
         (get_local $2)
        )
       )
       (get_local $3)
       (i32.lt_u
        (get_local $8)
        (get_local $3)
       )
      )
     )
     (i32.const -16)
    )
   )
   (set_local $6
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.ge_u
        (get_local $3)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (set_local $8
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br_if $label$2
       (get_local $3)
      )
      (br $label$1)
     )
     (set_local $8
      (call $_Znwj
       (tee_local $7
        (i32.and
         (i32.add
          (get_local $3)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $0)
      (get_local $8)
     )
     (i32.store offset=4
      (get_local $0)
      (get_local $3)
     )
    )
    (drop
     (call $memcpy
      (get_local $8)
      (i32.add
       (select
        (get_local $6)
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
        (get_local $5)
       )
       (get_local $2)
      )
      (get_local $3)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $8)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $abort)
  (unreachable)
 )
 (func $tolower (param $0 i32) (result i32)
  (select
   (i32.or
    (get_local $0)
    (i32.const 32)
   )
   (get_local $0)
   (i32.lt_u
    (i32.add
     (get_local $0)
     (i32.const -65)
    )
    (i32.const 26)
   )
  )
 )
 (func $strlen (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (get_local $0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.eqz
      (i32.and
       (get_local $0)
       (i32.const 3)
      )
     )
    )
    (set_local $2
     (get_local $0)
    )
    (loop $label$2
     (br_if $label$0
      (i32.eqz
       (i32.load8_u
        (get_local $2)
       )
      )
     )
     (br_if $label$2
      (i32.and
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const -4)
    )
   )
   (loop $label$3
    (br_if $label$3
     (i32.eqz
      (i32.and
       (i32.and
        (i32.xor
         (tee_local $1
          (i32.load
           (tee_local $2
            (i32.add
             (get_local $2)
             (i32.const 4)
            )
           )
          )
         )
         (i32.const -1)
        )
        (i32.add
         (get_local $1)
         (i32.const -16843009)
        )
       )
       (i32.const -2139062144)
      )
     )
    )
   )
   (br_if $label$0
    (i32.eqz
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
   )
   (loop $label$4
    (br_if $label$4
     (i32.load8_u
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
     )
    )
   )
  )
  (i32.sub
   (get_local $2)
   (get_local $0)
  )
 )
 (func $memcmp (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$1
    (loop $label$2
     (br_if $label$1
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$0)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
 (func $__wasm_nullptr (type $FUNCSIG$v)
  (unreachable)
 )
)
