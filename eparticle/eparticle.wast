(module
 (type $FUNCSIG$vijj (func (param i32 i64 i64)))
 (type $FUNCSIG$vijiij (func (param i32 i64 i32 i32 i64)))
 (type $FUNCSIG$vij (func (param i32 i64)))
 (type $FUNCSIG$vijii (func (param i32 i64 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$j (func (result i64)))
 (type $FUNCSIG$vjj (func (param i64 i64)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ijjjj (func (param i64 i64 i64 i64) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjij (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $FUNCSIG$viji (func (param i32 i64 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ijjjjii (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjji (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $FUNCSIG$ijjj (func (param i64 i64 i64) (result i32)))
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjiii (func (param i64 i64 i64 i32 i32 i32) (result i32)))
 (type $FUNCSIG$ijjjiij (func (param i64 i64 i64 i32 i32 i64) (result i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $abort))
 (import "env" "action_data_size" (func $action_data_size (result i32)))
 (import "env" "current_receiver" (func $current_receiver (result i64)))
 (import "env" "current_time" (func $current_time (result i64)))
 (import "env" "db_end_i64" (func $db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_find_i64" (func $db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_idx256_find_primary" (func $db_idx256_find_primary (param i64 i64 i64 i32 i32 i64) (result i32)))
 (import "env" "db_idx256_lowerbound" (func $db_idx256_lowerbound (param i64 i64 i64 i32 i32 i32) (result i32)))
 (import "env" "db_idx256_store" (func $db_idx256_store (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx256_update" (func $db_idx256_update (param i32 i64 i32 i32)))
 (import "env" "db_idx64_find_primary" (func $db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_lowerbound" (func $db_idx64_lowerbound (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx64_next" (func $db_idx64_next (param i32 i32) (result i32)))
 (import "env" "db_idx64_remove" (func $db_idx64_remove (param i32)))
 (import "env" "db_idx64_store" (func $db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_update" (func $db_idx64_update (param i32 i64 i32)))
 (import "env" "db_lowerbound_i64" (func $db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $db_remove_i64 (param i32)))
 (import "env" "db_store_i64" (func $db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "eosio_assert" (func $eosio_assert (param i32 i32)))
 (import "env" "memcpy" (func $memcpy (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $memmove (param i32 i32 i32) (result i32)))
 (import "env" "printhex" (func $printhex (param i32 i32)))
 (import "env" "printn" (func $printn (param i64)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "read_action_data" (func $read_action_data (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_auth2" (func $require_auth2 (param i64 i64)))
 (import "env" "send_inline" (func $send_inline (param i32 i32)))
 (table 7 7 anyfunc)
 (elem (i32.const 0) $__wasm_nullptr $_ZN9eparticle10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby $_ZN9eparticle8finalizeEyy $_ZN9eparticle7proposeEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_ $_ZN9eparticle10testinsertEy $_ZN9eparticle10brainclaimEyy $_ZN9eparticle7brainmeEyy)
 (memory $0 1)
 (data (i32.const 4) "ph\00\00")
 (data (i32.const 16) "unexpected error in fixed_key constructor\00")
 (data (i32.const 64) "eosio.token\00")
 (data (i32.const 80) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 144) "error reading iterator\00")
 (data (i32.const 176) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 240) "invalid symbol name\00")
 (data (i32.const 272) "read\00")
 (data (i32.const 288) "Not enough brainpower to edit, you need to stake some more IQ using brainme first!\00")
 (data (i32.const 384) "Proposal already exists\00")
 (data (i32.const 416) "next primary key in table is at autoincrement limit\00")
 (data (i32.const 480) "cannot create objects in table of another contract\00")
 (data (i32.const 544) "proposal not found\00")
 (data (i32.const 576) "voting period is over\00")
 (data (i32.const 608) "Not enough brainpower\00")
 (data (i32.const 640) "cannot pass end iterator to modify\00")
 (data (i32.const 688) "object passed to modify is not in multi_index\00")
 (data (i32.const 736) "cannot modify objects in table of another contract\00")
 (data (i32.const 800) "Please supply a nonzero value of brainpower to subtract\00")
 (data (i32.const 864) "Underflow during subtraction\00")
 (data (i32.const 896) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 960) "write\00")
 (data (i32.const 976) "cannot increment end iterator\00")
 (data (i32.const 1008) "cannot decrement end iterator when the table is empty\00")
 (data (i32.const 1072) "cannot decrement iterator at beginning of table\00")
 (data (i32.const 1120) "get\00")
 (data (i32.const 1136) "no votes found for proposal\00")
 (data (i32.const 1168) "Not enough IQ available to convert to brainpower\00")
 (data (i32.const 1232) "active\00")
 (data (i32.const 1248) "transfer\00")
 (data (i32.const 1264) "eparticle\00")
 (data (i32.const 1296) "Please supply a nonzero value of brainpower to add\00")
 (data (i32.const 1360) "Overflow during addition\00")
 (data (i32.const 1392) "Added brainpower, \00")
 (data (i32.const 1424) "No stakes found for proposal\00")
 (data (i32.const 1456) "cannot pass end iterator to erase\00")
 (data (i32.const 1504) "object passed to erase is not in multi_index\00")
 (data (i32.const 1552) "cannot erase objects in table of another contract\00")
 (data (i32.const 1616) "attempt to remove object that was not in multi_index\00")
 (data (i32.const 1680) "Qme5aRkNsaQSXU23pmM3MvRMqYa8ufqYojxgFAP143SjYJ\00")
 (data (i32.const 1728) "KEY256: \00")
 (data (i32.const 1744) "0x\00")
 (data (i32.const 1760) "onerror\00")
 (data (i32.const 1776) "eosio\00")
 (data (i32.const 1792) "onerror action\'s are only valid from the \"eosio\" system account\00")
 (data (i32.const 10256) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $_ZeqRK11checksum256S1_))
 (export "_ZeqRK11checksum160S1_" (func $_ZeqRK11checksum160S1_))
 (export "_ZneRK11checksum160S1_" (func $_ZneRK11checksum160S1_))
 (export "now" (func $now))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $_ZN5eosio12require_authERKNS_16permission_levelE))
 (export "_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE" (func $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE))
 (export "_ZN9eparticle9isnewuserERKy" (func $_ZN9eparticle9isnewuserERKy))
 (export "_ZN9eparticle12getiqbalanceEy" (func $_ZN9eparticle12getiqbalanceEy))
 (export "_ZN9eparticle16propose_precheckEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_" (func $_ZN9eparticle16propose_precheckEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_))
 (export "_ZN9eparticle7proposeEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_" (func $_ZN9eparticle7proposeEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_))
 (export "_ZN9eparticle10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby" (func $_ZN9eparticle10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby))
 (export "_ZN9eparticle8votebyidEyyby" (func $_ZN9eparticle8votebyidEyyby))
 (export "_ZN9eparticle14finalizebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE" (func $_ZN9eparticle14finalizebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE))
 (export "_ZN9eparticle8finalizeEyy" (func $_ZN9eparticle8finalizeEyy))
 (export "_ZN9eparticle7brainmeEyy" (func $_ZN9eparticle7brainmeEyy))
 (export "_ZN9eparticle10brainclaimEyy" (func $_ZN9eparticle10brainclaimEyy))
 (export "_ZN9eparticle10testinsertEy" (func $_ZN9eparticle10testinsertEy))
 (export "apply" (func $apply))
 (export "malloc" (func $malloc))
 (export "free" (func $free))
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
 (func $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (param $0 i32) (param $1 i32)
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
 (func $_ZN9eparticle9isnewuserERKy (param $0 i32) (param $1 i32) (result i32)
  (i32.const 1)
 )
 (func $_ZN9eparticle12getiqbalanceEy (param $0 i32) (param $1 i64) (result i64)
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
   (i32.const 64)
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
          (i64.const 10)
         )
        )
        (br_if $label$4
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
        (br $label$3)
       )
       (set_local $8
        (i64.const 0)
       )
       (br_if $label$2
        (i64.eq
         (get_local $6)
         (i64.const 11)
        )
       )
       (br $label$1)
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
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
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
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const -5)
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
     (tee_local $6
      (i64.add
       (get_local $6)
       (i64.const 1)
      )
     )
     (i64.const 13)
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
  (set_local $8
   (i64.load offset=48
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
  (block $label$6
   (br_if $label$6
    (i32.lt_s
     (tee_local $4
      (call $db_find_i64
       (get_local $7)
       (get_local $1)
       (i64.const 3607749779137757184)
       (i64.shr_u
        (get_local $8)
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
       (call $_ZNK5eosio11multi_indexILy3607749779137757184EN9eparticle7accountEJEE31load_object_by_primary_iteratorEl
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
    (i32.const 80)
   )
   (set_local $6
    (i64.load
     (get_local $4)
    )
   )
   (br_if $label$6
    (i32.eqz
     (tee_local $0
      (i32.load offset=32
       (get_local $9)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
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
     (loop $label$9
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
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $2)
        )
       )
       (call $_ZdlPv
        (get_local $2)
       )
      )
      (br_if $label$9
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
     (br $label$7)
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
 (func $_ZNK5eosio11multi_indexILy3607749779137757184EN9eparticle7accountEJEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 144)
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
    (call $_ZN5eosio11multi_indexILy3607749779137757184EN9eparticle7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_
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
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN9eparticle7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
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
 (func $_ZN5eosio11multi_indexILy3607749779137757184EN9eparticle7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_ (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (i32.const 176)
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
   (i32.const 240)
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
   (i32.const 272)
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
   (i32.const 272)
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
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184EN9eparticle7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $_ZN9eparticle16propose_precheckEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_ (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
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
     (i32.const 48)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $8)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $8)
   (tee_local $6
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $6)
  )
  (i32.store8 offset=44
   (get_local $8)
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=24
     (tee_local $5
      (call $_ZNK5eosio11multi_indexILy4453191243736408576EN9eparticle10brainpowerEJNS_10indexed_byILy4590722025437790208EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (call $db_find_i64
        (get_local $6)
        (get_local $6)
        (i64.const 4453191243736408576)
        (get_local $1)
       )
      )
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
   (i32.const 80)
  )
  (call $eosio_assert
   (i64.gt_u
    (i64.load offset=16
     (get_local $5)
    )
    (i64.load offset=24
     (get_local $0)
    )
   )
   (i32.const 288)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $4
      (i32.load offset=32
       (get_local $8)
      )
     )
    )
   )
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $8)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$3
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
      (block $label$4
       (br_if $label$4
        (i32.eqz
         (get_local $5)
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$3
       (i32.ne
        (get_local $4)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 32)
       )
      )
     )
     (br $label$1)
    )
    (set_local $0
     (get_local $4)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $4)
   )
   (call $_ZdlPv
    (get_local $0)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy4453191243736408576EN9eparticle10brainpowerEJNS_10indexed_byILy4590722025437790208EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 144)
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
    (i32.const 272)
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
    (i32.const 272)
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
    (i32.const 272)
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
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4453191243736408576EN9eparticle10brainpowerEJNS1_10indexed_byILy4590722025437790208EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
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
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy4453191243736408576EN9eparticle10brainpowerEJNS1_10indexed_byILy4590722025437790208EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $_ZN9eparticle7proposeEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_ (type $FUNCSIG$vijii) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
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
     (i32.const 176)
    )
   )
  )
  (i64.store offset=104
   (get_local $7)
   (get_local $1)
  )
  (call $_ZN9eparticle16propose_precheckEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES7_
   (get_local $0)
   (get_local $1)
   (get_local $5)
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 96)
   )
   (i32.const 0)
  )
  (i64.store offset=80
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=88
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=64
   (get_local $7)
   (tee_local $1
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=72
   (get_local $7)
   (get_local $1)
  )
  (i32.store16 offset=100
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=56
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $2)
  )
  (call $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $7)
    (i32.const 168)
   )
   (i32.add
    (get_local $7)
    (i32.const 56)
   )
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
  )
  (set_local $5
   (i32.const 1)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $4
      (i32.load offset=172
       (get_local $7)
      )
     )
    )
   )
   (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $7)
     (i32.const 112)
    )
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (br_if $label$0
    (i32.eqz
     (i64.eqz
      (i64.or
       (i64.xor
        (i64.load offset=16
         (get_local $7)
        )
        (i64.load offset=112
         (get_local $7)
        )
       )
       (i64.xor
        (i64.load offset=24
         (get_local $7)
        )
        (i64.load offset=120
         (get_local $7)
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
        (get_local $7)
       )
       (i64.load offset=128
        (get_local $7)
       )
      )
      (i64.xor
       (i64.load
        (i32.add
         (i32.add
          (get_local $7)
          (i32.const 16)
         )
         (i32.const 24)
        )
       )
       (i64.load
        (i32.add
         (i32.add
          (get_local $7)
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
   (set_local $5
    (i32.eqz
     (i32.load offset=172
      (get_local $7)
     )
    )
   )
  )
  (call $eosio_assert
   (get_local $5)
   (i32.const 384)
  )
  (block $label$1
   (br_if $label$1
    (i64.ne
     (tee_local $1
      (i64.load
       (tee_local $5
        (i32.add
         (get_local $7)
         (i32.const 80)
        )
       )
      )
     )
     (i64.const -1)
    )
   )
   (set_local $1
    (i64.const 0)
   )
   (block $label$2
    (br_if $label$2
     (i32.lt_s
      (tee_local $4
       (call $db_lowerbound_i64
        (i64.load offset=64
         (get_local $7)
        )
        (i64.load
         (i32.add
          (get_local $7)
          (i32.const 72)
         )
        )
        (i64.const -5915095046964641792)
        (i64.const 0)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE31load_object_by_primary_iteratorEl
      (i32.add
       (get_local $7)
       (i32.const 64)
      )
      (get_local $4)
     )
    )
    (i32.store offset=116
     (get_local $7)
     (i32.const 0)
    )
    (i32.store offset=112
     (get_local $7)
     (i32.add
      (get_local $7)
      (i32.const 64)
     )
    )
    (set_local $1
     (select
      (i64.const -2)
      (i64.add
       (tee_local $1
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE14const_iteratormmEv
           (i32.add
            (get_local $7)
            (i32.const 112)
           )
          )
         )
        )
       )
       (i64.const 1)
      )
      (i64.gt_u
       (get_local $1)
       (i64.const -3)
      )
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $7)
     (i32.const 80)
    )
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $1)
    (i64.const -2)
   )
   (i32.const 416)
  )
  (i64.store offset=8
   (get_local $7)
   (i64.load
    (get_local $5)
   )
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=116
   (get_local $7)
   (get_local $2)
  )
  (i32.store offset=120
   (get_local $7)
   (get_local $3)
  )
  (i32.store offset=112
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 8)
   )
  )
  (i32.store offset=124
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 104)
   )
  )
  (i64.store offset=168
   (get_local $7)
   (get_local $1)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=64
     (get_local $7)
    )
    (call $current_receiver)
   )
   (i32.const 480)
  )
  (i32.store offset=20
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 112)
   )
  )
  (i32.store offset=16
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
  (i32.store offset=24
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 168)
   )
  )
  (i64.store offset=8 align=4
   (tee_local $5
    (call $_Znwj
     (i32.const 72)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=16 align=4
   (get_local $5)
   (i64.const 0)
  )
  (i64.store offset=24 align=4
   (get_local $5)
   (i64.const 0)
  )
  (i32.store offset=56
   (get_local $5)
   (i32.add
    (get_local $7)
    (i32.const 64)
   )
  )
  (call $_ZZN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE7emplaceIZNS1_7proposeEyRNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEESM_E3$_0EENSD_14const_iteratorEyOT_ENKUlRSP_E_clINSD_4itemEEEDaSR_
   (i32.add
    (get_local $7)
    (i32.const 16)
   )
   (get_local $5)
  )
  (i32.store offset=160
   (get_local $7)
   (get_local $5)
  )
  (i64.store offset=16
   (get_local $7)
   (tee_local $1
    (i64.load
     (get_local $5)
    )
   )
  )
  (i32.store offset=156
   (get_local $7)
   (tee_local $4
    (i32.load offset=60
     (get_local $5)
    )
   )
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.ge_u
      (tee_local $3
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $7)
          (i32.const 92)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 96)
       )
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
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (get_local $5)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
    (br $label$3)
   )
   (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_
    (i32.add
     (get_local $7)
     (i32.const 88)
    )
    (i32.add
     (get_local $7)
     (i32.const 160)
    )
    (i32.add
     (get_local $7)
     (i32.const 16)
    )
    (i32.add
     (get_local $7)
     (i32.const 156)
    )
   )
  )
  (set_local $5
   (i32.load offset=160
    (get_local $7)
   )
  )
  (i32.store offset=160
   (get_local $7)
   (i32.const 0)
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (get_local $5)
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (i32.and
       (i32.load8_u offset=20
        (get_local $5)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $5)
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
        (get_local $5)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $5)
       (i32.const 16)
      )
     )
    )
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (call $_ZN9eparticle10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby
   (get_local $0)
   (i64.load offset=104
    (get_local $7)
   )
   (get_local $2)
   (i32.const 1)
   (i64.load offset=24
    (get_local $0)
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (tee_local $2
      (i32.load offset=88
       (get_local $7)
      )
     )
    )
   )
   (block $label$9
    (block $label$10
     (br_if $label$10
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $3
          (i32.add
           (i32.add
            (get_local $7)
            (i32.const 64)
           )
           (i32.const 28)
          )
         )
        )
       )
       (get_local $2)
      )
     )
     (loop $label$11
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
      (block $label$12
       (br_if $label$12
        (i32.eqz
         (get_local $5)
        )
       )
       (block $label$13
        (br_if $label$13
         (i32.eqz
          (i32.and
           (i32.load8_u offset=20
            (get_local $5)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $5)
           (i32.const 28)
          )
         )
        )
       )
       (block $label$14
        (br_if $label$14
         (i32.eqz
          (i32.and
           (i32.load8_u offset=8
            (get_local $5)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $5)
           (i32.const 16)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $5)
       )
      )
      (br_if $label$11
       (i32.ne
        (get_local $2)
        (get_local $0)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 88)
       )
      )
     )
     (br $label$9)
    )
    (set_local $5
     (get_local $2)
    )
   )
   (i32.store
    (get_local $3)
    (get_local $2)
   )
   (call $_ZdlPv
    (get_local $5)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 176)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_ (param $0 i32) (param $1 i32) (param $2 i32)
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
       (i32.load offset=56
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
      (i32.const 80)
     )
     (br $label$3)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=56
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
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
       )
      )
      (get_local $4)
     )
     (i32.const 80)
    )
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const 64)
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
 (func $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 144)
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
      (i32.const 72)
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
   (i32.store offset=56
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
     (i32.const 40)
    )
   )
   (i32.store offset=52
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 48)
    )
   )
   (i32.store offset=56
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 52)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_S5_S5_RmRN9eparticle14ProposalStatusEEEEZN5eosiorsINSJ_10datastreamIPKcEENSF_12editproposalELPv0EEERT_SS_RT0_EUlSS_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSS_OST_NS6_16integer_sequenceIjJXspT1_EEEENS6_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.add
     (get_local $8)
     (i32.const 24)
    )
   )
   (i32.store offset=64
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=60
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=68
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
     (i32.load offset=60
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
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_
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
    (i32.const 64)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
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
         (i32.load offset=60
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
     (i32.const 1072)
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
       (i64.const -5915095046964641792)
      )
     )
     (i32.const -1)
    )
    (i32.const 1008)
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
    (i32.const 1008)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE31load_object_by_primary_iteratorEl
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
 (func $_ZZN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE7emplaceIZNS1_7proposeEyRNSt3__112basic_stringIcNSF_11char_traitsIcEENSF_9allocatorIcEEEESM_E3$_0EENSD_14const_iteratorEyOT_ENKUlRSP_E_clINSD_4itemEEEDaSR_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (local $14 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $13
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $14
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
     (get_local $14)
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
     (get_local $14)
    )
   )
  )
  (i64.store offset=32
   (get_local $1)
   (i64.load
    (i32.load offset=12
     (get_local $14)
    )
   )
  )
  (i64.store offset=40
   (get_local $1)
   (i64.load
    (i32.load offset=12
     (get_local $14)
    )
   )
  )
  (set_local $10
   (call $current_time)
  )
  (i32.store offset=52
   (get_local $1)
   (i32.const 0)
  )
  (i64.store32 offset=48
   (get_local $1)
   (i64.div_u
    (get_local $10)
    (i64.const 1000000)
   )
  )
  (i32.store offset=24
   (tee_local $14
    (get_local $13)
   )
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $14)
   (i32.add
    (get_local $14)
    (i32.const 24)
   )
  )
  (i32.store offset=36
   (get_local $14)
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $14)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $14)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $14)
   (tee_local $5
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=48
   (get_local $14)
   (tee_local $6
    (i32.add
     (get_local $1)
     (i32.const 40)
    )
   )
  )
  (i32.store offset=52
   (get_local $14)
   (tee_local $7
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=56
   (get_local $14)
   (tee_local $8
    (i32.add
     (get_local $1)
     (i32.const 52)
    )
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_S6_S6_RKmRKN9eparticle14ProposalStatusEEEEZN5eosiolsINSN_10datastreamIjEENSI_12editproposalELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $14)
    (i32.const 32)
   )
   (i32.add
    (get_local $14)
    (i32.const 8)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $9
       (i32.load offset=24
        (get_local $14)
       )
      )
      (i32.const 513)
     )
    )
    (set_local $13
     (call $malloc
      (get_local $9)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $13
     (i32.sub
      (get_local $13)
      (i32.and
       (i32.add
        (get_local $9)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=12
   (get_local $14)
   (get_local $13)
  )
  (i32.store offset=8
   (get_local $14)
   (get_local $13)
  )
  (i32.store offset=16
   (get_local $14)
   (i32.add
    (get_local $13)
    (get_local $9)
   )
  )
  (i32.store offset=24
   (get_local $14)
   (i32.add
    (get_local $14)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $14)
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $14)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $14)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $14)
   (get_local $5)
  )
  (i32.store offset=48
   (get_local $14)
   (get_local $6)
  )
  (i32.store offset=52
   (get_local $14)
   (get_local $7)
  )
  (i32.store offset=56
   (get_local $14)
   (get_local $8)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_S6_S6_RKmRKN9eparticle14ProposalStatusEEEEZN5eosiolsINSN_10datastreamIPcEENSI_12editproposalELPv0EEERT_SV_RKT0_EUlRKSU_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSV_OSW_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $14)
    (i32.const 32)
   )
   (i32.add
    (get_local $14)
    (i32.const 24)
   )
  )
  (i32.store offset=60
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
    (tee_local $10
     (i64.load
      (get_local $1)
     )
    )
    (get_local $13)
    (get_local $9)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.lt_u
     (get_local $9)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $13)
   )
  )
  (block $label$3
   (br_if $label$3
    (i64.lt_u
     (get_local $10)
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
      (get_local $10)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $10)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $10
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
  (set_local $12
   (i64.load
    (get_local $1)
   )
  )
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $14)
    (i32.const 32)
   )
   (get_local $3)
  )
  (i32.store offset=64
   (get_local $1)
   (call $db_idx256_store
    (get_local $10)
    (i64.const -5915095046964641792)
    (get_local $11)
    (get_local $12)
    (i32.add
     (get_local $14)
     (i32.const 32)
    )
    (i32.const 2)
   )
  )
  (set_local $10
   (i64.load
    (get_local $0)
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
   (get_local $14)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 40)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 68)
   )
   (call $db_idx64_store
    (get_local $11)
    (i64.const -5915095046964641791)
    (get_local $10)
    (get_local $12)
    (i32.add
     (get_local $14)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $14)
    (i32.const 64)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587895157748514889ENS8_IS4_yXadL_ZNKS4_15get_proposer64tEvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $_ZN9eparticle10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby (type $FUNCSIG$vijiij) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i64)
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
     (i32.const 256)
    )
   )
  )
  (i64.store offset=208
   (get_local $7)
   (get_local $1)
  )
  (i32.store8 offset=207
   (get_local $7)
   (get_local $3)
  )
  (i64.store offset=192
   (get_local $7)
   (get_local $4)
  )
  (set_local $3
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 152)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=168
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=176
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=152
   (get_local $7)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=160
   (get_local $7)
   (get_local $4)
  )
  (i32.store16 offset=188
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=144
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 152)
   )
  )
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
   (get_local $2)
  )
  (call $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 144)
   )
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $5
      (i32.load offset=4
       (get_local $7)
      )
     )
    )
   )
   (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $7)
     (i32.const 96)
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
         (i64.load offset=48
          (get_local $7)
         )
         (i64.load offset=96
          (get_local $7)
         )
        )
        (i64.xor
         (i64.load offset=56
          (get_local $7)
         )
         (i64.load offset=104
          (get_local $7)
         )
        )
       )
      )
     )
    )
    (set_local $6
     (i32.const 0)
    )
    (br_if $label$0
     (i64.ne
      (i64.or
       (i64.xor
        (i64.load offset=64
         (get_local $7)
        )
        (i64.load offset=112
         (get_local $7)
        )
       )
       (i64.xor
        (i64.load
         (i32.add
          (i32.add
           (get_local $7)
           (i32.const 48)
          )
          (i32.const 24)
         )
        )
        (i64.load
         (i32.add
          (i32.add
           (get_local $7)
           (i32.const 96)
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
     (i32.load offset=4
      (get_local $7)
     )
    )
    (br $label$0)
   )
   (set_local $6
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (i32.const 544)
  )
  (i64.store offset=136
   (get_local $7)
   (i64.load
    (get_local $6)
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
    (i32.add
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=48
      (get_local $6)
     )
    )
   )
   (i32.const 576)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $7)
     (i32.const 96)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=96
   (get_local $7)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=112
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=120
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=104
   (get_local $7)
   (get_local $4)
  )
  (i32.store8 offset=132
   (get_local $7)
   (i32.const 0)
  )
  (block $label$2
   (br_if $label$2
    (i32.lt_s
     (tee_local $6
      (call $db_find_i64
       (get_local $4)
       (get_local $4)
       (i64.const 4453191243736408576)
       (i64.load offset=208
        (get_local $7)
       )
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=24
      (tee_local $3
       (call $_ZNK5eosio11multi_indexILy4453191243736408576EN9eparticle10brainpowerEJNS_10indexed_byILy4590722025437790208EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
        (i32.add
         (get_local $7)
         (i32.const 96)
        )
        (get_local $6)
       )
      )
     )
     (i32.add
      (get_local $7)
      (i32.const 96)
     )
    )
    (i32.const 80)
   )
  )
  (call $eosio_assert
   (i64.ge_u
    (i64.load offset=16
     (get_local $3)
    )
    (i64.load offset=192
     (get_local $7)
    )
   )
   (i32.const 608)
  )
  (call $eosio_assert
   (i32.ne
    (get_local $3)
    (i32.const 0)
   )
   (i32.const 640)
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=24
     (get_local $3)
    )
    (i32.add
     (get_local $7)
     (i32.const 96)
    )
   )
   (i32.const 688)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load offset=96
     (get_local $7)
    )
    (call $current_receiver)
   )
   (i32.const 736)
  )
  (i64.store offset=248
   (get_local $7)
   (i64.load
    (tee_local $6
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $3)
   )
  )
  (call $eosio_assert
   (i64.ne
    (tee_local $1
     (i64.load offset=192
      (get_local $7)
     )
    )
    (i64.const 0)
   )
   (i32.const 800)
  )
  (call $eosio_assert
   (i64.ge_u
    (i64.load offset=16
     (get_local $3)
    )
    (get_local $1)
   )
   (i32.const 864)
  )
  (i64.store offset=16
   (get_local $3)
   (i64.sub
    (i64.load offset=16
     (get_local $3)
    )
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i64.eq
    (get_local $4)
    (i64.load
     (get_local $3)
    )
   )
   (i32.const 896)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 960)
  )
  (drop
   (call $memcpy
    (i32.add
     (get_local $7)
     (i32.const 48)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 960)
  )
  (drop
   (call $memcpy
    (i32.or
     (i32.add
      (get_local $7)
      (i32.const 48)
     )
     (i32.const 8)
    )
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 960)
  )
  (drop
   (call $memcpy
    (i32.add
     (i32.add
      (get_local $7)
      (i32.const 48)
     )
     (i32.const 16)
    )
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (call $db_update_i64
   (i32.load offset=28
    (get_local $3)
   )
   (i64.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
   (i32.const 24)
  )
  (block $label$3
   (br_if $label$3
    (i64.lt_u
     (get_local $4)
     (i64.load
      (tee_local $5
       (i32.add
        (i32.add
         (get_local $7)
         (i32.const 96)
        )
        (i32.const 16)
       )
      )
     )
    )
   )
   (i64.store
    (get_local $5)
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
  (i64.store
   (get_local $7)
   (i64.load
    (get_local $6)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $7)
       (i32.const 248)
      )
      (get_local $7)
      (i32.const 8)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $3
       (i32.load
        (tee_local $6
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
     (get_local $6)
     (tee_local $3
      (call $db_idx64_find_primary
       (i64.load offset=96
        (get_local $7)
       )
       (i64.load
        (i32.add
         (get_local $7)
         (i32.const 104)
        )
       )
       (i64.const 4453191243736408576)
       (i32.add
        (get_local $7)
        (i32.const 224)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $3)
    (i64.const 0)
    (get_local $7)
   )
  )
  (i32.store
   (i32.add
    (get_local $7)
    (i32.const 80)
   )
   (i32.const 0)
  )
  (i64.store offset=64
   (get_local $7)
   (i64.const -1)
  )
  (i64.store offset=72
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=48
   (get_local $7)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=56
   (get_local $7)
   (get_local $4)
  )
  (i32.store16 offset=84
   (get_local $7)
   (i32.const 0)
  )
  (i32.store offset=40
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
  (call $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4587895157746319360ES7_Ly0ELb0EE11lower_boundERKy
   (get_local $7)
   (i32.add
    (get_local $7)
    (i32.const 40)
   )
   (i32.add
    (get_local $7)
    (i32.const 136)
   )
  )
  (block $label$6
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eqz
       (tee_local $3
        (i32.load offset=4
         (get_local $7)
        )
       )
      )
     )
     (br_if $label$7
      (i64.ne
       (i64.load offset=136
        (get_local $7)
       )
       (i64.load
        (get_local $3)
       )
      )
     )
     (i64.store offset=32
      (get_local $7)
      (i64.load
       (get_local $7)
      )
     )
     (br $label$6)
    )
    (i32.store offset=36
     (get_local $7)
     (i32.const 0)
    )
    (i32.store offset=32
     (get_local $7)
     (i32.add
      (get_local $7)
      (i32.const 40)
     )
    )
    (br $label$6)
   )
   (i32.store offset=36
    (get_local $7)
    (i32.const 0)
   )
   (i32.store offset=32
    (get_local $7)
    (i32.add
     (get_local $7)
     (i32.const 40)
    )
   )
  )
  (block $label$9
   (br_if $label$9
    (i64.ne
     (tee_local $4
      (i64.load
       (tee_local $3
        (i32.add
         (get_local $7)
         (i32.const 64)
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
   (block $label$10
    (br_if $label$10
     (i32.lt_s
      (tee_local $0
       (call $db_lowerbound_i64
        (i64.load offset=48
         (get_local $7)
        )
        (i64.load
         (i32.add
          (get_local $7)
          (i32.const 56)
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
     (call $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl
      (i32.add
       (get_local $7)
       (i32.const 48)
      )
      (get_local $0)
     )
    )
    (i32.store offset=4
     (get_local $7)
     (i32.const 0)
    )
    (i32.store
     (get_local $7)
     (i32.add
      (get_local $7)
      (i32.const 48)
     )
    )
    (set_local $4
     (select
      (i64.const -2)
      (i64.add
       (tee_local $4
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE14const_iteratormmEv
           (get_local $7)
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
     (get_local $7)
     (i32.const 64)
    )
    (get_local $4)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (get_local $4)
    (i64.const -2)
   )
   (i32.const 416)
  )
  (i64.store offset=24
   (get_local $7)
   (i64.load
    (get_local $3)
   )
  )
  (block $label$11
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i64.ne
       (i64.load offset=8
        (tee_local $3
         (i32.load offset=36
          (get_local $7)
         )
        )
       )
       (i64.load offset=136
        (get_local $7)
       )
      )
     )
     (block $label$14
      (block $label$15
       (block $label$16
        (block $label$17
         (block $label$18
          (block $label$19
           (loop $label$20
            (br_if $label$19
             (i64.eq
              (i64.load offset=40
               (get_local $3)
              )
              (tee_local $4
               (i64.load offset=208
                (get_local $7)
               )
              )
             )
            )
            (br_if $label$18
             (i32.eqz
              (get_local $3)
             )
            )
            (drop
             (call $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4587895157746319360ES7_Ly0ELb0EE14const_iteratorppEv
              (i32.add
               (get_local $7)
               (i32.const 32)
              )
             )
            )
            (br_if $label$20
             (i64.eq
              (i64.load offset=8
               (tee_local $3
                (i32.load offset=36
                 (get_local $7)
                )
               )
              )
              (i64.load offset=136
               (get_local $7)
              )
             )
            )
            (br $label$13)
           )
          )
          (br_if $label$17
           (i32.ne
            (i32.load8_u offset=28
             (get_local $3)
            )
            (i32.load8_u offset=207
             (get_local $7)
            )
           )
          )
          (i32.store
           (get_local $7)
           (i32.add
            (get_local $7)
            (i32.const 192)
           )
          )
          (call $eosio_assert
           (i32.ne
            (get_local $3)
            (i32.const 0)
           )
           (i32.const 640)
          )
          (call $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEbyE3$_2EEvRKS2_yOT_
           (i32.load offset=40
            (get_local $7)
           )
           (get_local $3)
           (get_local $7)
          )
          (br_if $label$12
           (tee_local $6
            (i32.load offset=72
             (get_local $7)
            )
           )
          )
          (br $label$11)
         )
         (i32.store offset=8
          (get_local $7)
          (get_local $2)
         )
         (i32.store offset=4
          (get_local $7)
          (i32.add
           (get_local $7)
           (i32.const 136)
          )
         )
         (i32.store
          (get_local $7)
          (i32.add
           (get_local $7)
           (i32.const 24)
          )
         )
         (i32.store offset=12
          (get_local $7)
          (i32.add
           (get_local $7)
           (i32.const 207)
          )
         )
         (i32.store offset=16
          (get_local $7)
          (i32.add
           (get_local $7)
           (i32.const 192)
          )
         )
         (i32.store offset=20
          (get_local $7)
          (i32.add
           (get_local $7)
           (i32.const 208)
          )
         )
         (i64.store offset=248
          (get_local $7)
          (get_local $4)
         )
         (call $eosio_assert
          (i64.eq
           (i64.load offset=48
            (get_local $7)
           )
           (call $current_receiver)
          )
          (i32.const 480)
         )
         (i32.store offset=228
          (get_local $7)
          (get_local $7)
         )
         (i32.store offset=224
          (get_local $7)
          (i32.add
           (get_local $7)
           (i32.const 48)
          )
         )
         (i32.store offset=232
          (get_local $7)
          (i32.add
           (get_local $7)
           (i32.const 248)
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
           (get_local $7)
           (i32.const 48)
          )
         )
         (call $_ZZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE7emplaceIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEbyE3$_5EENSB_14const_iteratorEyOT_ENKUlRSN_E_clINSB_4itemEEEDaSP_
          (i32.add
           (get_local $7)
           (i32.const 224)
          )
          (get_local $3)
         )
         (i32.store offset=240
          (get_local $7)
          (get_local $3)
         )
         (i64.store offset=224
          (get_local $7)
          (tee_local $4
           (i64.load
            (get_local $3)
           )
          )
         )
         (i32.store offset=220
          (get_local $7)
          (tee_local $6
           (i32.load offset=64
            (get_local $3)
           )
          )
         )
         (br_if $label$16
          (i32.ge_u
           (tee_local $0
            (i32.load
             (tee_local $2
              (i32.add
               (get_local $7)
               (i32.const 76)
              )
             )
            )
           )
           (i32.load
            (i32.add
             (get_local $7)
             (i32.const 80)
            )
           )
          )
         )
         (i64.store offset=8
          (get_local $0)
          (get_local $4)
         )
         (i32.store offset=16
          (get_local $0)
          (get_local $6)
         )
         (i32.store offset=240
          (get_local $7)
          (i32.const 0)
         )
         (i32.store
          (get_local $0)
          (get_local $3)
         )
         (i32.store
          (get_local $2)
          (i32.add
           (get_local $0)
           (i32.const 24)
          )
         )
         (br $label$15)
        )
        (br_if $label$14
         (i64.ge_u
          (i64.load offset=32
           (get_local $3)
          )
          (i64.load offset=192
           (get_local $7)
          )
         )
        )
        (i32.store offset=4
         (get_local $7)
         (i32.add
          (get_local $7)
          (i32.const 32)
         )
        )
        (i32.store
         (get_local $7)
         (i32.add
          (get_local $7)
          (i32.const 192)
         )
        )
        (i32.store offset=8
         (get_local $7)
         (i32.add
          (get_local $7)
          (i32.const 207)
         )
        )
        (call $eosio_assert
         (i32.ne
          (get_local $3)
          (i32.const 0)
         )
         (i32.const 640)
        )
        (call $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEbyE3$_4EEvRKS2_yOT_
         (i32.load offset=40
          (get_local $7)
         )
         (get_local $3)
         (get_local $7)
        )
        (br_if $label$12
         (tee_local $6
          (i32.load offset=72
           (get_local $7)
          )
         )
        )
        (br $label$11)
       )
       (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS1_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_15get_proposal_idEvEEEEEENS5_ILy4591222641916264448ENS8_IS4_yXadL_ZNKS4_12get_voter64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
        (i32.add
         (get_local $7)
         (i32.const 72)
        )
        (i32.add
         (get_local $7)
         (i32.const 240)
        )
        (i32.add
         (get_local $7)
         (i32.const 224)
        )
        (i32.add
         (get_local $7)
         (i32.const 220)
        )
       )
      )
      (set_local $3
       (i32.load offset=240
        (get_local $7)
       )
      )
      (i32.store offset=240
       (get_local $7)
       (i32.const 0)
      )
      (br_if $label$13
       (i32.eqz
        (get_local $3)
       )
      )
      (block $label$21
       (br_if $label$21
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
      (br_if $label$12
       (tee_local $6
        (i32.load offset=72
         (get_local $7)
        )
       )
      )
      (br $label$11)
     )
     (i32.store offset=4
      (get_local $7)
      (i32.add
       (get_local $7)
       (i32.const 192)
      )
     )
     (i32.store
      (get_local $7)
      (i32.add
       (get_local $7)
       (i32.const 32)
      )
     )
     (call $eosio_assert
      (i32.ne
       (get_local $3)
       (i32.const 0)
      )
      (i32.const 640)
     )
     (call $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEbyE3$_3EEvRKS2_yOT_
      (i32.load offset=40
       (get_local $7)
      )
      (get_local $3)
      (get_local $7)
     )
    )
    (br_if $label$11
     (i32.eqz
      (tee_local $6
       (i32.load offset=72
        (get_local $7)
       )
      )
     )
    )
   )
   (block $label$22
    (block $label$23
     (br_if $label$23
      (i32.eq
       (tee_local $3
        (i32.load
         (tee_local $2
          (i32.add
           (get_local $7)
           (i32.const 76)
          )
         )
        )
       )
       (get_local $6)
      )
     )
     (loop $label$24
      (set_local $0
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
      (block $label$25
       (br_if $label$25
        (i32.eqz
         (get_local $0)
        )
       )
       (block $label$26
        (br_if $label$26
         (i32.eqz
          (i32.and
           (i32.load8_u offset=16
            (get_local $0)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $0)
           (i32.const 24)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$24
       (i32.ne
        (get_local $6)
        (get_local $3)
       )
      )
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 72)
       )
      )
     )
     (br $label$22)
    )
    (set_local $3
     (get_local $6)
    )
   )
   (i32.store
    (get_local $2)
    (get_local $6)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (block $label$27
   (br_if $label$27
    (i32.eqz
     (tee_local $6
      (i32.load offset=120
       (get_local $7)
      )
     )
    )
   )
   (block $label$28
    (block $label$29
     (br_if $label$29
      (i32.eq
       (tee_local $3
        (i32.load
         (tee_local $2
          (i32.add
           (get_local $7)
           (i32.const 124)
          )
         )
        )
       )
       (get_local $6)
      )
     )
     (loop $label$30
      (set_local $0
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
      (block $label$31
       (br_if $label$31
        (i32.eqz
         (get_local $0)
        )
       )
       (call $_ZdlPv
        (get_local $0)
       )
      )
      (br_if $label$30
       (i32.ne
        (get_local $6)
        (get_local $3)
       )
      )
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 120)
       )
      )
     )
     (br $label$28)
    )
    (set_local $3
     (get_local $6)
    )
   )
   (i32.store
    (get_local $2)
    (get_local $6)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (block $label$32
   (br_if $label$32
    (i32.eqz
     (tee_local $6
      (i32.load offset=176
       (get_local $7)
      )
     )
    )
   )
   (block $label$33
    (block $label$34
     (br_if $label$34
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $2
          (i32.add
           (i32.add
            (get_local $7)
            (i32.const 152)
           )
           (i32.const 28)
          )
         )
        )
       )
       (get_local $6)
      )
     )
     (loop $label$35
      (set_local $3
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
      (block $label$36
       (br_if $label$36
        (i32.eqz
         (get_local $3)
        )
       )
       (block $label$37
        (br_if $label$37
         (i32.eqz
          (i32.and
           (i32.load8_u offset=20
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
           (i32.const 28)
          )
         )
        )
       )
       (block $label$38
        (br_if $label$38
         (i32.eqz
          (i32.and
           (i32.load8_u offset=8
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
           (i32.const 16)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $3)
       )
      )
      (br_if $label$35
       (i32.ne
        (get_local $6)
        (get_local $0)
       )
      )
     )
     (set_local $3
      (i32.load
       (i32.add
        (get_local $7)
        (i32.const 176)
       )
      )
     )
     (br $label$33)
    )
    (set_local $3
     (get_local $6)
    )
   )
   (i32.store
    (get_local $2)
    (get_local $6)
   )
   (call $_ZdlPv
    (get_local $3)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 256)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4587895157746319360ES7_Ly0ELb0EE11lower_boundERKy (param $0 i32) (param $1 i32) (param $2 i32)
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
       (i64.const -2507752492951928832)
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
      (i32.const 80)
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
        (call $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
         (get_local $8)
        )
       )
      )
      (get_local $4)
     )
     (i32.const 80)
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
    (i32.const 16)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 144)
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
     (i32.const 28)
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
     (i32.const 48)
    )
   )
   (i32.store offset=60
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 56)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERbS5_S5_S5_RmEEEZN5eosiorsINSH_10datastreamIPKcEEN9eparticle4voteELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7EEEEvSR_OSS_NS6_16integer_sequenceIjJXspT1_EEEENS6_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
    (i32.add
     (get_local $8)
     (i32.const 24)
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
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS1_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_15get_proposal_idEvEEEEEENS5_ILy4591222641916264448ENS8_IS4_yXadL_ZNKS4_12get_voter64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
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
    (i32.const 64)
   )
  )
  (get_local $6)
 )
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
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
     (i32.const 1072)
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
    (i32.const 1008)
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
    (i32.const 1008)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl
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
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEbyE3$_2EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
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
   (i32.const 688)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 736)
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
  (i64.store offset=24
   (tee_local $11
    (get_local $10)
   )
   (tee_local $3
    (i64.load
     (get_local $1)
    )
   )
  )
  (i64.store offset=32
   (get_local $11)
   (i64.load
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 48)
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
    (get_local $3)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 896)
  )
  (set_local $2
   (i32.add
    (tee_local $8
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
    (i32.const 45)
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (get_local $8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (set_local $5
   (i32.add
    (get_local $11)
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
     (tee_local $9
      (i64.shr_u
       (get_local $9)
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
    (set_local $10
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $10
     (i32.sub
      (get_local $10)
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
  (i32.store offset=12
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=8
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=16
   (get_local $11)
   (i32.add
    (get_local $10)
    (get_local $2)
   )
  )
  (i32.store offset=40
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 8)
   )
  )
  (i32.store offset=56
   (get_local $11)
   (get_local $8)
  )
  (i32.store offset=64
   (get_local $11)
   (get_local $6)
  )
  (i32.store offset=72
   (get_local $11)
   (get_local $4)
  )
  (i32.store offset=48
   (get_local $11)
   (get_local $1)
  )
  (i32.store offset=52
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=60
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=68
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=76
   (get_local $11)
   (get_local $7)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbS6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN9eparticle4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $11)
    (i32.const 48)
   )
   (i32.add
    (get_local $11)
    (i32.const 40)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $10)
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
    (get_local $10)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $3)
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
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=48
   (get_local $11)
   (i64.load
    (get_local $1)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $11)
       (i32.const 24)
      )
      (i32.add
       (get_local $11)
       (i32.const 48)
      )
      (i32.const 8)
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
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928832)
       (i32.add
        (get_local $11)
        (i32.const 40)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $11)
     (i32.const 48)
    )
   )
  )
  (i64.store offset=48
   (get_local $11)
   (i64.load
    (get_local $4)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (call $memcmp
      (get_local $5)
      (i32.add
       (get_local $11)
       (i32.const 48)
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
        (tee_local $1
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
     (get_local $1)
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
        (get_local $11)
        (i32.const 40)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $11)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 80)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEbyE3$_3EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 80)
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
   (i32.const 688)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 736)
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
  (i64.store offset=24
   (tee_local $11
    (get_local $10)
   )
   (tee_local $3
    (i64.load
     (get_local $1)
    )
   )
  )
  (i64.store offset=32
   (get_local $11)
   (i64.load
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 48)
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
    (get_local $3)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 896)
  )
  (set_local $2
   (i32.add
    (tee_local $8
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
    (i32.const 45)
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (get_local $8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (set_local $5
   (i32.add
    (get_local $11)
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
     (tee_local $9
      (i64.shr_u
       (get_local $9)
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
    (set_local $10
     (call $malloc
      (get_local $2)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $10
     (i32.sub
      (get_local $10)
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
  (i32.store offset=12
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=8
   (get_local $11)
   (get_local $10)
  )
  (i32.store offset=16
   (get_local $11)
   (i32.add
    (get_local $10)
    (get_local $2)
   )
  )
  (i32.store offset=40
   (get_local $11)
   (i32.add
    (get_local $11)
    (i32.const 8)
   )
  )
  (i32.store offset=56
   (get_local $11)
   (get_local $8)
  )
  (i32.store offset=64
   (get_local $11)
   (get_local $6)
  )
  (i32.store offset=72
   (get_local $11)
   (get_local $4)
  )
  (i32.store offset=48
   (get_local $11)
   (get_local $1)
  )
  (i32.store offset=52
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=60
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (i32.store offset=68
   (get_local $11)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=76
   (get_local $11)
   (get_local $7)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbS6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN9eparticle4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $11)
    (i32.const 48)
   )
   (i32.add
    (get_local $11)
    (i32.const 40)
   )
  )
  (call $db_update_i64
   (i32.load offset=64
    (get_local $1)
   )
   (i64.const 0)
   (get_local $10)
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
    (get_local $10)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $3)
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
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=48
   (get_local $11)
   (i64.load
    (get_local $1)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $11)
       (i32.const 24)
      )
      (i32.add
       (get_local $11)
       (i32.const 48)
      )
      (i32.const 8)
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
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928832)
       (i32.add
        (get_local $11)
        (i32.const 40)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $11)
     (i32.const 48)
    )
   )
  )
  (i64.store offset=48
   (get_local $11)
   (i64.load
    (get_local $4)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (call $memcmp
      (get_local $5)
      (i32.add
       (get_local $11)
       (i32.const 48)
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
        (tee_local $1
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
     (get_local $1)
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
        (get_local $11)
        (i32.const 40)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $11)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 80)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE6modifyIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEbyE3$_4EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
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
     (i32.const 80)
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
   (i32.const 688)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 736)
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
  (i64.store offset=24
   (tee_local $12
    (get_local $11)
   )
   (tee_local $3
    (i64.load
     (get_local $1)
    )
   )
  )
  (i64.store offset=32
   (get_local $12)
   (i64.load
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 48)
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
    (get_local $3)
    (i64.load
     (get_local $1)
    )
   )
   (i32.const 896)
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
    (i32.const 45)
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
    (i32.const 16)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 56)
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (set_local $5
   (i32.add
    (get_local $12)
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
  (i32.store offset=12
   (get_local $12)
   (get_local $11)
  )
  (i32.store offset=8
   (get_local $12)
   (get_local $11)
  )
  (i32.store offset=16
   (get_local $12)
   (i32.add
    (get_local $11)
    (get_local $2)
   )
  )
  (i32.store offset=40
   (get_local $12)
   (i32.add
    (get_local $12)
    (i32.const 8)
   )
  )
  (i32.store offset=56
   (get_local $12)
   (get_local $9)
  )
  (i32.store offset=60
   (get_local $12)
   (get_local $7)
  )
  (i32.store offset=64
   (get_local $12)
   (get_local $6)
  )
  (i32.store offset=72
   (get_local $12)
   (get_local $4)
  )
  (i32.store offset=48
   (get_local $12)
   (get_local $1)
  )
  (i32.store offset=52
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=68
   (get_local $12)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (i32.store offset=76
   (get_local $12)
   (get_local $8)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbS6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN9eparticle4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $12)
    (i32.const 48)
   )
   (i32.add
    (get_local $12)
    (i32.const 40)
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
     (get_local $3)
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
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=48
   (get_local $12)
   (i64.load
    (get_local $1)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $12)
       (i32.const 24)
      )
      (i32.add
       (get_local $12)
       (i32.const 48)
      )
      (i32.const 8)
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
    (i32.store
     (i32.add
      (get_local $1)
      (i32.const 68)
     )
     (tee_local $2
      (call $db_idx64_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -2507752492951928832)
       (i32.add
        (get_local $12)
        (i32.const 40)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $12)
     (i32.const 48)
    )
   )
  )
  (i64.store offset=48
   (get_local $12)
   (i64.load
    (get_local $4)
   )
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (call $memcmp
      (get_local $5)
      (i32.add
       (get_local $12)
       (i32.const 48)
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
        (tee_local $1
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
     (get_local $1)
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
        (i32.const 40)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $2)
    (i64.const 0)
    (i32.add
     (get_local $12)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $12)
    (i32.const 80)
   )
  )
 )
 (func $_ZZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE7emplaceIZNS1_10votebyhashEyRNSt3__112basic_stringIcNSD_11char_traitsIcEENSD_9allocatorIcEEEEbyE3$_5EENSB_14const_iteratorEyOT_ENKUlRSN_E_clINSB_4itemEEEDaSP_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (set_local $15
   (tee_local $14
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
   (get_local $14)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load
     (tee_local $12
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
     (get_local $12)
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
     (get_local $12)
    )
   )
  )
  (i32.store8 offset=28
   (get_local $1)
   (i32.load8_u
    (i32.load offset=12
     (get_local $12)
    )
   )
  )
  (i64.store offset=32
   (get_local $1)
   (i64.load
    (i32.load offset=16
     (get_local $12)
    )
   )
  )
  (i64.store offset=40
   (get_local $1)
   (i64.load
    (i32.load offset=20
     (get_local $12)
    )
   )
  )
  (i64.store offset=48
   (get_local $1)
   (i64.load
    (i32.load offset=20
     (get_local $12)
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
  (set_local $12
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
       (tee_local $12
        (i32.load8_u offset=16
         (get_local $1)
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
    (i32.const 45)
   )
  )
  (set_local $13
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
    (i32.const 48)
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 32)
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
   (set_local $12
    (i32.add
     (get_local $12)
     (i32.const 1)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $13
      (i64.shr_u
       (get_local $13)
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
      (get_local $12)
      (i32.const 513)
     )
    )
    (set_local $14
     (call $malloc
      (get_local $12)
     )
    )
    (br $label$1)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $14
     (i32.sub
      (get_local $14)
      (i32.and
       (i32.add
        (get_local $12)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=12
   (get_local $15)
   (get_local $14)
  )
  (i32.store offset=8
   (get_local $15)
   (get_local $14)
  )
  (i32.store offset=16
   (get_local $15)
   (i32.add
    (get_local $14)
    (get_local $12)
   )
  )
  (i32.store offset=24
   (get_local $15)
   (i32.add
    (get_local $15)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $15)
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $15)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $15)
   (get_local $4)
  )
  (i32.store offset=44
   (get_local $15)
   (get_local $5)
  )
  (i32.store offset=48
   (get_local $15)
   (get_local $6)
  )
  (i32.store offset=52
   (get_local $15)
   (get_local $7)
  )
  (i32.store offset=56
   (get_local $15)
   (get_local $8)
  )
  (i32.store offset=60
   (get_local $15)
   (get_local $9)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbS6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN9eparticle4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $15)
    (i32.const 32)
   )
   (i32.add
    (get_local $15)
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
    (tee_local $13
     (i64.load
      (get_local $1)
     )
    )
    (get_local $14)
    (get_local $12)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.lt_u
     (get_local $12)
     (i32.const 513)
    )
   )
   (call $free
    (get_local $14)
   )
  )
  (block $label$4
   (br_if $label$4
    (i64.lt_u
     (get_local $13)
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
      (get_local $13)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $13)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $13
   (i64.load
    (tee_local $12
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $10
   (i64.load
    (tee_local $14
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
    )
   )
  )
  (i64.store offset=32
   (get_local $15)
   (tee_local $11
    (i64.load
     (get_local $1)
    )
   )
  )
  (i32.store offset=68
   (get_local $1)
   (call $db_idx64_store
    (get_local $13)
    (i64.const -2507752492951928832)
    (get_local $10)
    (get_local $11)
    (i32.add
     (get_local $15)
     (i32.const 32)
    )
   )
  )
  (set_local $13
   (i64.load
    (get_local $14)
   )
  )
  (set_local $10
   (i64.load
    (get_local $12)
   )
  )
  (set_local $11
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=32
   (get_local $15)
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
    (i32.const 72)
   )
   (call $db_idx64_store
    (get_local $10)
    (i64.const -2507752492951928831)
    (get_local $13)
    (get_local $11)
    (i32.add
     (get_local $15)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $15)
    (i32.const 64)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS1_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_15get_proposal_idEvEEEEEENS5_ILy4591222641916264448ENS8_IS4_yXadL_ZNKS4_12get_voter64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4587895157746319360ES7_Ly0ELb0EE14const_iteratorppEv (param $0 i32) (result i32)
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
   (i32.const 976)
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
     (i64.const -2507752492951928832)
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
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
      (i32.const 80)
     )
     (br $label$4)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=60
       (tee_local $7
        (call $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE31load_object_by_primary_iteratorEl
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
     (i32.const 80)
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
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_RKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKbS6_S6_S6_RKmEEEZN5eosiolsINSL_10datastreamIPcEEN9eparticle4voteELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
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
   (i32.const 960)
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
   (i32.const 960)
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
  (i32.store8 offset=15
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
   (i32.const 960)
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
   (i32.const 960)
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
    (i32.const 7)
   )
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.load offset=28
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
   (i32.const 960)
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
    (i32.const 960)
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
    (i32.const 960)
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
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_RNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEERbS5_S5_S5_RmEEEZN5eosiorsINSH_10datastreamIPKcEEN9eparticle4voteELPv0EEERT_SR_RT0_EUlSR_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6ELj7EEEEvSR_OSS_NS6_16integer_sequenceIjJXspT1_EEEENS6_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.load offset=28
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
   (i32.const 272)
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
    (i32.const 1120)
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
   (i32.const 272)
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
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_S6_S6_RKmRKN9eparticle14ProposalStatusEEEEZN5eosiolsINSN_10datastreamIjEENSI_12editproposalELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
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
    (tee_local $0
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
   (get_local $0)
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
    (get_local $0)
    (i32.add
     (get_local $2)
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
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_S6_S6_RKmRKN9eparticle14ProposalStatusEEEEZN5eosiolsINSN_10datastreamIPcEENSI_12editproposalELPv0EEERT_SV_RKT0_EUlRKSU_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSV_OSW_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
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
   (i32.const 960)
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
   (i32.const 960)
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
    (i32.const 7)
   )
   (i32.const 960)
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
    (i32.const 3)
   )
   (i32.const 960)
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
   (i32.load offset=24
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
   (i32.const 960)
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
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyRNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_S5_S5_RmRN9eparticle14ProposalStatusEEEEZN5eosiorsINSJ_10datastreamIPKcEENSF_12editproposalELPv0EEERT_SS_RT0_EUlSS_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSS_OST_NS6_16integer_sequenceIjJXspT1_EEEENS6_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
 (func $_ZN9eparticle8votebyidEyyby (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64)
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
   (tee_local $7
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=32
   (get_local $8)
   (get_local $7)
  )
  (i32.store16 offset=60
   (get_local $8)
   (i32.const 0)
  )
  (set_local $6
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $5
      (call $db_find_i64
       (get_local $7)
       (get_local $7)
       (i64.const -5915095046964641792)
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=56
      (tee_local $6
       (call $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE31load_object_by_primary_iteratorEl
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
    (i32.const 80)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $6)
    (i32.const 0)
   )
   (i32.const 544)
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
   )
  )
  (call $_ZN9eparticle10votebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEby
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
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $3
      (i32.load offset=48
       (get_local $8)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (i32.add
            (get_local $8)
            (i32.const 24)
           )
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$5
      (set_local $6
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
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (get_local $6)
        )
       )
       (block $label$7
        (br_if $label$7
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
       (block $label$8
        (br_if $label$8
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
      (br_if $label$5
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $6
      (i32.load
       (i32.add
        (get_local $8)
        (i32.const 48)
       )
      )
     )
     (br $label$3)
    )
    (set_local $6
     (get_local $3)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $6)
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
 (func $_ZN9eparticle14finalizebyhashEyRNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $6
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
    (get_local $6)
    (i32.const 72)
   )
   (i32.const 0)
  )
  (i64.store offset=56
   (get_local $6)
   (i64.const -1)
  )
  (i64.store offset=64
   (get_local $6)
   (i64.const 0)
  )
  (i64.store offset=40
   (get_local $6)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=48
   (get_local $6)
   (get_local $4)
  )
  (i32.store16 offset=76
   (get_local $6)
   (i32.const 0)
  )
  (i32.store offset=32
   (get_local $6)
   (i32.add
    (get_local $6)
    (i32.const 40)
   )
  )
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (get_local $6)
   (get_local $2)
  )
  (call $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $6)
    (i32.const 120)
   )
   (i32.add
    (get_local $6)
    (i32.const 32)
   )
   (get_local $6)
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.eqz
     (tee_local $3
      (i32.load offset=124
       (get_local $6)
      )
     )
    )
   )
   (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $6)
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
          (get_local $6)
         )
         (i64.load offset=80
          (get_local $6)
         )
        )
        (i64.xor
         (i64.load offset=8
          (get_local $6)
         )
         (i64.load offset=88
          (get_local $6)
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
         (get_local $6)
        )
        (i64.load offset=96
         (get_local $6)
        )
       )
       (i64.xor
        (i64.load
         (i32.add
          (get_local $6)
          (i32.const 24)
         )
        )
        (i64.load
         (i32.add
          (i32.add
           (get_local $6)
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
      (get_local $6)
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
   (i32.const 544)
  )
  (call $_ZN9eparticle8finalizeEyy
   (get_local $0)
   (get_local $4)
   (i64.load
    (get_local $2)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $3
      (i32.load offset=64
       (get_local $6)
      )
     )
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $5
          (i32.add
           (i32.add
            (get_local $6)
            (i32.const 40)
           )
           (i32.const 28)
          )
         )
        )
       )
       (get_local $3)
      )
     )
     (loop $label$5
      (set_local $2
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
      (block $label$6
       (br_if $label$6
        (i32.eqz
         (get_local $2)
        )
       )
       (block $label$7
        (br_if $label$7
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
       (block $label$8
        (br_if $label$8
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
      (br_if $label$5
       (i32.ne
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (set_local $2
      (i32.load
       (i32.add
        (get_local $6)
        (i32.const 64)
       )
      )
     )
     (br $label$3)
    )
    (set_local $2
     (get_local $3)
    )
   )
   (i32.store
    (get_local $5)
    (get_local $3)
   )
   (call $_ZdlPv
    (get_local $2)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $6)
    (i32.const 128)
   )
  )
 )
 (func $_ZN9eparticle8finalizeEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $23
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 352)
    )
   )
  )
  (i64.store offset=248
   (get_local $23)
   (get_local $2)
  )
  (set_local $22
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (get_local $23)
    (i32.const 240)
   )
   (i32.const 0)
  )
  (i64.store offset=224
   (get_local $23)
   (i64.const -1)
  )
  (i64.store offset=232
   (get_local $23)
   (i64.const 0)
  )
  (i64.store offset=208
   (get_local $23)
   (tee_local $10
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=216
   (get_local $23)
   (get_local $10)
  )
  (i32.store16 offset=244
   (get_local $23)
   (i32.const 0)
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.le_s
      (tee_local $7
       (call $db_find_i64
        (get_local $10)
        (get_local $10)
        (i64.const -5915095046964641792)
        (get_local $2)
       )
      )
      (i32.const -1)
     )
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=56
       (tee_local $22
        (call $_ZNK5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE31load_object_by_primary_iteratorEl
         (i32.add
          (get_local $23)
          (i32.const 208)
         )
         (get_local $7)
        )
       )
      )
      (i32.add
       (get_local $23)
       (i32.const 208)
      )
     )
     (i32.const 80)
    )
    (i32.store offset=204
     (get_local $23)
     (get_local $22)
    )
    (i32.store offset=200
     (get_local $23)
     (i32.add
      (get_local $23)
      (i32.const 208)
     )
    )
    (br $label$0)
   )
   (i32.store offset=204
    (get_local $23)
    (i32.const 0)
   )
   (i32.store offset=200
    (get_local $23)
    (i32.add
     (get_local $23)
     (i32.const 208)
    )
   )
  )
  (set_local $7
   (i32.const 0)
  )
  (call $eosio_assert
   (i32.ne
    (get_local $22)
    (i32.const 0)
   )
   (i32.const 544)
  )
  (call $eosio_assert
   (i32.gt_u
    (i32.wrap/i64
     (i64.div_u
      (call $current_time)
      (i64.const 1000000)
     )
    )
    (i32.add
     (i32.load offset=8
      (get_local $0)
     )
     (i32.load offset=48
      (i32.load offset=204
       (get_local $23)
      )
     )
    )
   )
   (i32.const 576)
  )
  (i32.store
   (i32.add
    (get_local $23)
    (i32.const 192)
   )
   (i32.const 0)
  )
  (i64.store offset=176
   (get_local $23)
   (i64.const -1)
  )
  (i64.store offset=184
   (get_local $23)
   (i64.const 0)
  )
  (i64.store offset=160
   (get_local $23)
   (tee_local $10
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=168
   (get_local $23)
   (get_local $10)
  )
  (i32.store16 offset=196
   (get_local $23)
   (i32.const 0)
  )
  (i32.store offset=152
   (get_local $23)
   (i32.add
    (get_local $23)
    (i32.const 160)
   )
  )
  (call $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4587895157746319360ES7_Ly0ELb0EE11lower_boundERKy
   (i32.add
    (get_local $23)
    (i32.const 256)
   )
   (i32.add
    (get_local $23)
    (i32.const 152)
   )
   (i32.add
    (get_local $23)
    (i32.const 248)
   )
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.eqz
       (tee_local $22
        (i32.load offset=260
         (get_local $23)
        )
       )
      )
     )
     (br_if $label$3
      (i64.ne
       (i64.load offset=248
        (get_local $23)
       )
       (i64.load
        (get_local $22)
       )
      )
     )
     (i64.store offset=144
      (get_local $23)
      (tee_local $10
       (i64.load offset=256
        (get_local $23)
       )
      )
     )
     (set_local $7
      (i32.wrap/i64
       (i64.shr_u
        (get_local $10)
        (i64.const 32)
       )
      )
     )
     (set_local $21
      (i32.or
       (i32.add
        (get_local $23)
        (i32.const 144)
       )
       (i32.const 4)
      )
     )
     (br $label$2)
    )
    (i32.store offset=148
     (get_local $23)
     (i32.const 0)
    )
    (i32.store offset=144
     (get_local $23)
     (i32.add
      (get_local $23)
      (i32.const 152)
     )
    )
    (set_local $21
     (i32.or
      (i32.add
       (get_local $23)
       (i32.const 144)
      )
      (i32.const 4)
     )
    )
    (br $label$2)
   )
   (set_local $7
    (i32.const 0)
   )
   (i32.store offset=148
    (get_local $23)
    (i32.const 0)
   )
   (i32.store offset=144
    (get_local $23)
    (i32.add
     (get_local $23)
     (i32.const 152)
    )
   )
   (set_local $21
    (i32.or
     (i32.add
      (get_local $23)
      (i32.const 144)
     )
     (i32.const 4)
    )
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $7)
    (i32.const 0)
   )
   (i32.const 1136)
  )
  (set_local $2
   (i64.const 0)
  )
  (i64.store offset=136
   (get_local $23)
   (i64.const 0)
  )
  (i64.store offset=128
   (get_local $23)
   (i64.const 0)
  )
  (block $label$5
   (br_if $label$5
    (i64.ne
     (i64.load offset=8
      (tee_local $22
       (i32.load
        (get_local $21)
       )
      )
     )
     (i64.load offset=248
      (get_local $23)
     )
    )
   )
   (loop $label$6
    (set_local $10
     (i64.load offset=32
      (get_local $22)
     )
    )
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.eqz
        (i32.load8_u offset=28
         (get_local $22)
        )
       )
      )
      (i64.store offset=136
       (get_local $23)
       (i64.add
        (i64.load offset=136
         (get_local $23)
        )
        (get_local $10)
       )
      )
      (br $label$7)
     )
     (i64.store offset=128
      (get_local $23)
      (i64.add
       (i64.load offset=128
        (get_local $23)
       )
       (get_local $10)
      )
     )
    )
    (drop
     (call $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4587895157746319360ES7_Ly0ELb0EE14const_iteratorppEv
      (i32.add
       (get_local $23)
       (i32.const 144)
      )
     )
    )
    (br_if $label$6
     (i64.eq
      (i64.load offset=8
       (tee_local $22
        (i32.load
         (get_local $21)
        )
       )
      )
      (i64.load offset=248
       (get_local $23)
      )
     )
    )
   )
  )
  (set_local $22
   (i32.load offset=204
    (get_local $23)
   )
  )
  (i32.store offset=260
   (get_local $23)
   (i32.add
    (get_local $23)
    (i32.const 128)
   )
  )
  (i32.store offset=256
   (get_local $23)
   (i32.add
    (get_local $23)
    (i32.const 136)
   )
  )
  (call $eosio_assert
   (i32.ne
    (get_local $22)
    (i32.const 0)
   )
   (i32.const 640)
  )
  (call $_ZN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE6modifyIZNS1_8finalizeEyyE3$_6EEvRKS2_yOT_
   (i32.add
    (get_local $23)
    (i32.const 208)
   )
   (get_local $22)
   (i32.add
    (get_local $23)
    (i32.const 256)
   )
  )
  (call $_ZNK5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4587895157746319360ES7_Ly0ELb0EE11lower_boundERKy
   (i32.add
    (get_local $23)
    (i32.const 256)
   )
   (i32.add
    (get_local $23)
    (i32.const 152)
   )
   (i32.add
    (get_local $23)
    (i32.const 248)
   )
  )
  (set_local $22
   (i32.add
    (get_local $23)
    (i32.const 152)
   )
  )
  (set_local $10
   (i64.load offset=248
    (get_local $23)
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (tee_local $7
      (i32.load offset=260
       (get_local $23)
      )
     )
    )
   )
   (br_if $label$9
    (i64.ne
     (get_local $10)
     (i64.load
      (get_local $7)
     )
    )
   )
   (set_local $2
    (i64.and
     (tee_local $15
      (i64.load offset=256
       (get_local $23)
      )
     )
     (i64.const -4294967296)
    )
   )
   (set_local $22
    (i32.wrap/i64
     (get_local $15)
    )
   )
  )
  (i64.store offset=144
   (get_local $23)
   (i64.or
    (get_local $2)
    (i64.extend_u/i32
     (get_local $22)
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i64.ne
     (i64.load offset=8
      (tee_local $22
       (i32.wrap/i64
        (i64.shr_u
         (get_local $2)
         (i64.const 32)
        )
       )
      )
     )
     (get_local $10)
    )
   )
   (set_local $3
    (select
     (i64.sub
      (tee_local $10
       (i64.load offset=136
        (get_local $23)
       )
      )
      (tee_local $2
       (i64.load offset=128
        (get_local $23)
       )
      )
     )
     (i64.sub
      (get_local $2)
      (get_local $10)
     )
     (tee_local $11
      (i64.gt_u
       (get_local $10)
       (get_local $2)
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (i32.add
      (get_local $23)
      (i32.const 80)
     )
     (i32.const 24)
    )
   )
   (set_local $5
    (i32.add
     (i32.add
      (get_local $23)
      (i32.const 328)
     )
     (i32.const 8)
    )
   )
   (set_local $4
    (i32.add
     (i32.add
      (get_local $23)
      (i32.const 256)
     )
     (i32.const 44)
    )
   )
   (set_local $12
    (i32.add
     (i32.add
      (get_local $23)
      (i32.const 80)
     )
     (i32.const 16)
    )
   )
   (set_local $13
    (i32.add
     (i32.add
      (get_local $23)
      (i32.const 80)
     )
     (i32.const 32)
    )
   )
   (set_local $14
    (i32.add
     (get_local $23)
     (i32.const 116)
    )
   )
   (set_local $17
    (i32.add
     (get_local $23)
     (i32.const 12)
    )
   )
   (set_local $18
    (i32.add
     (get_local $23)
     (i32.const 20)
    )
   )
   (set_local $20
    (i32.add
     (get_local $23)
     (i32.const 108)
    )
   )
   (loop $label$11
    (block $label$12
     (br_if $label$12
      (i32.eq
       (i32.load8_u offset=28
        (get_local $22)
       )
       (get_local $11)
      )
     )
     (set_local $2
      (i64.load offset=32
       (get_local $22)
      )
     )
     (i64.store
      (get_local $12)
      (i64.const -1)
     )
     (i64.store
      (get_local $6)
      (i64.const 0)
     )
     (i32.store
      (get_local $13)
      (i32.const 0)
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $23)
        (i32.const 80)
       )
       (i32.const 8)
      )
      (tee_local $10
       (i64.load
        (get_local $0)
       )
      )
     )
     (i64.store offset=80
      (get_local $23)
      (get_local $10)
     )
     (i32.store16
      (get_local $14)
      (i32.const 0)
     )
     (i32.store offset=72
      (get_local $23)
      (i32.add
       (get_local $23)
       (i32.const 80)
      )
     )
     (call $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
      (i32.add
       (get_local $23)
       (i32.const 256)
      )
      (i32.add
       (get_local $23)
       (i32.const 72)
      )
      (tee_local $22
       (i32.add
        (i32.load
         (get_local $21)
        )
        (i32.const 40)
       )
      )
     )
     (block $label$13
      (block $label$14
       (block $label$15
        (br_if $label$15
         (i32.eqz
          (tee_local $7
           (i32.load offset=260
            (get_local $23)
           )
          )
         )
        )
        (br_if $label$14
         (i64.ne
          (i64.load
           (get_local $22)
          )
          (i64.load offset=8
           (get_local $7)
          )
         )
        )
        (i64.store offset=64
         (get_local $23)
         (tee_local $10
          (i64.load offset=256
           (get_local $23)
          )
         )
        )
        (set_local $22
         (i32.wrap/i64
          (i64.shr_u
           (get_local $10)
           (i64.const 32)
          )
         )
        )
        (br $label$13)
       )
       (set_local $22
        (i32.const 0)
       )
       (i32.store offset=68
        (get_local $23)
        (i32.const 0)
       )
       (i32.store offset=64
        (get_local $23)
        (i32.add
         (get_local $23)
         (i32.const 72)
        )
       )
       (br $label$13)
      )
      (set_local $22
       (i32.const 0)
      )
      (i32.store offset=68
       (get_local $23)
       (i32.const 0)
      )
      (i32.store offset=64
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 72)
       )
      )
     )
     (block $label$16
      (br_if $label$16
       (i64.ne
        (i64.load offset=8
         (get_local $22)
        )
        (i64.load offset=40
         (i32.load
          (get_local $21)
         )
        )
       )
      )
      (block $label$17
       (loop $label$18
        (br_if $label$17
         (i64.lt_u
          (i64.load offset=24
           (get_local $22)
          )
          (get_local $2)
         )
        )
        (call $eosio_assert
         (i32.ne
          (get_local $22)
          (i32.const 0)
         )
         (i32.const 640)
        )
        (call $eosio_assert
         (i32.eq
          (i32.load offset=48
           (get_local $22)
          )
          (tee_local $7
           (i32.load offset=72
            (get_local $23)
           )
          )
         )
         (i32.const 688)
        )
        (call $eosio_assert
         (i64.eq
          (i64.load
           (get_local $7)
          )
          (call $current_receiver)
         )
         (i32.const 736)
        )
        (i64.store
         (get_local $5)
         (i64.load
          (tee_local $9
           (i32.add
            (get_local $22)
            (i32.const 16)
           )
          )
         )
        )
        (i64.store offset=328
         (get_local $23)
         (i64.load
          (tee_local $8
           (i32.add
            (get_local $22)
            (i32.const 8)
           )
          )
         )
        )
        (set_local $10
         (i64.load
          (get_local $22)
         )
        )
        (i64.store offset=40
         (get_local $22)
         (i64.add
          (i64.div_u
           (i64.mul
            (i64.load
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
            )
            (get_local $3)
           )
           (i64.const 100)
          )
          (i64.load offset=40
           (get_local $22)
          )
         )
        )
        (i64.store32 offset=32
         (get_local $22)
         (i64.div_u
          (call $current_time)
          (i64.const 1000000)
         )
        )
        (set_local $15
         (i64.load offset=24
          (i32.load offset=68
           (get_local $23)
          )
         )
        )
        (call $eosio_assert
         (i64.eq
          (get_local $10)
          (i64.load
           (get_local $22)
          )
         )
         (i32.const 896)
        )
        (i32.store
         (i32.add
          (i32.add
           (get_local $23)
           (i32.const 312)
          )
          (i32.const 8)
         )
         (get_local $4)
        )
        (i32.store offset=316
         (get_local $23)
         (i32.add
          (get_local $23)
          (i32.const 256)
         )
        )
        (i32.store offset=312
         (get_local $23)
         (i32.add
          (get_local $23)
          (i32.const 256)
         )
        )
        (i32.store offset=344
         (get_local $23)
         (i32.add
          (get_local $23)
          (i32.const 312)
         )
        )
        (i32.store
         (i32.add
          (get_local $23)
          (i32.const 8)
         )
         (get_local $9)
        )
        (i32.store
         (get_local $17)
         (i32.add
          (get_local $22)
          (i32.const 24)
         )
        )
        (i32.store
         (i32.add
          (get_local $23)
          (i32.const 16)
         )
         (i32.add
          (get_local $22)
          (i32.const 32)
         )
        )
        (i32.store
         (get_local $18)
         (i32.add
          (get_local $22)
          (i32.const 40)
         )
        )
        (i32.store offset=4
         (get_local $23)
         (get_local $8)
        )
        (i32.store
         (get_local $23)
         (get_local $22)
        )
        (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS6_EEEZN5eosiolsINSA_10datastreamIPcEEN9eparticle5stakeELPv0EEERT_SJ_RKT0_EUlRKSI_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSR_17integral_constantIbLb0EEE
         (get_local $23)
         (i32.add
          (get_local $23)
          (i32.const 344)
         )
        )
        (call $db_update_i64
         (i32.load offset=52
          (get_local $22)
         )
         (i64.const 0)
         (i32.add
          (get_local $23)
          (i32.const 256)
         )
         (i32.const 44)
        )
        (block $label$19
         (br_if $label$19
          (i64.lt_u
           (get_local $10)
           (i64.load offset=16
            (get_local $7)
           )
          )
         )
         (i64.store
          (i32.add
           (get_local $7)
           (i32.const 16)
          )
          (select
           (i64.const -2)
           (i64.add
            (get_local $10)
            (i64.const 1)
           )
           (i64.gt_u
            (get_local $10)
            (i64.const -3)
           )
          )
         )
        )
        (i64.store
         (get_local $23)
         (i64.load
          (get_local $8)
         )
        )
        (block $label$20
         (br_if $label$20
          (i32.eqz
           (call $memcmp
            (i32.add
             (get_local $23)
             (i32.const 328)
            )
            (get_local $23)
            (i32.const 8)
           )
          )
         )
         (block $label$21
          (br_if $label$21
           (i32.gt_s
            (tee_local $8
             (i32.load
              (tee_local $16
               (i32.add
                (get_local $22)
                (i32.const 56)
               )
              )
             )
            )
            (i32.const -1)
           )
          )
          (i32.store
           (get_local $16)
           (tee_local $8
            (call $db_idx64_find_primary
             (i64.load
              (get_local $7)
             )
             (i64.load offset=8
              (get_local $7)
             )
             (i64.const -4157660949894922240)
             (i32.add
              (get_local $23)
              (i32.const 344)
             )
             (get_local $10)
            )
           )
          )
         )
         (call $db_idx64_update
          (get_local $8)
          (i64.const 0)
          (get_local $23)
         )
        )
        (i64.store
         (get_local $23)
         (i64.load
          (get_local $9)
         )
        )
        (block $label$22
         (br_if $label$22
          (i32.eqz
           (call $memcmp
            (get_local $5)
            (get_local $23)
            (i32.const 8)
           )
          )
         )
         (block $label$23
          (br_if $label$23
           (i32.gt_s
            (tee_local $22
             (i32.load
              (tee_local $9
               (i32.add
                (get_local $22)
                (i32.const 60)
               )
              )
             )
            )
            (i32.const -1)
           )
          )
          (i32.store
           (get_local $9)
           (tee_local $22
            (call $db_idx64_find_primary
             (i64.load
              (get_local $7)
             )
             (i64.load offset=8
              (get_local $7)
             )
             (i64.const -4157660949894922239)
             (i32.add
              (get_local $23)
              (i32.const 344)
             )
             (get_local $10)
            )
           )
          )
         )
         (call $db_idx64_update
          (get_local $22)
          (i64.const 0)
          (get_local $23)
         )
        )
        (set_local $2
         (i64.sub
          (get_local $2)
          (get_local $15)
         )
        )
        (drop
         (call $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE14const_iteratorppEv
          (i32.add
           (get_local $23)
           (i32.const 64)
          )
         )
        )
        (br_if $label$18
         (i64.eq
          (i64.load offset=8
           (tee_local $22
            (i32.load offset=68
             (get_local $23)
            )
           )
          )
          (i64.load offset=40
           (i32.load
            (get_local $21)
           )
          )
         )
        )
        (br $label$16)
       )
      )
      (i64.store offset=56
       (get_local $23)
       (i64.sub
        (i64.load offset=24
         (get_local $22)
        )
        (get_local $2)
       )
      )
      (i32.store offset=52
       (get_local $23)
       (i32.load offset=32
        (get_local $22)
       )
      )
      (i64.store offset=40
       (get_local $23)
       (i64.load offset=40
        (get_local $22)
       )
      )
      (call $eosio_assert
       (i32.ne
        (get_local $22)
        (i32.const 0)
       )
       (i32.const 640)
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=48
         (get_local $22)
        )
        (tee_local $7
         (i32.load offset=72
          (get_local $23)
         )
        )
       )
       (i32.const 688)
      )
      (call $eosio_assert
       (i64.eq
        (i64.load
         (get_local $7)
        )
        (call $current_receiver)
       )
       (i32.const 736)
      )
      (i64.store
       (get_local $5)
       (i64.load
        (tee_local $9
         (i32.add
          (get_local $22)
          (i32.const 16)
         )
        )
       )
      )
      (i64.store offset=328
       (get_local $23)
       (i64.load
        (tee_local $8
         (i32.add
          (get_local $22)
          (i32.const 8)
         )
        )
       )
      )
      (set_local $10
       (i64.load
        (get_local $22)
       )
      )
      (i64.store offset=40
       (get_local $22)
       (i64.add
        (i64.div_u
         (i64.mul
          (i64.load
           (i32.add
            (get_local $0)
            (i32.const 16)
           )
          )
          (get_local $3)
         )
         (i64.const 100)
        )
        (i64.load offset=40
         (get_local $22)
        )
       )
      )
      (i64.store offset=24
       (get_local $22)
       (get_local $2)
      )
      (call $eosio_assert
       (i32.const 1)
       (i32.const 896)
      )
      (i32.store
       (i32.add
        (i32.add
         (get_local $23)
         (i32.const 312)
        )
        (i32.const 8)
       )
       (get_local $4)
      )
      (i32.store offset=316
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 256)
       )
      )
      (i32.store offset=312
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 256)
       )
      )
      (i32.store offset=344
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 312)
       )
      )
      (i32.store
       (tee_local $16
        (i32.add
         (get_local $23)
         (i32.const 8)
        )
       )
       (get_local $9)
      )
      (i32.store
       (get_local $17)
       (i32.add
        (get_local $22)
        (i32.const 24)
       )
      )
      (i32.store
       (i32.add
        (get_local $23)
        (i32.const 16)
       )
       (i32.add
        (get_local $22)
        (i32.const 32)
       )
      )
      (i32.store
       (get_local $18)
       (i32.add
        (get_local $22)
        (i32.const 40)
       )
      )
      (i32.store offset=4
       (get_local $23)
       (get_local $8)
      )
      (i32.store
       (get_local $23)
       (get_local $22)
      )
      (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS6_EEEZN5eosiolsINSA_10datastreamIPcEEN9eparticle5stakeELPv0EEERT_SJ_RKT0_EUlRKSI_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSR_17integral_constantIbLb0EEE
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 344)
       )
      )
      (call $db_update_i64
       (i32.load offset=52
        (get_local $22)
       )
       (i64.const 0)
       (i32.add
        (get_local $23)
        (i32.const 256)
       )
       (i32.const 44)
      )
      (block $label$24
       (br_if $label$24
        (i64.lt_u
         (get_local $10)
         (i64.load offset=16
          (get_local $7)
         )
        )
       )
       (i64.store
        (i32.add
         (get_local $7)
         (i32.const 16)
        )
        (select
         (i64.const -2)
         (i64.add
          (get_local $10)
          (i64.const 1)
         )
         (i64.gt_u
          (get_local $10)
          (i64.const -3)
         )
        )
       )
      )
      (i64.store
       (get_local $23)
       (i64.load
        (get_local $8)
       )
      )
      (block $label$25
       (br_if $label$25
        (i32.eqz
         (call $memcmp
          (i32.add
           (get_local $23)
           (i32.const 328)
          )
          (get_local $23)
          (i32.const 8)
         )
        )
       )
       (block $label$26
        (br_if $label$26
         (i32.gt_s
          (tee_local $8
           (i32.load
            (tee_local $19
             (i32.add
              (get_local $22)
              (i32.const 56)
             )
            )
           )
          )
          (i32.const -1)
         )
        )
        (i32.store
         (get_local $19)
         (tee_local $8
          (call $db_idx64_find_primary
           (i64.load
            (get_local $7)
           )
           (i64.load offset=8
            (get_local $7)
           )
           (i64.const -4157660949894922240)
           (i32.add
            (get_local $23)
            (i32.const 344)
           )
           (get_local $10)
          )
         )
        )
       )
       (call $db_idx64_update
        (get_local $8)
        (i64.const 0)
        (get_local $23)
       )
      )
      (i64.store
       (get_local $23)
       (i64.load
        (get_local $9)
       )
      )
      (block $label$27
       (br_if $label$27
        (i32.eqz
         (call $memcmp
          (get_local $5)
          (get_local $23)
          (i32.const 8)
         )
        )
       )
       (block $label$28
        (br_if $label$28
         (i32.gt_s
          (tee_local $22
           (i32.load
            (tee_local $9
             (i32.add
              (get_local $22)
              (i32.const 60)
             )
            )
           )
          )
          (i32.const -1)
         )
        )
        (i32.store
         (get_local $9)
         (tee_local $22
          (call $db_idx64_find_primary
           (i64.load
            (get_local $7)
           )
           (i64.load offset=8
            (get_local $7)
           )
           (i64.const -4157660949894922239)
           (i32.add
            (get_local $23)
            (i32.const 344)
           )
           (get_local $10)
          )
         )
        )
       )
       (call $db_idx64_update
        (get_local $22)
        (i64.const 0)
        (get_local $23)
       )
      )
      (set_local $10
       (i64.load offset=40
        (i32.load
         (get_local $21)
        )
       )
      )
      (i32.store
       (i32.add
        (i32.add
         (get_local $23)
         (i32.const 256)
        )
        (i32.const 8)
       )
       (i32.add
        (get_local $23)
        (i32.const 56)
       )
      )
      (i32.store
       (i32.add
        (i32.add
         (get_local $23)
         (i32.const 256)
        )
        (i32.const 12)
       )
       (i32.add
        (get_local $23)
        (i32.const 52)
       )
      )
      (i32.store
       (i32.add
        (i32.add
         (get_local $23)
         (i32.const 256)
        )
        (i32.const 16)
       )
       (i32.add
        (get_local $23)
        (i32.const 40)
       )
      )
      (i32.store offset=260
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 144)
       )
      )
      (i32.store offset=256
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 80)
       )
      )
      (i64.store offset=328
       (get_local $23)
       (get_local $10)
      )
      (call $eosio_assert
       (i64.eq
        (i64.load offset=80
         (get_local $23)
        )
        (call $current_receiver)
       )
       (i32.const 480)
      )
      (i32.store
       (get_local $16)
       (i32.add
        (get_local $23)
        (i32.const 328)
       )
      )
      (i32.store offset=4
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 256)
       )
      )
      (i32.store
       (get_local $23)
       (i32.add
        (get_local $23)
        (i32.const 80)
       )
      )
      (i32.store offset=48
       (tee_local $22
        (call $_Znwj
         (i32.const 64)
        )
       )
       (i32.add
        (get_local $23)
        (i32.const 80)
       )
      )
      (call $_ZZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE7emplaceIZNS1_8finalizeEyyE3$_9EENSB_14const_iteratorEyOT_ENKUlRSF_E_clINSB_4itemEEEDaSH_
       (get_local $23)
       (get_local $22)
      )
      (i32.store offset=312
       (get_local $23)
       (get_local $22)
      )
      (i64.store
       (get_local $23)
       (tee_local $10
        (i64.load
         (get_local $22)
        )
       )
      )
      (i32.store offset=344
       (get_local $23)
       (tee_local $9
        (i32.load offset=52
         (get_local $22)
        )
       )
      )
      (block $label$29
       (block $label$30
        (br_if $label$30
         (i32.ge_u
          (tee_local $7
           (i32.load
            (get_local $20)
           )
          )
          (i32.load
           (get_local $13)
          )
         )
        )
        (i64.store offset=8
         (get_local $7)
         (get_local $10)
        )
        (i32.store offset=16
         (get_local $7)
         (get_local $9)
        )
        (i32.store offset=312
         (get_local $23)
         (i32.const 0)
        )
        (i32.store
         (get_local $7)
         (get_local $22)
        )
        (i32.store
         (get_local $20)
         (i32.add
          (get_local $7)
          (i32.const 24)
         )
        )
        (br $label$29)
       )
       (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
        (get_local $6)
        (i32.add
         (get_local $23)
         (i32.const 312)
        )
        (get_local $23)
        (i32.add
         (get_local $23)
         (i32.const 344)
        )
       )
      )
      (set_local $22
       (i32.load offset=312
        (get_local $23)
       )
      )
      (i32.store offset=312
       (get_local $23)
       (i32.const 0)
      )
      (br_if $label$16
       (i32.eqz
        (get_local $22)
       )
      )
      (call $_ZdlPv
       (get_local $22)
      )
     )
     (br_if $label$12
      (i32.eqz
       (tee_local $9
        (i32.load
         (get_local $6)
        )
       )
      )
     )
     (block $label$31
      (block $label$32
       (br_if $label$32
        (i32.eq
         (tee_local $22
          (i32.load
           (get_local $20)
          )
         )
         (get_local $9)
        )
       )
       (loop $label$33
        (set_local $7
         (i32.load
          (tee_local $22
           (i32.add
            (get_local $22)
            (i32.const -24)
           )
          )
         )
        )
        (i32.store
         (get_local $22)
         (i32.const 0)
        )
        (block $label$34
         (br_if $label$34
          (i32.eqz
           (get_local $7)
          )
         )
         (call $_ZdlPv
          (get_local $7)
         )
        )
        (br_if $label$33
         (i32.ne
          (get_local $9)
          (get_local $22)
         )
        )
       )
       (set_local $22
        (i32.load
         (get_local $6)
        )
       )
       (br $label$31)
      )
      (set_local $22
       (get_local $9)
      )
     )
     (i32.store
      (get_local $20)
      (get_local $9)
     )
     (call $_ZdlPv
      (get_local $22)
     )
    )
    (drop
     (call $_ZN5eosio11multi_indexILy15938991580757622784EN9eparticle4voteEJNS_10indexed_byILy4587895157746319360EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_15get_proposal_idEvEEEEEENS3_ILy4591222641916264448ENS6_IS2_yXadL_ZNKS2_12get_voter64tEvEEEEEEEE5indexILy4587895157746319360ES7_Ly0ELb0EE14const_iteratorppEv
      (i32.add
       (get_local $23)
       (i32.const 144)
      )
     )
    )
    (br_if $label$11
     (i64.eq
      (i64.load offset=8
       (tee_local $22
        (i32.load
         (get_local $21)
        )
       )
      )
      (i64.load offset=248
       (get_local $23)
      )
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $23)
    (i32.const 288)
   )
   (i32.const 0)
  )
  (i64.store offset=272
   (get_local $23)
   (i64.const -1)
  )
  (i64.store offset=280
   (get_local $23)
   (i64.const 0)
  )
  (i64.store offset=256
   (get_local $23)
   (tee_local $10
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=264
   (get_local $23)
   (get_local $10)
  )
  (i32.store16 offset=292
   (get_local $23)
   (i32.const 0)
  )
  (i32.store offset=64
   (get_local $23)
   (i32.add
    (get_local $23)
    (i32.const 256)
   )
  )
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (get_local $23)
   (i32.add
    (i32.load offset=204
     (get_local $23)
    )
    (i32.const 20)
   )
  )
  (call $_ZNK5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_
   (i32.add
    (get_local $23)
    (i32.const 328)
   )
   (i32.add
    (get_local $23)
    (i32.const 64)
   )
   (get_local $23)
  )
  (block $label$35
   (block $label$36
    (block $label$37
     (br_if $label$37
      (i32.eqz
       (tee_local $22
        (i32.load offset=332
         (get_local $23)
        )
       )
      )
     )
     (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
      (i32.add
       (get_local $23)
       (i32.const 80)
      )
      (i32.add
       (get_local $22)
       (i32.const 8)
      )
     )
     (br_if $label$37
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load
           (get_local $23)
          )
          (i64.load offset=80
           (get_local $23)
          )
         )
         (i64.xor
          (i64.load offset=8
           (get_local $23)
          )
          (i64.load offset=88
           (get_local $23)
          )
         )
        )
       )
      )
     )
     (br_if $label$37
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load offset=16
           (get_local $23)
          )
          (i64.load offset=96
           (get_local $23)
          )
         )
         (i64.xor
          (i64.load
           (i32.add
            (get_local $23)
            (i32.const 24)
           )
          )
          (i64.load
           (i32.add
            (i32.add
             (get_local $23)
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
     (br_if $label$37
      (i32.eqz
       (tee_local $22
        (i32.load offset=332
         (get_local $23)
        )
       )
      )
     )
     (i32.store offset=80
      (get_local $23)
      (i32.add
       (get_local $23)
       (i32.const 200)
      )
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 640)
     )
     (call $_ZN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE6modifyIZNS1_8finalizeEyyE4$_11EEvRKS2_yOT_
      (i32.load offset=64
       (get_local $23)
      )
      (get_local $22)
      (i32.add
       (get_local $23)
       (i32.const 80)
      )
     )
     (br_if $label$36
      (tee_local $9
       (i32.load offset=280
        (get_local $23)
       )
      )
     )
     (br $label$35)
    )
    (set_local $10
     (i64.load
      (get_local $0)
     )
    )
    (i32.store offset=332
     (get_local $23)
     (i32.add
      (get_local $23)
      (i32.const 200)
     )
    )
    (i32.store offset=328
     (get_local $23)
     (i32.add
      (get_local $23)
      (i32.const 256)
     )
    )
    (i64.store
     (get_local $23)
     (get_local $10)
    )
    (call $eosio_assert
     (i64.eq
      (i64.load offset=256
       (get_local $23)
      )
      (call $current_receiver)
     )
     (i32.const 480)
    )
    (i32.store offset=84
     (get_local $23)
     (i32.add
      (get_local $23)
      (i32.const 328)
     )
    )
    (i32.store offset=80
     (get_local $23)
     (i32.add
      (get_local $23)
      (i32.const 256)
     )
    )
    (i32.store offset=88
     (get_local $23)
     (get_local $23)
    )
    (i64.store offset=8 align=4
     (tee_local $22
      (call $_Znwj
       (i32.const 48)
      )
     )
     (i64.const 0)
    )
    (i64.store offset=16 align=4
     (get_local $22)
     (i64.const 0)
    )
    (i64.store offset=24 align=4
     (get_local $22)
     (i64.const 0)
    )
    (i32.store offset=32
     (get_local $22)
     (i32.add
      (get_local $23)
      (i32.const 256)
     )
    )
    (call $_ZZN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_10EENSD_14const_iteratorEyOT_ENKUlRSH_E_clINSD_4itemEEEDaSJ_
     (i32.add
      (get_local $23)
      (i32.const 80)
     )
     (get_local $22)
    )
    (i32.store offset=312
     (get_local $23)
     (get_local $22)
    )
    (i64.store offset=80
     (get_local $23)
     (tee_local $10
      (i64.load
       (get_local $22)
      )
     )
    )
    (i32.store offset=344
     (get_local $23)
     (tee_local $9
      (i32.load offset=36
       (get_local $22)
      )
     )
    )
    (block $label$38
     (block $label$39
      (br_if $label$39
       (i32.ge_u
        (tee_local $7
         (i32.load
          (tee_local $8
           (i32.add
            (get_local $23)
            (i32.const 284)
           )
          )
         )
        )
        (i32.load
         (i32.add
          (get_local $23)
          (i32.const 288)
         )
        )
       )
      )
      (i64.store offset=8
       (get_local $7)
       (get_local $10)
      )
      (i32.store offset=16
       (get_local $7)
       (get_local $9)
      )
      (i32.store offset=312
       (get_local $23)
       (i32.const 0)
      )
      (i32.store
       (get_local $7)
       (get_local $22)
      )
      (i32.store
       (get_local $8)
       (i32.add
        (get_local $7)
        (i32.const 24)
       )
      )
      (br $label$38)
     )
     (call $_ZNSt3__16vectorIN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587220462410924032ENS8_IS4_SA_XadL_ZNKS4_22get_parent_hash_key256EvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_
      (i32.add
       (get_local $23)
       (i32.const 280)
      )
      (i32.add
       (get_local $23)
       (i32.const 312)
      )
      (i32.add
       (get_local $23)
       (i32.const 80)
      )
      (i32.add
       (get_local $23)
       (i32.const 344)
      )
     )
    )
    (set_local $22
     (i32.load offset=312
      (get_local $23)
     )
    )
    (i32.store offset=312
     (get_local $23)
     (i32.const 0)
    )
    (block $label$40
     (br_if $label$40
      (i32.eqz
       (get_local $22)
      )
     )
     (block $label$41
      (br_if $label$41
       (i32.eqz
        (i32.and
         (i32.load8_u offset=20
          (get_local $22)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $22)
         (i32.const 28)
        )
       )
      )
     )
     (block $label$42
      (br_if $label$42
       (i32.eqz
        (i32.and
         (i32.load8_u offset=8
          (get_local $22)
         )
         (i32.const 1)
        )
       )
      )
      (call $_ZdlPv
       (i32.load
        (i32.add
         (get_local $22)
         (i32.const 16)
        )
       )
      )
     )
     (call $_ZdlPv
      (get_local $22)
     )
    )
    (br_if $label$35
     (i32.eqz
      (tee_local $9
       (i32.load offset=280
        (get_local $23)
       )
      )
     )
    )
   )
   (block $label$43
    (block $label$44
     (br_if $label$44
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $8
          (i32.add
           (i32.add
            (get_local $23)
            (i32.const 256)
           )
           (i32.const 28)
          )
         )
        )
       )
       (get_local $9)
      )
     )
     (loop $label$45
      (set_local $22
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
      (block $label$46
       (br_if $label$46
        (i32.eqz
         (get_local $22)
        )
       )
       (block $label$47
        (br_if $label$47
         (i32.eqz
          (i32.and
           (i32.load8_u offset=20
            (get_local $22)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $22)
           (i32.const 28)
          )
         )
        )
       )
       (block $label$48
        (br_if $label$48
         (i32.eqz
          (i32.and
           (i32.load8_u offset=8
            (get_local $22)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $22)
           (i32.const 16)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $22)
       )
      )
      (br_if $label$45
       (i32.ne
        (get_local $9)
        (get_local $7)
       )
      )
     )
     (set_local $22
      (i32.load
       (i32.add
        (get_local $23)
        (i32.const 280)
       )
      )
     )
     (br $label$43)
    )
    (set_local $22
     (get_local $9)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $9)
   )
   (call $_ZdlPv
    (get_local $22)
   )
  )
  (block $label$49
   (br_if $label$49
    (i32.eqz
     (tee_local $9
      (i32.load offset=184
       (get_local $23)
      )
     )
    )
   )
   (block $label$50
    (block $label$51
     (br_if $label$51
      (i32.eq
       (tee_local $22
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $23)
           (i32.const 188)
          )
         )
        )
       )
       (get_local $9)
      )
     )
     (loop $label$52
      (set_local $7
       (i32.load
        (tee_local $22
         (i32.add
          (get_local $22)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $22)
       (i32.const 0)
      )
      (block $label$53
       (br_if $label$53
        (i32.eqz
         (get_local $7)
        )
       )
       (block $label$54
        (br_if $label$54
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
      (br_if $label$52
       (i32.ne
        (get_local $9)
        (get_local $22)
       )
      )
     )
     (set_local $22
      (i32.load
       (i32.add
        (get_local $23)
        (i32.const 184)
       )
      )
     )
     (br $label$50)
    )
    (set_local $22
     (get_local $9)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $9)
   )
   (call $_ZdlPv
    (get_local $22)
   )
  )
  (block $label$55
   (br_if $label$55
    (i32.eqz
     (tee_local $9
      (i32.load offset=232
       (get_local $23)
      )
     )
    )
   )
   (block $label$56
    (block $label$57
     (br_if $label$57
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $8
          (i32.add
           (i32.add
            (get_local $23)
            (i32.const 208)
           )
           (i32.const 28)
          )
         )
        )
       )
       (get_local $9)
      )
     )
     (loop $label$58
      (set_local $22
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
      (block $label$59
       (br_if $label$59
        (i32.eqz
         (get_local $22)
        )
       )
       (block $label$60
        (br_if $label$60
         (i32.eqz
          (i32.and
           (i32.load8_u offset=20
            (get_local $22)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $22)
           (i32.const 28)
          )
         )
        )
       )
       (block $label$61
        (br_if $label$61
         (i32.eqz
          (i32.and
           (i32.load8_u offset=8
            (get_local $22)
           )
           (i32.const 1)
          )
         )
        )
        (call $_ZdlPv
         (i32.load
          (i32.add
           (get_local $22)
           (i32.const 16)
          )
         )
        )
       )
       (call $_ZdlPv
        (get_local $22)
       )
      )
      (br_if $label$58
       (i32.ne
        (get_local $9)
        (get_local $7)
       )
      )
     )
     (set_local $22
      (i32.load
       (i32.add
        (get_local $23)
        (i32.const 232)
       )
      )
     )
     (br $label$56)
    )
    (set_local $22
     (get_local $9)
    )
   )
   (i32.store
    (get_local $8)
    (get_local $9)
   )
   (call $_ZdlPv
    (get_local $22)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $23)
    (i32.const 352)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy12531649026744909824EN9eparticle12editproposalEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587895157748514889ENS6_IS2_yXadL_ZNKS2_15get_proposer64tEvEEEEEEEE6modifyIZNS1_8finalizeEyyE3$_6EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $12
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 128)
    )
   )
  )
  (call $eosio_assert
   (i32.eq
    (i32.load offset=56
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 688)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 736)
  )
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (tee_local $11
     (get_local $12)
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
     (get_local $11)
     (i32.const 16)
    )
    (i32.const 28)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $11)
      (i32.const 96)
     )
     (i32.const 28)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $11)
     (i32.const 16)
    )
    (i32.const 24)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $11)
      (i32.const 96)
     )
     (i32.const 24)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $11)
     (i32.const 16)
    )
    (i32.const 20)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $11)
      (i32.const 96)
     )
     (i32.const 20)
    )
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $11)
     (i32.const 16)
    )
    (i32.const 16)
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $11)
      (i32.const 96)
     )
     (i32.const 16)
    )
   )
  )
  (i32.store offset=28
   (get_local $11)
   (i32.load offset=108
    (get_local $11)
   )
  )
  (i32.store offset=24
   (get_local $11)
   (i32.load offset=104
    (get_local $11)
   )
  )
  (i32.store offset=20
   (get_local $11)
   (i32.load offset=100
    (get_local $11)
   )
  )
  (i32.store offset=16
   (get_local $11)
   (i32.load offset=96
    (get_local $11)
   )
  )
  (i64.store offset=48
   (get_local $11)
   (i64.load
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.const 40)
     )
    )
   )
  )
  (i32.store offset=52
   (get_local $1)
   (select
    (i32.const 1)
    (i32.const 2)
    (i64.gt_u
     (i64.load
      (i32.load
       (get_local $2)
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
  )
  (set_local $5
   (i64.load
    (get_local $1)
   )
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 896)
  )
  (i32.store
   (get_local $11)
   (i32.const 0)
  )
  (i32.store offset=64
   (get_local $11)
   (get_local $11)
  )
  (i32.store offset=100
   (get_local $11)
   (get_local $3)
  )
  (i32.store offset=96
   (get_local $11)
   (get_local $1)
  )
  (i32.store offset=104
   (get_local $11)
   (tee_local $7
    (i32.add
     (get_local $1)
     (i32.const 20)
    )
   )
  )
  (i32.store offset=108
   (get_local $11)
   (tee_local $8
    (i32.add
     (get_local $1)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=112
   (get_local $11)
   (get_local $4)
  )
  (i32.store offset=116
   (get_local $11)
   (tee_local $9
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
   )
  )
  (i32.store offset=120
   (get_local $11)
   (tee_local $6
    (i32.add
     (get_local $1)
     (i32.const 52)
    )
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_S6_S6_RKmRKN9eparticle14ProposalStatusEEEEZN5eosiolsINSN_10datastreamIjEENSI_12editproposalELPv0EEERT_SU_RKT0_EUlRKST_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSU_OSV_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $11)
    (i32.const 96)
   )
   (i32.add
    (get_local $11)
    (i32.const 64)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.lt_u
      (tee_local $10
       (i32.load
        (get_local $11)
       )
      )
      (i32.const 513)
     )
    )
    (set_local $2
     (call $malloc
      (get_local $10)
     )
    )
    (br $label$0)
   )
   (i32.store offset=4
    (i32.const 0)
    (tee_local $2
     (i32.sub
      (get_local $12)
      (i32.and
       (i32.add
        (get_local $10)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $11)
   (get_local $2)
  )
  (i32.store
   (get_local $11)
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $11)
   (i32.add
    (get_local $2)
    (get_local $10)
   )
  )
  (i32.store offset=64
   (get_local $11)
   (get_local $11)
  )
  (i32.store offset=100
   (get_local $11)
   (get_local $3)
  )
  (i32.store offset=104
   (get_local $11)
   (get_local $7)
  )
  (i32.store offset=108
   (get_local $11)
   (get_local $8)
  )
  (i32.store offset=112
   (get_local $11)
   (get_local $4)
  )
  (i32.store offset=116
   (get_local $11)
   (get_local $9)
  )
  (i32.store offset=120
   (get_local $11)
   (get_local $6)
  )
  (i32.store offset=96
   (get_local $11)
   (get_local $1)
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyRKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_S6_S6_RKmRKN9eparticle14ProposalStatusEEEEZN5eosiolsINSN_10datastreamIPcEENSI_12editproposalELPv0EEERT_SV_RKT0_EUlRKSU_E_JLj0ELj1ELj2ELj3ELj4ELj5ELj6EEEEvSV_OSW_NS7_16integer_sequenceIjJXspT1_EEEENS7_17integral_constantIbLb0EEE
   (i32.add
    (get_local $11)
    (i32.const 96)
   )
   (i32.add
    (get_local $11)
    (i32.const 64)
   )
  )
  (call $db_update_i64
   (i32.load offset=60
    (get_local $1)
   )
   (i64.const 0)
   (get_local $2)
   (get_local $10)
  )
  (block $label$2
   (br_if $label$2
    (i32.lt_u
     (get_local $10)
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
  (set_local $2
   (i32.add
    (i32.add
     (get_local $11)
     (i32.const 16)
    )
    (i32.const 32)
   )
  )
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
   (i32.add
    (get_local $11)
    (i32.const 96)
   )
   (get_local $3)
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (call $memcmp
      (i32.add
       (get_local $11)
       (i32.const 16)
      )
      (i32.add
       (get_local $11)
       (i32.const 96)
      )
      (i32.const 32)
     )
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.gt_s
      (tee_local $10
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 64)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i64.store
     (i32.add
      (get_local $11)
      (i32.const 88)
     )
     (i64.const 0)
    )
    (i64.store
     (i32.add
      (get_local $11)
      (i32.const 80)
     )
     (i64.const 0)
    )
    (i64.store offset=72
     (get_local $11)
     (i64.const 0)
    )
    (i64.store offset=64
     (get_local $11)
     (i64.const 0)
    )
    (i32.store
     (get_local $3)
     (tee_local $10
      (call $db_idx256_find_primary
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -5915095046964641792)
       (i32.add
        (get_local $11)
        (i32.const 64)
       )
       (i32.const 2)
       (get_local $5)
      )
     )
    )
   )
   (call $db_idx256_update
    (get_local $10)
    (i64.const 0)
    (i32.add
     (get_local $11)
     (i32.const 96)
    )
    (i32.const 2)
   )
  )
  (i64.store offset=96
   (get_local $11)
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
       (get_local $11)
       (i32.const 96)
      )
      (i32.const 8)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.gt_s
      (tee_local $1
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $1)
          (i32.const 68)
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
       (i64.const -5915095046964641791)
       (i32.add
        (get_local $11)
        (i32.const 64)
       )
       (get_local $5)
      )
     )
    )
   )
   (call $db_idx64_update
    (get_local $1)
    (i64.const 0)
    (i32.add
     (get_local $11)
     (i32.const 96)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $11)
    (i32.const 128)
   )
  )
 )
 (func $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy (param $0 i32) (param $1 i32) (param $2 i32)
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
       (i32.load offset=48
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
      (i32.const 80)
     )
     (br $label$3)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=48
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
         (get_local $4)
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
       )
      )
      (get_local $4)
     )
     (i32.const 80)
    )
   )
   (i32.store
    (i32.add
     (get_local $2)
     (i32.const 56)
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
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS6_EEEZN5eosiolsINSA_10datastreamIPcEEN9eparticle5stakeELPv0EEERT_SJ_RKT0_EUlRKSI_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSR_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
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
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.load offset=20
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
    (i32.const 7)
   )
   (i32.const 960)
  )
  (drop
   (call $memcpy
    (i32.load offset=4
     (get_local $0)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
 )
 (func $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE14const_iteratorppEv (param $0 i32) (result i32)
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
  (call $eosio_assert
   (i32.ne
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 0)
   )
   (i32.const 976)
  )
  (block $label$0
   (br_if $label$0
    (i32.ne
     (tee_local $7
      (i32.load offset=56
       (tee_local $6
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const -1)
    )
   )
   (set_local $7
    (call $db_idx64_find_primary
     (i64.load
      (tee_local $7
       (i32.load
        (i32.load
         (get_local $0)
        )
       )
      )
     )
     (i64.load offset=8
      (get_local $7)
     )
     (i64.const -4157660949894922240)
     (i32.add
      (get_local $9)
      (i32.const 8)
     )
     (i64.load
      (get_local $6)
     )
    )
   )
   (i32.store offset=56
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
    (get_local $7)
   )
  )
  (i64.store offset=8
   (get_local $9)
   (i64.const 0)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.le_s
        (tee_local $1
         (call $db_idx64_next
          (get_local $7)
          (i32.add
           (get_local $9)
           (i32.const 8)
          )
         )
        )
        (i32.const -1)
       )
      )
      (set_local $3
       (i64.load offset=8
        (get_local $9)
       )
      )
      (block $label$5
       (br_if $label$5
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
       (loop $label$6
        (br_if $label$5
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
        (br_if $label$6
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
      (br_if $label$3
       (i32.eq
        (get_local $8)
        (get_local $4)
       )
      )
      (call $eosio_assert
       (i32.eq
        (i32.load offset=48
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
       (i32.const 80)
      )
      (br $label$2)
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
      (i32.const 0)
     )
     (br $label$1)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=48
       (tee_local $7
        (call $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
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
     (i32.const 80)
    )
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (get_local $7)
   )
   (i32.store
    (i32.add
     (get_local $7)
     (i32.const 56)
    )
    (get_local $1)
   )
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
 (func $_ZZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE7emplaceIZNS1_8finalizeEyyE3$_9EENSB_14const_iteratorEyOT_ENKUlRSF_E_clINSB_4itemEEEDaSH_ (param $0 i32) (param $1 i32)
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
     (i32.const 48)
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
     (call $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
      (get_local $4)
      (get_local $5)
     )
    )
    (i32.store offset=28
     (get_local $9)
     (i32.const 0)
    )
    (i32.store offset=24
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
          (call $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE14const_iteratormmEv
           (i32.add
            (get_local $9)
            (i32.const 24)
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
   (i32.const 416)
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
   (i64.load offset=40
    (i32.load offset=4
     (i32.load offset=4
      (get_local $3)
     )
    )
   )
  )
  (i64.store offset=24
   (get_local $1)
   (i64.load
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (i32.store offset=32
   (get_local $1)
   (i32.load
    (i32.load offset=12
     (get_local $3)
    )
   )
  )
  (i64.store offset=40
   (get_local $1)
   (i64.load
    (i32.load offset=16
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
  (i32.store offset=4
   (get_local $9)
   (get_local $3)
  )
  (i32.store
   (get_local $9)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $9)
   (i32.add
    (get_local $4)
    (i32.const -4)
   )
  )
  (i32.store offset=16
   (get_local $9)
   (get_local $9)
  )
  (i32.store offset=28
   (get_local $9)
   (tee_local $4
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=24
   (get_local $9)
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $9)
   (tee_local $10
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=36
   (get_local $9)
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (i32.store offset=40
   (get_local $9)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=44
   (get_local $9)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS6_EEEZN5eosiolsINSA_10datastreamIPcEEN9eparticle5stakeELPv0EEERT_SJ_RKT0_EUlRKSI_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSR_17integral_constantIbLb0EEE
   (i32.add
    (get_local $9)
    (i32.const 24)
   )
   (i32.add
    (get_local $9)
    (i32.const 16)
   )
  )
  (i32.store offset=52
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
    (i32.const 44)
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
  (i64.store offset=24
   (get_local $9)
   (i64.load
    (get_local $4)
   )
  )
  (i32.store offset=56
   (get_local $1)
   (call $db_idx64_store
    (get_local $6)
    (i64.const -4157660949894922240)
    (get_local $7)
    (get_local $8)
    (i32.add
     (get_local $9)
     (i32.const 24)
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
  (i64.store offset=24
   (get_local $9)
   (i64.load
    (get_local $10)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 60)
   )
   (call $db_idx64_store
    (get_local $7)
    (i64.const -4157660949894922239)
    (get_local $6)
    (get_local $8)
    (i32.add
     (get_local $9)
     (i32.const 24)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $9)
    (i32.const 48)
   )
  )
 )
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $_ZNK5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE5indexILy4583094541397000192ES9_Ly0ELb0EE11lower_boundERKS8_ (param $0 i32) (param $1 i32) (param $2 i32)
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
      (i32.const 80)
     )
     (br $label$3)
    )
    (call $eosio_assert
     (i32.eq
      (i32.load offset=32
       (tee_local $2
        (call $_ZNK5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE31load_object_by_primary_iteratorEl
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
     (i32.const 80)
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
 (func $_ZZN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE7emplaceIZNS1_8finalizeEyyE4$_10EENSD_14const_iteratorEyOT_ENKUlRSH_E_clINSD_4itemEEEDaSJ_ (param $0 i32) (param $1 i32)
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
     (call $_ZNK5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE31load_object_by_primary_iteratorEl
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
          (call $_ZN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE14const_iteratormmEv
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
   (i32.const 416)
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
   (i32.const 960)
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
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
 (func $_ZNSt3__16vectorIN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587220462410924032ENS8_IS4_SA_XadL_ZNKS4_22get_parent_hash_key256EvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_ (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
 (func $_ZN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE6modifyIZNS1_8finalizeEyyE4$_11EEvRKS2_yOT_ (param $0 i32) (param $1 i32) (param $2 i32)
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
   (i32.const 688)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 736)
  )
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
   (i32.const 896)
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
   (i32.const 960)
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
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
  (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
 (func $_ZNK5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 144)
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
    (i32.const 272)
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
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS1_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS4_NS1_9fixed_keyILj32EEEXadL_ZNKS4_15get_hash_key256EvEEEEEENS5_ILy4587220462410924032ENS8_IS4_SA_XadL_ZNKS4_22get_parent_hash_key256EvEEEEEEEE8item_ptrENS_9allocatorISG_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSF_4itemENS_14default_deleteISM_EEEERyRlEEEvDpOT_
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
 (func $_ZN5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
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
     (i32.const 1072)
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
    (i32.const 1008)
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
    (i32.const 1008)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy16402369761167540224EN9eparticle4wikiEJNS_10indexed_byILy4583094541397000192EN5boost11multi_index13const_mem_funIS2_NS_9fixed_keyILj32EEEXadL_ZNKS2_15get_hash_key256EvEEEEEENS3_ILy4587220462410924032ENS6_IS2_S8_XadL_ZNKS2_22get_parent_hash_key256EvEEEEEEEE31load_object_by_primary_iteratorEl
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
 (func $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 144)
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
   (i32.store offset=48
    (tee_local $6
     (call $_Znwj
      (i32.const 64)
     )
    )
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
     (i32.const 24)
    )
   )
   (i32.store offset=56
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 32)
    )
   )
   (i32.store offset=60
    (get_local $8)
    (i32.add
     (get_local $6)
     (i32.const 40)
    )
   )
   (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_S5_S5_RmS5_EEEZN5eosiorsINS8_10datastreamIPKcEEN9eparticle5stakeELPv0EEERT_SI_RT0_EUlSI_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSI_OSJ_NSt3__116integer_sequenceIjJXspT1_EEEENSN_17integral_constantIbLb0EEE
    (i32.add
     (get_local $8)
     (i32.const 40)
    )
    (i32.add
     (get_local $8)
     (i32.const 32)
    )
   )
   (i32.store offset=56
    (get_local $6)
    (i32.const -1)
   )
   (i32.store offset=52
    (get_local $6)
    (get_local $1)
   )
   (i32.store offset=60
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
     (i32.load offset=52
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
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
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
 (func $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE14const_iteratormmEv (param $0 i32) (result i32)
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
         (i32.load offset=52
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
     (i32.const 1072)
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
    (i32.const 1008)
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
    (i32.const 1008)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (call $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
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
 (func $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRyS5_S5_S5_RmS5_EEEZN5eosiorsINS8_10datastreamIPKcEEN9eparticle5stakeELPv0EEERT_SI_RT0_EUlSI_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSI_OSJ_NSt3__116integer_sequenceIjJXspT1_EEEENSN_17integral_constantIbLb0EEE (param $0 i32) (param $1 i32)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.load offset=20
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
    (i32.const 7)
   )
   (i32.const 272)
  )
  (drop
   (call $memcpy
    (get_local $2)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
 )
 (func $_ZN9eparticle7brainmeEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $17
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 160)
    )
   )
  )
  (i64.store offset=112
   (get_local $17)
   (get_local $1)
  )
  (i64.store offset=104
   (get_local $17)
   (get_local $2)
  )
  (call $require_auth
   (get_local $1)
  )
  (set_local $13
   (i64.load offset=32
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i64.ne
    (call $_ZN9eparticle12getiqbalanceEy
     (get_local $0)
     (get_local $1)
    )
    (i64.const 0)
   )
   (i32.const 1168)
  )
  (set_local $5
   (i64.load offset=48
    (get_local $0)
   )
  )
  (call $eosio_assert
   (i64.lt_u
    (i64.add
     (tee_local $4
      (i64.mul
       (i64.load offset=40
        (get_local $0)
       )
       (get_local $2)
      )
     )
     (i64.const 4611686018427387903)
    )
    (i64.const 9223372036854775807)
   )
   (i32.const 176)
  )
  (set_local $3
   (i64.mul
    (get_local $13)
    (get_local $2)
   )
  )
  (set_local $2
   (i64.shr_u
    (get_local $5)
    (i64.const 8)
   )
  )
  (set_local $10
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
          (get_local $2)
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
         (tee_local $2
          (i64.shr_u
           (get_local $2)
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
          (tee_local $2
           (i64.shr_u
            (get_local $2)
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
         (tee_local $10
          (i32.add
           (get_local $10)
           (i32.const 1)
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $6
      (i32.const 1)
     )
     (br_if $label$2
      (i32.lt_s
       (tee_local $10
        (i32.add
         (get_local $10)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$0)
    )
   )
   (set_local $6
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $6)
   (i32.const 240)
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $11
   (i64.const 59)
  )
  (set_local $10
   (i32.const 1232)
  )
  (set_local $12
   (i64.const 0)
  )
  (loop $label$5
   (block $label$6
    (block $label$7
     (block $label$8
      (block $label$9
       (block $label$10
        (br_if $label$10
         (i64.gt_u
          (get_local $2)
          (i64.const 5)
         )
        )
        (br_if $label$9
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $6
             (i32.load8_s
              (get_local $10)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 165)
         )
        )
        (br $label$8)
       )
       (set_local $13
        (i64.const 0)
       )
       (br_if $label$7
        (i64.le_u
         (get_local $2)
         (i64.const 11)
        )
       )
       (br $label$6)
      )
      (set_local $6
       (select
        (i32.add
         (get_local $6)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $6)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $13
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $6)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $13
     (i64.shl
      (i64.and
       (get_local $13)
       (i64.const 31)
      )
      (i64.and
       (get_local $11)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $10
    (i32.add
     (get_local $10)
     (i32.const 1)
    )
   )
   (set_local $2
    (i64.add
     (get_local $2)
     (i64.const 1)
    )
   )
   (set_local $12
    (i64.or
     (get_local $13)
     (get_local $12)
    )
   )
   (br_if $label$5
    (i64.ne
     (tee_local $11
      (i64.add
       (get_local $11)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $11
   (i64.const 59)
  )
  (set_local $10
   (i32.const 64)
  )
  (set_local $14
   (i64.const 0)
  )
  (loop $label$11
   (block $label$12
    (block $label$13
     (block $label$14
      (block $label$15
       (block $label$16
        (br_if $label$16
         (i64.gt_u
          (get_local $2)
          (i64.const 10)
         )
        )
        (br_if $label$15
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $6
             (i32.load8_s
              (get_local $10)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 165)
         )
        )
        (br $label$14)
       )
       (set_local $13
        (i64.const 0)
       )
       (br_if $label$13
        (i64.eq
         (get_local $2)
         (i64.const 11)
        )
       )
       (br $label$12)
      )
      (set_local $6
       (select
        (i32.add
         (get_local $6)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $6)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $13
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $6)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $13
     (i64.shl
      (i64.and
       (get_local $13)
       (i64.const 31)
      )
      (i64.and
       (get_local $11)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $10
    (i32.add
     (get_local $10)
     (i32.const 1)
    )
   )
   (set_local $11
    (i64.add
     (get_local $11)
     (i64.const -5)
    )
   )
   (set_local $14
    (i64.or
     (get_local $13)
     (get_local $14)
    )
   )
   (br_if $label$11
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const 1)
      )
     )
     (i64.const 13)
    )
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $11
   (i64.const 59)
  )
  (set_local $10
   (i32.const 1248)
  )
  (set_local $15
   (i64.const 0)
  )
  (loop $label$17
   (block $label$18
    (block $label$19
     (block $label$20
      (block $label$21
       (block $label$22
        (br_if $label$22
         (i64.gt_u
          (get_local $2)
          (i64.const 7)
         )
        )
        (br_if $label$21
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $6
             (i32.load8_s
              (get_local $10)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 165)
         )
        )
        (br $label$20)
       )
       (set_local $13
        (i64.const 0)
       )
       (br_if $label$19
        (i64.le_u
         (get_local $2)
         (i64.const 11)
        )
       )
       (br $label$18)
      )
      (set_local $6
       (select
        (i32.add
         (get_local $6)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $6)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $13
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $6)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $13
     (i64.shl
      (i64.and
       (get_local $13)
       (i64.const 31)
      )
      (i64.and
       (get_local $11)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $10
    (i32.add
     (get_local $10)
     (i32.const 1)
    )
   )
   (set_local $2
    (i64.add
     (get_local $2)
     (i64.const 1)
    )
   )
   (set_local $15
    (i64.or
     (get_local $13)
     (get_local $15)
    )
   )
   (br_if $label$17
    (i64.ne
     (tee_local $11
      (i64.add
       (get_local $11)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $2
   (i64.const 0)
  )
  (set_local $11
   (i64.const 59)
  )
  (set_local $10
   (i32.const 1264)
  )
  (set_local $16
   (i64.const 0)
  )
  (loop $label$23
   (block $label$24
    (block $label$25
     (block $label$26
      (block $label$27
       (block $label$28
        (br_if $label$28
         (i64.gt_u
          (get_local $2)
          (i64.const 8)
         )
        )
        (br_if $label$27
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $6
             (i32.load8_s
              (get_local $10)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 165)
         )
        )
        (br $label$26)
       )
       (set_local $13
        (i64.const 0)
       )
       (br_if $label$25
        (i64.le_u
         (get_local $2)
         (i64.const 11)
        )
       )
       (br $label$24)
      )
      (set_local $6
       (select
        (i32.add
         (get_local $6)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $6)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $13
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $6)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $13
     (i64.shl
      (i64.and
       (get_local $13)
       (i64.const 31)
      )
      (i64.and
       (get_local $11)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $10
    (i32.add
     (get_local $10)
     (i32.const 1)
    )
   )
   (set_local $2
    (i64.add
     (get_local $2)
     (i64.const 1)
    )
   )
   (set_local $16
    (i64.or
     (get_local $13)
     (get_local $16)
    )
   )
   (br_if $label$23
    (i64.ne
     (tee_local $11
      (i64.add
       (get_local $11)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $17)
    (i32.const 136)
   )
   (i32.const 0)
  )
  (i64.store offset=128
   (get_local $17)
   (i64.const 0)
  )
  (block $label$29
   (br_if $label$29
    (i32.ge_u
     (tee_local $10
      (call $strlen
       (i32.const 1280)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$30
    (block $label$31
     (block $label$32
      (br_if $label$32
       (i32.ge_u
        (get_local $10)
        (i32.const 11)
       )
      )
      (i32.store8 offset=128
       (get_local $17)
       (i32.shl
        (get_local $10)
        (i32.const 1)
       )
      )
      (set_local $6
       (i32.or
        (i32.add
         (get_local $17)
         (i32.const 128)
        )
        (i32.const 1)
       )
      )
      (br_if $label$31
       (get_local $10)
      )
      (br $label$30)
     )
     (set_local $6
      (call $_Znwj
       (tee_local $7
        (i32.and
         (i32.add
          (get_local $10)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store offset=128
      (get_local $17)
      (i32.or
       (get_local $7)
       (i32.const 1)
      )
     )
     (i32.store offset=136
      (get_local $17)
      (get_local $6)
     )
     (i32.store offset=132
      (get_local $17)
      (get_local $10)
     )
    )
    (drop
     (call $memcpy
      (get_local $6)
      (i32.const 1280)
      (get_local $10)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $6)
     (get_local $10)
    )
    (i32.const 0)
   )
   (i64.store
    (i32.add
     (i32.add
      (get_local $17)
      (i32.const 16)
     )
     (i32.const 24)
    )
    (get_local $5)
   )
   (i32.store
    (tee_local $6
     (i32.add
      (i32.add
       (get_local $17)
       (i32.const 16)
      )
      (i32.const 36)
     )
    )
    (i32.load offset=132
     (get_local $17)
    )
   )
   (i64.store offset=24
    (get_local $17)
    (get_local $16)
   )
   (i32.store
    (i32.add
     (get_local $17)
     (i32.const 56)
    )
    (i32.load
     (tee_local $10
      (i32.add
       (get_local $17)
       (i32.const 136)
      )
     )
    )
   )
   (i64.store offset=16
    (get_local $17)
    (i64.load offset=112
     (get_local $17)
    )
   )
   (i64.store offset=32
    (get_local $17)
    (get_local $4)
   )
   (i32.store offset=48
    (get_local $17)
    (i32.load offset=128
     (get_local $17)
    )
   )
   (i32.store offset=128
    (get_local $17)
    (i32.const 0)
   )
   (i32.store offset=132
    (get_local $17)
    (i32.const 0)
   )
   (i32.store
    (get_local $10)
    (i32.const 0)
   )
   (i64.store offset=64
    (get_local $17)
    (get_local $14)
   )
   (i64.store offset=72
    (get_local $17)
    (get_local $15)
   )
   (i32.store offset=80
    (get_local $17)
    (i32.const 0)
   )
   (i32.store
    (tee_local $7
     (i32.add
      (get_local $17)
      (i32.const 84)
     )
    )
    (i32.const 0)
   )
   (i32.store
    (tee_local $8
     (i32.add
      (i32.add
       (get_local $17)
       (i32.const 64)
      )
      (i32.const 24)
     )
    )
    (i32.const 0)
   )
   (i64.store
    (tee_local $10
     (call $_Znwj
      (i32.const 16)
     )
    )
    (get_local $1)
   )
   (i64.store offset=8
    (get_local $10)
    (get_local $12)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $17)
      (i32.const 64)
     )
     (i32.const 32)
    )
    (i32.const 0)
   )
   (i32.store
    (get_local $8)
    (tee_local $9
     (i32.add
      (get_local $10)
      (i32.const 16)
     )
    )
   )
   (i32.store
    (get_local $7)
    (get_local $9)
   )
   (i32.store offset=80
    (get_local $17)
    (get_local $10)
   )
   (i32.store offset=92
    (get_local $17)
    (i32.const 0)
   )
   (i32.store
    (i32.add
     (i32.add
      (get_local $17)
      (i32.const 64)
     )
     (i32.const 36)
    )
    (i32.const 0)
   )
   (set_local $10
    (i32.add
     (tee_local $6
      (select
       (i32.load
        (get_local $6)
       )
       (i32.shr_u
        (tee_local $10
         (i32.load8_u offset=48
          (get_local $17)
         )
        )
        (i32.const 1)
       )
       (i32.and
        (get_local $10)
        (i32.const 1)
       )
      )
     )
     (i32.const 32)
    )
   )
   (set_local $2
    (i64.extend_u/i32
     (get_local $6)
    )
   )
   (set_local $6
    (i32.add
     (get_local $17)
     (i32.const 92)
    )
   )
   (loop $label$33
    (set_local $10
     (i32.add
      (get_local $10)
      (i32.const 1)
     )
    )
    (br_if $label$33
     (i64.ne
      (tee_local $2
       (i64.shr_u
        (get_local $2)
        (i64.const 7)
       )
      )
      (i64.const 0)
     )
    )
   )
   (block $label$34
    (block $label$35
     (br_if $label$35
      (i32.eqz
       (get_local $10)
      )
     )
     (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
      (get_local $6)
      (get_local $10)
     )
     (set_local $6
      (i32.load
       (i32.add
        (get_local $17)
        (i32.const 96)
       )
      )
     )
     (set_local $10
      (i32.load
       (i32.add
        (get_local $17)
        (i32.const 92)
       )
      )
     )
     (br $label$34)
    )
    (set_local $6
     (i32.const 0)
    )
    (set_local $10
     (i32.const 0)
    )
   )
   (i32.store offset=4
    (get_local $17)
    (get_local $10)
   )
   (i32.store
    (get_local $17)
    (get_local $10)
   )
   (i32.store offset=8
    (get_local $17)
    (get_local $6)
   )
   (i32.store offset=144
    (get_local $17)
    (get_local $17)
   )
   (i32.store offset=152
    (get_local $17)
    (i32.add
     (get_local $17)
     (i32.const 16)
    )
   )
   (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
    (i32.add
     (get_local $17)
     (i32.const 152)
    )
    (i32.add
     (get_local $17)
     (i32.const 144)
    )
   )
   (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
    (get_local $17)
    (i32.add
     (get_local $17)
     (i32.const 64)
    )
   )
   (call $send_inline
    (tee_local $10
     (i32.load
      (get_local $17)
     )
    )
    (i32.sub
     (i32.load offset=4
      (get_local $17)
     )
     (get_local $10)
    )
   )
   (block $label$36
    (br_if $label$36
     (i32.eqz
      (tee_local $10
       (i32.load
        (get_local $17)
       )
      )
     )
    )
    (i32.store offset=4
     (get_local $17)
     (get_local $10)
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (block $label$37
    (br_if $label$37
     (i32.eqz
      (tee_local $10
       (i32.load offset=92
        (get_local $17)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $17)
      (i32.const 96)
     )
     (get_local $10)
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (block $label$38
    (br_if $label$38
     (i32.eqz
      (tee_local $10
       (i32.load offset=80
        (get_local $17)
       )
      )
     )
    )
    (i32.store
     (i32.add
      (get_local $17)
      (i32.const 84)
     )
     (get_local $10)
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (block $label$39
    (br_if $label$39
     (i32.eqz
      (i32.and
       (i32.load8_u
        (i32.add
         (get_local $17)
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
       (get_local $17)
       (i32.const 56)
      )
     )
    )
   )
   (block $label$40
    (br_if $label$40
     (i32.eqz
      (i32.and
       (i32.load8_u offset=128
        (get_local $17)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load
      (i32.add
       (get_local $17)
       (i32.const 136)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $17)
     (i32.const 48)
    )
    (i32.const 0)
   )
   (i64.store offset=16
    (get_local $17)
    (tee_local $2
     (i64.load
      (get_local $0)
     )
    )
   )
   (i64.store offset=32
    (get_local $17)
    (i64.const -1)
   )
   (i64.store offset=40
    (get_local $17)
    (i64.const 0)
   )
   (i64.store offset=24
    (get_local $17)
    (get_local $2)
   )
   (i32.store8 offset=52
    (get_local $17)
    (i32.const 0)
   )
   (block $label$41
    (block $label$42
     (br_if $label$42
      (i32.lt_s
       (tee_local $10
        (call $db_find_i64
         (get_local $2)
         (get_local $2)
         (i64.const 4453191243736408576)
         (i64.load offset=112
          (get_local $17)
         )
        )
       )
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=24
        (tee_local $10
         (call $_ZNK5eosio11multi_indexILy4453191243736408576EN9eparticle10brainpowerEJNS_10indexed_byILy4590722025437790208EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
          (i32.add
           (get_local $17)
           (i32.const 16)
          )
          (get_local $10)
         )
        )
       )
       (i32.add
        (get_local $17)
        (i32.const 16)
       )
      )
      (i32.const 80)
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 640)
     )
     (call $eosio_assert
      (i32.eq
       (i32.load offset=24
        (get_local $10)
       )
       (i32.add
        (get_local $17)
        (i32.const 16)
       )
      )
      (i32.const 688)
     )
     (call $eosio_assert
      (i64.eq
       (i64.load offset=16
        (get_local $17)
       )
       (call $current_receiver)
      )
      (i32.const 736)
     )
     (i64.store offset=152
      (get_local $17)
      (i64.load
       (tee_local $6
        (i32.add
         (get_local $10)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $2
      (i64.load
       (get_local $10)
      )
     )
     (call $eosio_assert
      (i64.ne
       (get_local $3)
       (i64.const 0)
      )
      (i32.const 1296)
     )
     (call $eosio_assert
      (i32.and
       (i64.gt_u
        (tee_local $11
         (i64.add
          (tee_local $13
           (i64.load offset=16
            (get_local $10)
           )
          )
          (get_local $3)
         )
        )
        (get_local $3)
       )
       (i64.gt_u
        (get_local $11)
        (get_local $13)
       )
      )
      (i32.const 1360)
     )
     (i64.store offset=16
      (get_local $10)
      (tee_local $13
       (i64.add
        (i64.load offset=16
         (get_local $10)
        )
        (get_local $3)
       )
      )
     )
     (call $prints
      (i32.const 1392)
     )
     (call $printn
      (get_local $13)
     )
     (call $eosio_assert
      (i64.eq
       (get_local $2)
       (i64.load
        (get_local $10)
       )
      )
      (i32.const 896)
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 960)
     )
     (drop
      (call $memcpy
       (i32.add
        (get_local $17)
        (i32.const 64)
       )
       (get_local $10)
       (i32.const 8)
      )
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 960)
     )
     (drop
      (call $memcpy
       (i32.or
        (i32.add
         (get_local $17)
         (i32.const 64)
        )
        (i32.const 8)
       )
       (get_local $6)
       (i32.const 8)
      )
     )
     (call $eosio_assert
      (i32.const 1)
      (i32.const 960)
     )
     (drop
      (call $memcpy
       (i32.add
        (i32.add
         (get_local $17)
         (i32.const 64)
        )
        (i32.const 16)
       )
       (i32.add
        (get_local $10)
        (i32.const 16)
       )
       (i32.const 8)
      )
     )
     (call $db_update_i64
      (i32.load offset=28
       (get_local $10)
      )
      (i64.const 0)
      (i32.add
       (get_local $17)
       (i32.const 64)
      )
      (i32.const 24)
     )
     (block $label$43
      (br_if $label$43
       (i64.lt_u
        (get_local $2)
        (i64.load
         (tee_local $7
          (i32.add
           (i32.add
            (get_local $17)
            (i32.const 16)
           )
           (i32.const 16)
          )
         )
        )
       )
      )
      (i64.store
       (get_local $7)
       (select
        (i64.const -2)
        (i64.add
         (get_local $2)
         (i64.const 1)
        )
        (i64.gt_u
         (get_local $2)
         (i64.const -3)
        )
       )
      )
     )
     (i64.store
      (get_local $17)
      (i64.load
       (get_local $6)
      )
     )
     (br_if $label$41
      (i32.eqz
       (call $memcmp
        (i32.add
         (get_local $17)
         (i32.const 152)
        )
        (get_local $17)
        (i32.const 8)
       )
      )
     )
     (block $label$44
      (br_if $label$44
       (i32.gt_s
        (tee_local $10
         (i32.load
          (tee_local $6
           (i32.add
            (get_local $10)
            (i32.const 32)
           )
          )
         )
        )
        (i32.const -1)
       )
      )
      (i32.store
       (get_local $6)
       (tee_local $10
        (call $db_idx64_find_primary
         (i64.load offset=16
          (get_local $17)
         )
         (i64.load
          (i32.add
           (get_local $17)
           (i32.const 24)
          )
         )
         (i64.const 4453191243736408576)
         (i32.add
          (get_local $17)
          (i32.const 128)
         )
         (get_local $2)
        )
       )
      )
     )
     (call $db_idx64_update
      (get_local $10)
      (i64.const 0)
      (get_local $17)
     )
     (br $label$41)
    )
    (set_local $2
     (i64.load offset=112
      (get_local $17)
     )
    )
    (call $eosio_assert
     (i64.eq
      (i64.load offset=16
       (get_local $17)
      )
      (call $current_receiver)
     )
     (i32.const 480)
    )
    (i32.store offset=24
     (tee_local $10
      (call $_Znwj
       (i32.const 40)
      )
     )
     (i32.add
      (get_local $17)
      (i32.const 16)
     )
    )
    (i64.store offset=16
     (get_local $10)
     (get_local $3)
    )
    (i64.store
     (get_local $10)
     (tee_local $13
      (i64.load offset=112
       (get_local $17)
      )
     )
    )
    (i64.store offset=8
     (get_local $10)
     (get_local $13)
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 960)
    )
    (drop
     (call $memcpy
      (i32.add
       (get_local $17)
       (i32.const 64)
      )
      (get_local $10)
      (i32.const 8)
     )
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 960)
    )
    (drop
     (call $memcpy
      (i32.or
       (i32.add
        (get_local $17)
        (i32.const 64)
       )
       (i32.const 8)
      )
      (tee_local $6
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
      )
      (i32.const 8)
     )
    )
    (call $eosio_assert
     (i32.const 1)
     (i32.const 960)
    )
    (drop
     (call $memcpy
      (i32.add
       (i32.add
        (get_local $17)
        (i32.const 64)
       )
       (i32.const 16)
      )
      (i32.add
       (get_local $10)
       (i32.const 16)
      )
      (i32.const 8)
     )
    )
    (i32.store offset=28
     (get_local $10)
     (call $db_store_i64
      (i64.load
       (tee_local $7
        (i32.add
         (i32.add
          (get_local $17)
          (i32.const 16)
         )
         (i32.const 8)
        )
       )
      )
      (i64.const 4453191243736408576)
      (get_local $2)
      (tee_local $13
       (i64.load
        (get_local $10)
       )
      )
      (i32.add
       (get_local $17)
       (i32.const 64)
      )
      (i32.const 24)
     )
    )
    (block $label$45
     (br_if $label$45
      (i64.lt_u
       (get_local $13)
       (i64.load
        (tee_local $8
         (i32.add
          (i32.add
           (get_local $17)
           (i32.const 16)
          )
          (i32.const 16)
         )
        )
       )
      )
     )
     (i64.store
      (get_local $8)
      (select
       (i64.const -2)
       (i64.add
        (get_local $13)
        (i64.const 1)
       )
       (i64.gt_u
        (get_local $13)
        (i64.const -3)
       )
      )
     )
    )
    (set_local $13
     (i64.load
      (get_local $10)
     )
    )
    (set_local $11
     (i64.load
      (get_local $7)
     )
    )
    (i64.store
     (get_local $17)
     (i64.load
      (get_local $6)
     )
    )
    (i32.store offset=32
     (get_local $10)
     (call $db_idx64_store
      (get_local $11)
      (i64.const 4453191243736408576)
      (get_local $2)
      (get_local $13)
      (get_local $17)
     )
    )
    (i32.store
     (get_local $17)
     (get_local $10)
    )
    (i64.store offset=64
     (get_local $17)
     (tee_local $2
      (i64.load
       (get_local $10)
      )
     )
    )
    (i32.store offset=128
     (get_local $17)
     (tee_local $7
      (i32.load
       (i32.add
        (get_local $10)
        (i32.const 28)
       )
      )
     )
    )
    (block $label$46
     (block $label$47
      (br_if $label$47
       (i32.ge_u
        (tee_local $6
         (i32.load
          (tee_local $8
           (i32.add
            (i32.add
             (get_local $17)
             (i32.const 16)
            )
            (i32.const 28)
           )
          )
         )
        )
        (i32.load
         (i32.add
          (get_local $17)
          (i32.const 48)
         )
        )
       )
      )
      (i64.store offset=8
       (get_local $6)
       (get_local $2)
      )
      (i32.store offset=16
       (get_local $6)
       (get_local $7)
      )
      (i32.store
       (get_local $17)
       (i32.const 0)
      )
      (i32.store
       (get_local $6)
       (get_local $10)
      )
      (i32.store
       (get_local $8)
       (i32.add
        (get_local $6)
        (i32.const 24)
       )
      )
      (br $label$46)
     )
     (call $_ZNSt3__16vectorIN5eosio11multi_indexILy4453191243736408576EN9eparticle10brainpowerEJNS1_10indexed_byILy4590722025437790208EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISC_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSB_4itemENS_14default_deleteISI_EEEERyRlEEEvDpOT_
      (i32.add
       (get_local $17)
       (i32.const 40)
      )
      (get_local $17)
      (i32.add
       (get_local $17)
       (i32.const 64)
      )
      (i32.add
       (get_local $17)
       (i32.const 128)
      )
     )
    )
    (set_local $10
     (i32.load
      (get_local $17)
     )
    )
    (i32.store
     (get_local $17)
     (i32.const 0)
    )
    (br_if $label$41
     (i32.eqz
      (get_local $10)
     )
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (i32.store
    (tee_local $7
     (i32.add
      (get_local $17)
      (i32.const 96)
     )
    )
    (i32.const 0)
   )
   (i64.store offset=64
    (get_local $17)
    (tee_local $2
     (i64.load
      (get_local $0)
     )
    )
   )
   (i64.store offset=80
    (get_local $17)
    (i64.const -1)
   )
   (i64.store offset=88
    (get_local $17)
    (i64.const 0)
   )
   (i64.store offset=72
    (get_local $17)
    (get_local $2)
   )
   (i32.store16 offset=100
    (get_local $17)
    (i32.const 0)
   )
   (set_local $13
    (i64.load offset=112
     (get_local $17)
    )
   )
   (i32.store offset=12
    (get_local $17)
    (get_local $0)
   )
   (i32.store offset=4
    (get_local $17)
    (i32.add
     (get_local $17)
     (i32.const 112)
    )
   )
   (i32.store
    (get_local $17)
    (i32.add
     (get_local $17)
     (i32.const 64)
    )
   )
   (i32.store offset=8
    (get_local $17)
    (i32.add
     (get_local $17)
     (i32.const 104)
    )
   )
   (i64.store offset=152
    (get_local $17)
    (get_local $13)
   )
   (call $eosio_assert
    (i64.eq
     (get_local $2)
     (call $current_receiver)
    )
    (i32.const 480)
   )
   (i32.store offset=132
    (get_local $17)
    (get_local $17)
   )
   (i32.store offset=128
    (get_local $17)
    (i32.add
     (get_local $17)
     (i32.const 64)
    )
   )
   (i32.store offset=136
    (get_local $17)
    (i32.add
     (get_local $17)
     (i32.const 152)
    )
   )
   (i32.store offset=48
    (tee_local $10
     (call $_Znwj
      (i32.const 64)
     )
    )
    (i32.add
     (get_local $17)
     (i32.const 64)
    )
   )
   (call $_ZZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE7emplaceIZNS1_7brainmeEyyE4$_14EENSB_14const_iteratorEyOT_ENKUlRSF_E_clINSB_4itemEEEDaSH_
    (i32.add
     (get_local $17)
     (i32.const 128)
    )
    (get_local $10)
   )
   (i32.store offset=144
    (get_local $17)
    (get_local $10)
   )
   (i64.store offset=128
    (get_local $17)
    (tee_local $2
     (i64.load
      (get_local $10)
     )
    )
   )
   (i32.store offset=124
    (get_local $17)
    (tee_local $0
     (i32.load offset=52
      (get_local $10)
     )
    )
   )
   (block $label$48
    (block $label$49
     (br_if $label$49
      (i32.ge_u
       (tee_local $6
        (i32.load
         (tee_local $8
          (i32.add
           (get_local $17)
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
      (get_local $6)
      (get_local $2)
     )
     (i32.store offset=16
      (get_local $6)
      (get_local $0)
     )
     (i32.store offset=144
      (get_local $17)
      (i32.const 0)
     )
     (i32.store
      (get_local $6)
      (get_local $10)
     )
     (i32.store
      (get_local $8)
      (i32.add
       (get_local $6)
       (i32.const 24)
      )
     )
     (br $label$48)
    )
    (call $_ZNSt3__16vectorIN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS1_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS4_yXadL_ZNKS4_8get_userEvEEEEEENS5_ILy4590722025437790208ENS8_IS4_yXadL_ZNKS4_11get_user64tEvEEEEEEEE8item_ptrENS_9allocatorISE_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINSD_4itemENS_14default_deleteISK_EEEERyRlEEEvDpOT_
     (i32.add
      (get_local $17)
      (i32.const 88)
     )
     (i32.add
      (get_local $17)
      (i32.const 144)
     )
     (i32.add
      (get_local $17)
      (i32.const 128)
     )
     (i32.add
      (get_local $17)
      (i32.const 124)
     )
    )
   )
   (set_local $10
    (i32.load offset=144
     (get_local $17)
    )
   )
   (i32.store offset=144
    (get_local $17)
    (i32.const 0)
   )
   (block $label$50
    (br_if $label$50
     (i32.eqz
      (get_local $10)
     )
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (block $label$51
    (br_if $label$51
     (i32.eqz
      (tee_local $0
       (i32.load offset=88
        (get_local $17)
       )
      )
     )
    )
    (block $label$52
     (block $label$53
      (br_if $label$53
       (i32.eq
        (tee_local $10
         (i32.load
          (tee_local $7
           (i32.add
            (get_local $17)
            (i32.const 92)
           )
          )
         )
        )
        (get_local $0)
       )
      )
      (loop $label$54
       (set_local $6
        (i32.load
         (tee_local $10
          (i32.add
           (get_local $10)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $10)
        (i32.const 0)
       )
       (block $label$55
        (br_if $label$55
         (i32.eqz
          (get_local $6)
         )
        )
        (call $_ZdlPv
         (get_local $6)
        )
       )
       (br_if $label$54
        (i32.ne
         (get_local $0)
         (get_local $10)
        )
       )
      )
      (set_local $10
       (i32.load
        (i32.add
         (get_local $17)
         (i32.const 88)
        )
       )
      )
      (br $label$52)
     )
     (set_local $10
      (get_local $0)
     )
    )
    (i32.store
     (get_local $7)
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (block $label$56
    (br_if $label$56
     (i32.eqz
      (tee_local $0
       (i32.load offset=40
        (get_local $17)
       )
      )
     )
    )
    (block $label$57
     (block $label$58
      (br_if $label$58
       (i32.eq
        (tee_local $10
         (i32.load
          (tee_local $7
           (i32.add
            (get_local $17)
            (i32.const 44)
           )
          )
         )
        )
        (get_local $0)
       )
      )
      (loop $label$59
       (set_local $6
        (i32.load
         (tee_local $10
          (i32.add
           (get_local $10)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $10)
        (i32.const 0)
       )
       (block $label$60
        (br_if $label$60
         (i32.eqz
          (get_local $6)
         )
        )
        (call $_ZdlPv
         (get_local $6)
        )
       )
       (br_if $label$59
        (i32.ne
         (get_local $0)
         (get_local $10)
        )
       )
      )
      (set_local $10
       (i32.load
        (i32.add
         (get_local $17)
         (i32.const 40)
        )
       )
      )
      (br $label$57)
     )
     (set_local $10
      (get_local $0)
     )
    )
    (i32.store
     (get_local $7)
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $10)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $17)
     (i32.const 160)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (i32.add
    (get_local $17)
    (i32.const 128)
   )
  )
  (unreachable)
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
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.const 960)
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
   (i32.const 960)
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
 (func $_ZZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE7emplaceIZNS1_7brainmeEyyE4$_14EENSB_14const_iteratorEyOT_ENKUlRSF_E_clINSB_4itemEEEDaSH_ (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
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
  (set_local $4
   (i32.load offset=12
    (tee_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
  )
  (block $label$0
   (br_if $label$0
    (i64.ne
     (tee_local $7
      (i64.load offset=16
       (tee_local $5
        (i32.load
         (get_local $3)
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
      (tee_local $6
       (call $db_lowerbound_i64
        (i64.load
         (get_local $5)
        )
        (i64.load offset=8
         (get_local $5)
        )
        (i64.const -4157660949894922240)
        (i64.const 0)
       )
      )
      (i32.const 0)
     )
    )
    (drop
     (call $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
      (get_local $5)
      (get_local $6)
     )
    )
    (i32.store offset=28
     (get_local $10)
     (i32.const 0)
    )
    (i32.store offset=24
     (get_local $10)
     (get_local $5)
    )
    (set_local $7
     (select
      (i64.const -2)
      (i64.add
       (tee_local $7
        (i64.load
         (i32.load offset=4
          (call $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE14const_iteratormmEv
           (i32.add
            (get_local $10)
            (i32.const 24)
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
     (get_local $5)
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
   (i32.const 416)
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
   )
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (get_local $3)
    )
   )
  )
  (i64.store offset=16
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (get_local $3)
    )
   )
  )
  (i64.store offset=24
   (get_local $1)
   (i64.load
    (i32.load offset=8
     (get_local $3)
    )
   )
  )
  (i64.store32 offset=32
   (get_local $1)
   (i64.div_u
    (call $current_time)
    (i64.const 1000000)
   )
  )
  (i64.store offset=40
   (get_local $1)
   (i64.load offset=16
    (get_local $4)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (tee_local $3
    (i32.add
     (tee_local $5
      (get_local $11)
     )
     (i32.const -48)
    )
   )
  )
  (i32.store offset=4
   (get_local $10)
   (get_local $3)
  )
  (i32.store
   (get_local $10)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $10)
   (i32.add
    (get_local $5)
    (i32.const -4)
   )
  )
  (i32.store offset=16
   (get_local $10)
   (get_local $10)
  )
  (i32.store offset=28
   (get_local $10)
   (tee_local $5
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=24
   (get_local $10)
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $10)
   (tee_local $11
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=36
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (i32.store offset=40
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
  (i32.store offset=44
   (get_local $10)
   (i32.add
    (get_local $1)
    (i32.const 40)
   )
  )
  (call $_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKyS6_S6_S6_RKmS6_EEEZN5eosiolsINSA_10datastreamIPcEEN9eparticle5stakeELPv0EEERT_SJ_RKT0_EUlRKSI_E_JLj0ELj1ELj2ELj3ELj4ELj5EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSR_17integral_constantIbLb0EEE
   (i32.add
    (get_local $10)
    (i32.const 24)
   )
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
  (i32.store offset=52
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
    (tee_local $7
     (i64.load
      (get_local $1)
     )
    )
    (get_local $3)
    (i32.const 44)
   )
  )
  (block $label$2
   (br_if $label$2
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
  (i64.store offset=24
   (get_local $10)
   (i64.load
    (get_local $5)
   )
  )
  (i32.store offset=56
   (get_local $1)
   (call $db_idx64_store
    (get_local $7)
    (i64.const -4157660949894922240)
    (get_local $8)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 24)
    )
   )
  )
  (set_local $7
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
  (i64.store offset=24
   (get_local $10)
   (i64.load
    (get_local $11)
   )
  )
  (i32.store
   (i32.add
    (get_local $1)
    (i32.const 60)
   )
   (call $db_idx64_store
    (get_local $8)
    (i64.const -4157660949894922239)
    (get_local $7)
    (get_local $9)
    (i32.add
     (get_local $10)
     (i32.const 24)
    )
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
    (i32.const 960)
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
     (i32.const 960)
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
     (i32.const 960)
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
    (i32.const 960)
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
   (i32.const 960)
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
 (func $_ZN9eparticle10brainclaimEyy (type $FUNCSIG$vijj) (param $0 i32) (param $1 i64) (param $2 i64)
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
  (local $16 i32)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i32)
  (local $25 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $25
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 240)
    )
   )
  )
  (i64.store offset=200
   (get_local $25)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $25)
     (i32.const 160)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=176
   (get_local $25)
   (i64.const -1)
  )
  (i64.store offset=184
   (get_local $25)
   (i64.const 0)
  )
  (i64.store offset=160
   (get_local $25)
   (tee_local $18
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=168
   (get_local $25)
   (get_local $18)
  )
  (i32.store8 offset=196
   (get_local $25)
   (i32.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.lt_s
     (tee_local $16
      (call $db_find_i64
       (get_local $18)
       (get_local $18)
       (i64.const 4453191243736408576)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $eosio_assert
    (i32.eq
     (i32.load offset=24
      (call $_ZNK5eosio11multi_indexILy4453191243736408576EN9eparticle10brainpowerEJNS_10indexed_byILy4590722025437790208EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE31load_object_by_primary_iteratorEl
       (i32.add
        (get_local $25)
        (i32.const 160)
       )
       (get_local $16)
      )
     )
     (i32.add
      (get_local $25)
      (i32.const 160)
     )
    )
    (i32.const 80)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $25)
     (i32.const 120)
    )
    (i32.const 32)
   )
   (i32.const 0)
  )
  (i64.store offset=136
   (get_local $25)
   (i64.const -1)
  )
  (i64.store offset=144
   (get_local $25)
   (i64.const 0)
  )
  (i64.store offset=120
   (get_local $25)
   (tee_local $18
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=128
   (get_local $25)
   (get_local $18)
  )
  (i32.store16 offset=156
   (get_local $25)
   (i32.const 0)
  )
  (i32.store offset=112
   (get_local $25)
   (i32.add
    (get_local $25)
    (i32.const 120)
   )
  )
  (call $_ZNK5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE11lower_boundERKy
   (i32.add
    (get_local $25)
    (i32.const 16)
   )
   (i32.add
    (get_local $25)
    (i32.const 112)
   )
   (i32.add
    (get_local $25)
    (i32.const 200)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (tee_local $16
        (i32.load offset=20
         (get_local $25)
        )
       )
      )
     )
     (br_if $label$2
      (i64.ne
       (i64.load offset=200
        (get_local $25)
       )
       (i64.load offset=8
        (get_local $16)
       )
      )
     )
     (i64.store offset=104
      (get_local $25)
      (tee_local $18
       (i64.load offset=16
        (get_local $25)
       )
      )
     )
     (set_local $16
      (i64.gt_u
       (get_local $18)
       (i64.const 4294967295)
      )
     )
     (set_local $24
      (i32.or
       (i32.add
        (get_local $25)
        (i32.const 104)
       )
       (i32.const 4)
      )
     )
     (br $label$1)
    )
    (set_local $16
     (i32.const 0)
    )
    (i32.store offset=108
     (get_local $25)
     (i32.const 0)
    )
    (i32.store offset=104
     (get_local $25)
     (i32.add
      (get_local $25)
      (i32.const 112)
     )
    )
    (set_local $24
     (i32.or
      (i32.add
       (get_local $25)
       (i32.const 104)
      )
      (i32.const 4)
     )
    )
    (br $label$1)
   )
   (set_local $16
    (i32.const 0)
   )
   (i32.store offset=108
    (get_local $25)
    (i32.const 0)
   )
   (i32.store offset=104
    (get_local $25)
    (i32.add
     (get_local $25)
     (i32.const 112)
    )
   )
   (set_local $24
    (i32.or
     (i32.add
      (get_local $25)
      (i32.const 104)
     )
     (i32.const 4)
    )
   )
  )
  (call $eosio_assert
   (get_local $16)
   (i32.const 1424)
  )
  (call $eosio_assert
   (i32.const 1)
   (i32.const 176)
  )
  (set_local $18
   (i64.const 5462355)
  )
  (set_local $16
   (i32.const 0)
  )
  (block $label$4
   (block $label$5
    (loop $label$6
     (br_if $label$5
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $18)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$7
      (br_if $label$7
       (i64.ne
        (i64.and
         (tee_local $18
          (i64.shr_u
           (get_local $18)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
        (i64.const 0)
       )
      )
      (loop $label$8
       (br_if $label$5
        (i64.ne
         (i64.and
          (tee_local $18
           (i64.shr_u
            (get_local $18)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
       (br_if $label$8
        (i32.lt_s
         (tee_local $16
          (i32.add
           (get_local $16)
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
     (br_if $label$6
      (i32.lt_s
       (tee_local $16
        (i32.add
         (get_local $16)
         (i32.const 1)
        )
       )
       (i32.const 7)
      )
     )
     (br $label$4)
    )
   )
   (set_local $8
    (i32.const 0)
   )
  )
  (call $eosio_assert
   (get_local $8)
   (i32.const 240)
  )
  (block $label$9
   (block $label$10
    (br_if $label$10
     (i32.eqz
      (tee_local $16
       (i32.load offset=108
        (get_local $25)
       )
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $25)
      (i32.const 92)
     )
    )
    (set_local $3
     (i32.or
      (get_local $25)
      (i32.const 1)
     )
    )
    (set_local $9
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
    )
    (set_local $10
     (i32.add
      (get_local $0)
      (i32.const 48)
     )
    )
    (set_local $11
     (i32.add
      (get_local $0)
      (i32.const 40)
     )
    )
    (set_local $0
     (i32.add
      (get_local $25)
      (i32.const 8)
     )
    )
    (set_local $12
     (i32.add
      (tee_local $4
       (i32.add
        (i32.add
         (get_local $25)
         (i32.const 16)
        )
        (i32.const 32)
       )
      )
      (i32.const 4)
     )
    )
    (set_local $13
     (i32.add
      (get_local $25)
      (i32.const 84)
     )
    )
    (loop $label$11
     (br_if $label$10
      (i64.ne
       (i64.load offset=8
        (get_local $16)
       )
       (i64.load offset=200
        (get_local $25)
       )
      )
     )
     (block $label$12
      (block $label$13
       (block $label$14
        (br_if $label$14
         (i64.le_u
          (i64.extend_u/i32
           (i32.sub
            (i32.wrap/i64
             (i64.div_u
              (call $current_time)
              (i64.const 1000000)
             )
            )
            (i32.load offset=32
             (tee_local $16
              (i32.load
               (get_local $24)
              )
             )
            )
           )
          )
          (i64.load
           (get_local $9)
          )
         )
        )
        (set_local $7
         (i64.load
          (get_local $10)
         )
        )
        (call $eosio_assert
         (i64.lt_u
          (i64.add
           (tee_local $6
            (i64.mul
             (i64.load
              (get_local $11)
             )
             (i64.load offset=24
              (get_local $16)
             )
            )
           )
           (i64.const 4611686018427387903)
          )
          (i64.const 9223372036854775807)
         )
         (i32.const 176)
        )
        (set_local $18
         (i64.shr_u
          (get_local $7)
          (i64.const 8)
         )
        )
        (set_local $16
         (i32.const 0)
        )
        (loop $label$15
         (br_if $label$13
          (i32.gt_u
           (i32.add
            (i32.shl
             (i32.wrap/i64
              (get_local $18)
             )
             (i32.const 24)
            )
            (i32.const -1073741825)
           )
           (i32.const 452984830)
          )
         )
         (block $label$16
          (br_if $label$16
           (i64.ne
            (i64.and
             (tee_local $18
              (i64.shr_u
               (get_local $18)
               (i64.const 8)
              )
             )
             (i64.const 255)
            )
            (i64.const 0)
           )
          )
          (loop $label$17
           (br_if $label$13
            (i64.ne
             (i64.and
              (tee_local $18
               (i64.shr_u
                (get_local $18)
                (i64.const 8)
               )
              )
              (i64.const 255)
             )
             (i64.const 0)
            )
           )
           (br_if $label$17
            (i32.lt_s
             (tee_local $16
              (i32.add
               (get_local $16)
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
         (br_if $label$15
          (i32.lt_s
           (tee_local $16
            (i32.add
             (get_local $16)
             (i32.const 1)
            )
           )
           (i32.const 7)
          )
         )
         (br $label$12)
        )
       )
       (drop
        (call $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE14const_iteratorppEv
         (i32.add
          (get_local $25)
          (i32.const 104)
         )
        )
       )
       (br_if $label$11
        (tee_local $16
         (i32.load offset=108
          (get_local $25)
         )
        )
       )
       (br $label$10)
      )
      (set_local $8
       (i32.const 0)
      )
     )
     (call $eosio_assert
      (get_local $8)
      (i32.const 240)
     )
     (set_local $18
      (i64.const 0)
     )
     (set_local $17
      (i64.const 59)
     )
     (set_local $16
      (i32.const 1264)
     )
     (set_local $19
      (i64.const 0)
     )
     (loop $label$18
      (block $label$19
       (block $label$20
        (block $label$21
         (block $label$22
          (block $label$23
           (br_if $label$23
            (i64.gt_u
             (get_local $18)
             (i64.const 8)
            )
           )
           (br_if $label$22
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $8
                (i32.load8_s
                 (get_local $16)
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
           (br $label$21)
          )
          (set_local $1
           (i64.const 0)
          )
          (br_if $label$20
           (i64.le_u
            (get_local $18)
            (i64.const 11)
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
        (set_local $1
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
       (set_local $1
        (i64.shl
         (i64.and
          (get_local $1)
          (i64.const 31)
         )
         (i64.and
          (get_local $17)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $16
       (i32.add
        (get_local $16)
        (i32.const 1)
       )
      )
      (set_local $18
       (i64.add
        (get_local $18)
        (i64.const 1)
       )
      )
      (set_local $19
       (i64.or
        (get_local $1)
        (get_local $19)
       )
      )
      (br_if $label$18
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
     (set_local $18
      (i64.const 0)
     )
     (set_local $17
      (i64.const 59)
     )
     (set_local $16
      (i32.const 1232)
     )
     (set_local $20
      (i64.const 0)
     )
     (loop $label$24
      (block $label$25
       (block $label$26
        (block $label$27
         (block $label$28
          (block $label$29
           (br_if $label$29
            (i64.gt_u
             (get_local $18)
             (i64.const 5)
            )
           )
           (br_if $label$28
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $8
                (i32.load8_s
                 (get_local $16)
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
           (br $label$27)
          )
          (set_local $1
           (i64.const 0)
          )
          (br_if $label$26
           (i64.le_u
            (get_local $18)
            (i64.const 11)
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
        (set_local $1
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
       (set_local $1
        (i64.shl
         (i64.and
          (get_local $1)
          (i64.const 31)
         )
         (i64.and
          (get_local $17)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $16
       (i32.add
        (get_local $16)
        (i32.const 1)
       )
      )
      (set_local $18
       (i64.add
        (get_local $18)
        (i64.const 1)
       )
      )
      (set_local $20
       (i64.or
        (get_local $1)
        (get_local $20)
       )
      )
      (br_if $label$24
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
     (set_local $18
      (i64.const 0)
     )
     (set_local $17
      (i64.const 59)
     )
     (set_local $16
      (i32.const 64)
     )
     (set_local $21
      (i64.const 0)
     )
     (loop $label$30
      (block $label$31
       (block $label$32
        (block $label$33
         (block $label$34
          (block $label$35
           (br_if $label$35
            (i64.gt_u
             (get_local $18)
             (i64.const 10)
            )
           )
           (br_if $label$34
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $8
                (i32.load8_s
                 (get_local $16)
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
           (br $label$33)
          )
          (set_local $1
           (i64.const 0)
          )
          (br_if $label$32
           (i64.eq
            (get_local $18)
            (i64.const 11)
           )
          )
          (br $label$31)
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
        (set_local $1
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
       (set_local $1
        (i64.shl
         (i64.and
          (get_local $1)
          (i64.const 31)
         )
         (i64.and
          (get_local $17)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $16
       (i32.add
        (get_local $16)
        (i32.const 1)
       )
      )
      (set_local $17
       (i64.add
        (get_local $17)
        (i64.const -5)
       )
      )
      (set_local $21
       (i64.or
        (get_local $1)
        (get_local $21)
       )
      )
      (br_if $label$30
       (i64.ne
        (tee_local $18
         (i64.add
          (get_local $18)
          (i64.const 1)
         )
        )
        (i64.const 13)
       )
      )
     )
     (set_local $18
      (i64.const 0)
     )
     (set_local $17
      (i64.const 59)
     )
     (set_local $16
      (i32.const 1248)
     )
     (set_local $22
      (i64.const 0)
     )
     (loop $label$36
      (block $label$37
       (block $label$38
        (block $label$39
         (block $label$40
          (block $label$41
           (br_if $label$41
            (i64.gt_u
             (get_local $18)
             (i64.const 7)
            )
           )
           (br_if $label$40
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $8
                (i32.load8_s
                 (get_local $16)
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
          (set_local $1
           (i64.const 0)
          )
          (br_if $label$38
           (i64.le_u
            (get_local $18)
            (i64.const 11)
           )
          )
          (br $label$37)
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
        (set_local $1
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
       (set_local $1
        (i64.shl
         (i64.and
          (get_local $1)
          (i64.const 31)
         )
         (i64.and
          (get_local $17)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $16
       (i32.add
        (get_local $16)
        (i32.const 1)
       )
      )
      (set_local $18
       (i64.add
        (get_local $18)
        (i64.const 1)
       )
      )
      (set_local $22
       (i64.or
        (get_local $1)
        (get_local $22)
       )
      )
      (br_if $label$36
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
     (set_local $18
      (i64.const 0)
     )
     (set_local $17
      (i64.const 59)
     )
     (set_local $16
      (i32.const 1264)
     )
     (set_local $23
      (i64.const 0)
     )
     (loop $label$42
      (block $label$43
       (block $label$44
        (block $label$45
         (block $label$46
          (block $label$47
           (br_if $label$47
            (i64.gt_u
             (get_local $18)
             (i64.const 8)
            )
           )
           (br_if $label$46
            (i32.gt_u
             (i32.and
              (i32.add
               (tee_local $8
                (i32.load8_s
                 (get_local $16)
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
          (set_local $1
           (i64.const 0)
          )
          (br_if $label$44
           (i64.le_u
            (get_local $18)
            (i64.const 11)
           )
          )
          (br $label$43)
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
        (set_local $1
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
       (set_local $1
        (i64.shl
         (i64.and
          (get_local $1)
          (i64.const 31)
         )
         (i64.and
          (get_local $17)
          (i64.const 4294967295)
         )
        )
       )
      )
      (set_local $16
       (i32.add
        (get_local $16)
        (i32.const 1)
       )
      )
      (set_local $18
       (i64.add
        (get_local $18)
        (i64.const 1)
       )
      )
      (set_local $23
       (i64.or
        (get_local $1)
        (get_local $23)
       )
      )
      (br_if $label$42
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
     (i32.store
      (get_local $0)
      (i32.const 0)
     )
     (i64.store
      (get_local $25)
      (i64.const 0)
     )
     (br_if $label$9
      (i32.ge_u
       (tee_local $16
        (call $strlen
         (i32.const 1280)
        )
       )
       (i32.const -16)
      )
     )
     (block $label$48
      (block $label$49
       (block $label$50
        (br_if $label$50
         (i32.ge_u
          (get_local $16)
          (i32.const 11)
         )
        )
        (i32.store8
         (get_local $25)
         (i32.shl
          (get_local $16)
          (i32.const 1)
         )
        )
        (set_local $8
         (get_local $3)
        )
        (br_if $label$49
         (get_local $16)
        )
        (br $label$48)
       )
       (i32.store
        (get_local $0)
        (tee_local $8
         (call $_Znwj
          (tee_local $15
           (i32.and
            (i32.add
             (get_local $16)
             (i32.const 16)
            )
            (i32.const -16)
           )
          )
         )
        )
       )
       (i32.store
        (get_local $25)
        (i32.or
         (get_local $15)
         (i32.const 1)
        )
       )
       (i32.store offset=4
        (get_local $25)
        (get_local $16)
       )
      )
      (drop
       (call $memcpy
        (get_local $8)
        (i32.const 1280)
        (get_local $16)
       )
      )
     )
     (i32.store8
      (i32.add
       (get_local $8)
       (get_local $16)
      )
      (i32.const 0)
     )
     (i64.store offset=16
      (get_local $25)
      (get_local $23)
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $25)
        (i32.const 16)
       )
       (i32.const 8)
      )
      (i64.load offset=200
       (get_local $25)
      )
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $25)
        (i32.const 16)
       )
       (i32.const 16)
      )
      (get_local $6)
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $25)
        (i32.const 16)
       )
       (i32.const 24)
      )
      (get_local $7)
     )
     (i32.store
      (get_local $12)
      (i32.load offset=4
       (get_local $25)
      )
     )
     (i32.store
      (get_local $4)
      (i32.load
       (get_local $25)
      )
     )
     (i32.store
      (i32.add
       (get_local $4)
       (i32.const 8)
      )
      (i32.load
       (get_local $0)
      )
     )
     (i32.store
      (get_local $25)
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $25)
      (i32.const 0)
     )
     (i32.store
      (get_local $0)
      (i32.const 0)
     )
     (i64.store
      (i32.add
       (i32.add
        (get_local $25)
        (i32.const 64)
       )
       (i32.const 8)
      )
      (get_local $22)
     )
     (i64.store offset=64
      (get_local $25)
      (get_local $21)
     )
     (i32.store
      (tee_local $8
       (i32.add
        (i32.add
         (get_local $25)
         (i32.const 64)
        )
        (i32.const 16)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $13)
      (i32.const 0)
     )
     (i32.store
      (tee_local $14
       (i32.add
        (i32.add
         (get_local $25)
         (i32.const 64)
        )
        (i32.const 24)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $8)
      (tee_local $16
       (call $_Znwj
        (i32.const 16)
       )
      )
     )
     (i64.store
      (get_local $16)
      (get_local $19)
     )
     (i64.store offset=8
      (get_local $16)
      (get_local $20)
     )
     (i32.store
      (get_local $5)
      (i32.const 0)
     )
     (i32.store
      (tee_local $15
       (i32.add
        (i32.add
         (get_local $25)
         (i32.const 64)
        )
        (i32.const 32)
       )
      )
      (i32.const 0)
     )
     (i32.store
      (get_local $14)
      (tee_local $16
       (i32.add
        (get_local $16)
        (i32.const 16)
       )
      )
     )
     (i32.store
      (get_local $13)
      (get_local $16)
     )
     (i32.store
      (i32.add
       (i32.add
        (get_local $25)
        (i32.const 64)
       )
       (i32.const 36)
      )
      (i32.const 0)
     )
     (set_local $16
      (i32.add
       (tee_local $14
        (select
         (i32.load
          (i32.add
           (i32.add
            (get_local $25)
            (i32.const 16)
           )
           (i32.const 36)
          )
         )
         (i32.shr_u
          (tee_local $16
           (i32.load8_u
            (get_local $4)
           )
          )
          (i32.const 1)
         )
         (i32.and
          (get_local $16)
          (i32.const 1)
         )
        )
       )
       (i32.const 32)
      )
     )
     (set_local $18
      (i64.extend_u/i32
       (get_local $14)
      )
     )
     (loop $label$51
      (set_local $16
       (i32.add
        (get_local $16)
        (i32.const 1)
       )
      )
      (br_if $label$51
       (i64.ne
        (tee_local $18
         (i64.shr_u
          (get_local $18)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
     )
     (block $label$52
      (block $label$53
       (br_if $label$53
        (i32.eqz
         (get_local $16)
        )
       )
       (call $_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
        (get_local $5)
        (get_local $16)
       )
       (set_local $14
        (i32.load
         (get_local $15)
        )
       )
       (set_local $16
        (i32.load
         (get_local $5)
        )
       )
       (br $label$52)
      )
      (set_local $14
       (i32.const 0)
      )
      (set_local $16
       (i32.const 0)
      )
     )
     (i32.store
      (i32.add
       (i32.add
        (get_local $25)
        (i32.const 208)
       )
       (i32.const 8)
      )
      (get_local $14)
     )
     (i32.store offset=212
      (get_local $25)
      (get_local $16)
     )
     (i32.store offset=208
      (get_local $25)
      (get_local $16)
     )
     (i32.store offset=224
      (get_local $25)
      (i32.add
       (get_local $25)
       (i32.const 208)
      )
     )
     (i32.store offset=232
      (get_local $25)
      (i32.add
       (get_local $25)
       (i32.const 16)
      )
     )
     (call $_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
      (i32.add
       (get_local $25)
       (i32.const 232)
      )
      (i32.add
       (get_local $25)
       (i32.const 224)
      )
     )
     (call $_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
      (i32.add
       (get_local $25)
       (i32.const 208)
      )
      (i32.add
       (get_local $25)
       (i32.const 64)
      )
     )
     (call $send_inline
      (tee_local $16
       (i32.load offset=208
        (get_local $25)
       )
      )
      (i32.sub
       (i32.load offset=212
        (get_local $25)
       )
       (get_local $16)
      )
     )
     (block $label$54
      (br_if $label$54
       (i32.eqz
        (tee_local $16
         (i32.load offset=208
          (get_local $25)
         )
        )
       )
      )
      (i32.store offset=212
       (get_local $25)
       (get_local $16)
      )
      (call $_ZdlPv
       (get_local $16)
      )
     )
     (block $label$55
      (br_if $label$55
       (i32.eqz
        (tee_local $16
         (i32.load
          (get_local $5)
         )
        )
       )
      )
      (i32.store
       (get_local $15)
       (get_local $16)
      )
      (call $_ZdlPv
       (get_local $16)
      )
     )
     (block $label$56
      (br_if $label$56
       (i32.eqz
        (tee_local $16
         (i32.load
          (get_local $8)
         )
        )
       )
      )
      (i32.store
       (get_local $13)
       (get_local $16)
      )
      (call $_ZdlPv
       (get_local $16)
      )
     )
     (block $label$57
      (br_if $label$57
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
          (get_local $25)
          (i32.const 16)
         )
         (i32.const 40)
        )
       )
      )
     )
     (block $label$58
      (br_if $label$58
       (i32.eqz
        (i32.and
         (i32.load8_u
          (get_local $25)
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
     (i64.store offset=16
      (get_local $25)
      (tee_local $18
       (i64.load offset=104
        (get_local $25)
       )
      )
     )
     (call $eosio_assert
      (i32.ne
       (tee_local $16
        (i32.wrap/i64
         (i64.shr_u
          (get_local $18)
          (i64.const 32)
         )
        )
       )
       (i32.const 0)
      )
      (i32.const 1456)
     )
     (drop
      (call $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5indexILy4590722025357574144ES7_Ly0ELb0EE14const_iteratorppEv
       (i32.add
        (get_local $25)
        (i32.const 16)
       )
      )
     )
     (call $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5eraseERKS2_
      (i32.load offset=112
       (get_local $25)
      )
      (get_local $16)
     )
     (i64.store offset=104
      (get_local $25)
      (tee_local $18
       (i64.load offset=16
        (get_local $25)
       )
      )
     )
     (br_if $label$11
      (tee_local $16
       (i32.wrap/i64
        (i64.shr_u
         (get_local $18)
         (i64.const 32)
        )
       )
      )
     )
    )
   )
   (block $label$59
    (br_if $label$59
     (i32.eqz
      (tee_local $0
       (i32.load offset=144
        (get_local $25)
       )
      )
     )
    )
    (block $label$60
     (block $label$61
      (br_if $label$61
       (i32.eq
        (tee_local $16
         (i32.load
          (tee_local $4
           (i32.add
            (get_local $25)
            (i32.const 148)
           )
          )
         )
        )
        (get_local $0)
       )
      )
      (loop $label$62
       (set_local $8
        (i32.load
         (tee_local $16
          (i32.add
           (get_local $16)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $16)
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
         (get_local $0)
         (get_local $16)
        )
       )
      )
      (set_local $16
       (i32.load
        (i32.add
         (get_local $25)
         (i32.const 144)
        )
       )
      )
      (br $label$60)
     )
     (set_local $16
      (get_local $0)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $16)
    )
   )
   (block $label$64
    (br_if $label$64
     (i32.eqz
      (tee_local $0
       (i32.load offset=184
        (get_local $25)
       )
      )
     )
    )
    (block $label$65
     (block $label$66
      (br_if $label$66
       (i32.eq
        (tee_local $16
         (i32.load
          (tee_local $4
           (i32.add
            (get_local $25)
            (i32.const 188)
           )
          )
         )
        )
        (get_local $0)
       )
      )
      (loop $label$67
       (set_local $8
        (i32.load
         (tee_local $16
          (i32.add
           (get_local $16)
           (i32.const -24)
          )
         )
        )
       )
       (i32.store
        (get_local $16)
        (i32.const 0)
       )
       (block $label$68
        (br_if $label$68
         (i32.eqz
          (get_local $8)
         )
        )
        (call $_ZdlPv
         (get_local $8)
        )
       )
       (br_if $label$67
        (i32.ne
         (get_local $0)
         (get_local $16)
        )
       )
      )
      (set_local $16
       (i32.load
        (i32.add
         (get_local $25)
         (i32.const 184)
        )
       )
      )
      (br $label$65)
     )
     (set_local $16
      (get_local $0)
     )
    )
    (i32.store
     (get_local $4)
     (get_local $0)
    )
    (call $_ZdlPv
     (get_local $16)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $25)
     (i32.const 240)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $25)
  )
  (unreachable)
 )
 (func $_ZN5eosio11multi_indexILy14289083123814629376EN9eparticle5stakeEJNS_10indexed_byILy4590722025357574144EN5boost11multi_index13const_mem_funIS2_yXadL_ZNKS2_8get_userEvEEEEEENS3_ILy4590722025437790208ENS6_IS2_yXadL_ZNKS2_11get_user64tEvEEEEEEEE5eraseERKS2_ (param $0 i32) (param $1 i32)
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
    (i32.load offset=48
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 1504)
  )
  (call $eosio_assert
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $current_receiver)
   )
   (i32.const 1552)
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
   (i32.const 1616)
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
   (i32.load offset=52
    (get_local $1)
   )
  )
  (block $label$8
   (block $label$9
    (br_if $label$9
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
         (i32.const 60)
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
 (func $_ZN9eparticle10testinsertEy (type $FUNCSIG$vij) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $5
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (i64.store
   (get_local $5)
   (i64.const 0)
  )
  (block $label$0
   (br_if $label$0
    (i32.ge_u
     (tee_local $2
      (call $strlen
       (i32.const 1680)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.ge_u
        (get_local $2)
        (i32.const 11)
       )
      )
      (i32.store8
       (get_local $5)
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
      )
      (set_local $4
       (i32.or
        (get_local $5)
        (i32.const 1)
       )
      )
      (br_if $label$2
       (get_local $2)
      )
      (br $label$1)
     )
     (set_local $4
      (call $_Znwj
       (tee_local $3
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
      (get_local $5)
      (i32.or
       (get_local $3)
       (i32.const 1)
      )
     )
     (i32.store offset=8
      (get_local $5)
      (get_local $4)
     )
     (i32.store offset=4
      (get_local $5)
      (get_local $2)
     )
    )
    (drop
     (call $memcpy
      (get_local $4)
      (i32.const 1680)
      (get_local $2)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $4)
     (get_local $2)
    )
    (i32.const 0)
   )
   (call $_ZN9eparticle14ipfs_to_key256ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
    (get_local $5)
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $5)
       )
       (i32.const 1)
      )
     )
    )
    (call $_ZdlPv
     (i32.load offset=8
      (get_local $5)
     )
    )
   )
   (call $prints
    (i32.const 1728)
   )
   (call $_ZN5eosio5printILj32EEEvRKNS_9fixed_keyIXT_EEE
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
   )
   (i32.store offset=4
    (i32.const 0)
    (i32.add
     (get_local $5)
     (i32.const 48)
    )
   )
   (return)
  )
  (call $_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
   (get_local $5)
  )
  (unreachable)
 )
 (func $_ZN5eosio5printILj32EEEvRKNS_9fixed_keyIXT_EEE (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
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
  (i64.store8 offset=11
   (get_local $4)
   (i64.shr_u
    (tee_local $3
     (i64.load
      (get_local $0)
     )
    )
    (i64.const 32)
   )
  )
  (i64.store8 offset=10
   (get_local $4)
   (i64.shr_u
    (get_local $3)
    (i64.const 40)
   )
  )
  (i32.store8 offset=15
   (get_local $4)
   (tee_local $1
    (i32.wrap/i64
     (get_local $3)
    )
   )
  )
  (i32.store8 offset=14
   (get_local $4)
   (i32.shr_u
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store8 offset=13
   (get_local $4)
   (i32.shr_u
    (get_local $1)
    (i32.const 16)
   )
  )
  (i32.store8 offset=12
   (get_local $4)
   (i32.shr_u
    (get_local $1)
    (i32.const 24)
   )
  )
  (set_local $2
   (i64.load
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
  )
  (i64.store8 offset=9
   (get_local $4)
   (i64.shr_u
    (get_local $3)
    (i64.const 48)
   )
  )
  (i64.store8 offset=8
   (get_local $4)
   (i64.shr_u
    (get_local $3)
    (i64.const 56)
   )
  )
  (i32.store8 offset=7
   (get_local $4)
   (tee_local $1
    (i32.wrap/i64
     (get_local $2)
    )
   )
  )
  (i32.store8 offset=6
   (get_local $4)
   (i32.shr_u
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store8 offset=5
   (get_local $4)
   (i32.shr_u
    (get_local $1)
    (i32.const 16)
   )
  )
  (i32.store8 offset=4
   (get_local $4)
   (i32.shr_u
    (get_local $1)
    (i32.const 24)
   )
  )
  (i64.store8 offset=3
   (get_local $4)
   (i64.shr_u
    (get_local $2)
    (i64.const 32)
   )
  )
  (i64.store8 offset=2
   (get_local $4)
   (i64.shr_u
    (get_local $2)
    (i64.const 40)
   )
  )
  (i64.store8 offset=1
   (get_local $4)
   (i64.shr_u
    (get_local $2)
    (i64.const 48)
   )
  )
  (i64.store8
   (get_local $4)
   (i64.shr_u
    (get_local $2)
    (i64.const 56)
   )
  )
  (set_local $2
   (i64.load
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
  )
  (i64.store8 offset=31
   (get_local $4)
   (tee_local $3
    (i64.load offset=16
     (get_local $0)
    )
   )
  )
  (i32.store8 offset=30
   (get_local $4)
   (i32.shr_u
    (tee_local $0
     (i32.wrap/i64
      (get_local $3)
     )
    )
    (i32.const 8)
   )
  )
  (i32.store8 offset=29
   (get_local $4)
   (i32.shr_u
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.store8 offset=28
   (get_local $4)
   (i32.shr_u
    (get_local $0)
    (i32.const 24)
   )
  )
  (i64.store8 offset=27
   (get_local $4)
   (i64.shr_u
    (get_local $3)
    (i64.const 32)
   )
  )
  (i64.store8 offset=26
   (get_local $4)
   (i64.shr_u
    (get_local $3)
    (i64.const 40)
   )
  )
  (i64.store8 offset=25
   (get_local $4)
   (i64.shr_u
    (get_local $3)
    (i64.const 48)
   )
  )
  (i64.store8 offset=24
   (get_local $4)
   (i64.shr_u
    (get_local $3)
    (i64.const 56)
   )
  )
  (i32.store8 offset=23
   (get_local $4)
   (tee_local $0
    (i32.wrap/i64
     (get_local $2)
    )
   )
  )
  (i32.store8 offset=22
   (get_local $4)
   (i32.shr_u
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store8 offset=21
   (get_local $4)
   (i32.shr_u
    (get_local $0)
    (i32.const 16)
   )
  )
  (i32.store8 offset=20
   (get_local $4)
   (i32.shr_u
    (get_local $0)
    (i32.const 24)
   )
  )
  (i64.store8 offset=19
   (get_local $4)
   (i64.shr_u
    (get_local $2)
    (i64.const 32)
   )
  )
  (i64.store8 offset=18
   (get_local $4)
   (i64.shr_u
    (get_local $2)
    (i64.const 40)
   )
  )
  (i64.store8 offset=17
   (get_local $4)
   (i64.shr_u
    (get_local $2)
    (i64.const 48)
   )
  )
  (i64.store8 offset=16
   (get_local $4)
   (i64.shr_u
    (get_local $2)
    (i64.const 56)
   )
  )
  (call $prints
   (i32.const 1744)
  )
  (call $printhex
   (get_local $4)
   (i32.const 32)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 32)
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
   (i32.const 1760)
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
    (i32.const 1776)
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
    (i32.const 1792)
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
     (i32.const 1760)
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
   (i32.store offset=112
    (get_local $9)
    (i32.const 86400)
   )
   (i64.store offset=104
    (get_local $9)
    (get_local $0)
   )
   (i64.store offset=120
    (get_local $9)
    (i64.const 30)
   )
   (i64.store offset=128
    (get_local $9)
    (i64.const 10)
   )
   (i64.store offset=136
    (get_local $9)
    (i64.const 1)
   )
   (i64.store offset=144
    (get_local $9)
    (i64.const 10000)
   )
   (i64.store offset=152
    (get_local $9)
    (i64.const 5327108)
   )
   (block $label$21
    (block $label$22
     (block $label$23
      (block $label$24
       (block $label$25
        (br_if $label$25
         (i64.gt_s
          (get_local $2)
          (i64.const 4453191014201720831)
         )
        )
        (br_if $label$24
         (i64.eq
          (get_local $2)
          (i64.const -5915097261842366464)
         )
        )
        (br_if $label$23
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
        (i32.store offset=68
         (get_local $9)
         (i32.const 0)
        )
        (i32.store offset=64
         (get_local $9)
         (i32.const 1)
        )
        (i64.store offset=40 align=4
         (get_local $9)
         (i64.load offset=64
          (get_local $9)
         )
        )
        (drop
         (call $_ZN5eosio14execute_actionI9eparticleS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEbyEEEbPT_MT0_FvDpT1_E
          (i32.add
           (get_local $9)
           (i32.const 104)
          )
          (i32.add
           (get_local $9)
           (i32.const 40)
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
       (br_if $label$21
        (i64.eq
         (get_local $2)
         (i64.const 4453191182134018048)
        )
       )
       (br_if $label$13
        (i64.ne
         (get_local $2)
         (i64.const 6604081059879452672)
        )
       )
       (i32.store offset=84
        (get_local $9)
        (i32.const 0)
       )
       (i32.store offset=80
        (get_local $9)
        (i32.const 2)
       )
       (i64.store offset=24 align=4
        (get_local $9)
        (i64.load offset=80
         (get_local $9)
        )
       )
       (drop
        (call $_ZN5eosio14execute_actionI9eparticleS1_JyyEEEbPT_MT0_FvDpT1_E
         (i32.add
          (get_local $9)
          (i32.const 104)
         )
         (i32.add
          (get_local $9)
          (i32.const 24)
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
       (i32.const 3)
      )
      (i64.store offset=32 align=4
       (get_local $9)
       (i64.load offset=72
        (get_local $9)
       )
      )
      (drop
       (call $_ZN5eosio14execute_actionI9eparticleS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_EEEbPT_MT0_FvDpT1_E
        (i32.add
         (get_local $9)
         (i32.const 104)
        )
        (i32.add
         (get_local $9)
         (i32.const 32)
        )
       )
      )
      (br $label$13)
     )
     (i32.store offset=60
      (get_local $9)
      (i32.const 0)
     )
     (i32.store offset=56
      (get_local $9)
      (i32.const 4)
     )
     (i64.store offset=48 align=4
      (get_local $9)
      (i64.load offset=56
       (get_local $9)
      )
     )
     (drop
      (call $_ZN5eosio14execute_actionI9eparticleS1_JyEEEbPT_MT0_FvDpT1_E
       (i32.add
        (get_local $9)
        (i32.const 104)
       )
       (i32.add
        (get_local $9)
        (i32.const 48)
       )
      )
     )
     (br $label$13)
    )
    (i32.store offset=92
     (get_local $9)
     (i32.const 0)
    )
    (i32.store offset=88
     (get_local $9)
     (i32.const 5)
    )
    (i64.store offset=16 align=4
     (get_local $9)
     (i64.load offset=88
      (get_local $9)
     )
    )
    (drop
     (call $_ZN5eosio14execute_actionI9eparticleS1_JyyEEEbPT_MT0_FvDpT1_E
      (i32.add
       (get_local $9)
       (i32.const 104)
      )
      (i32.add
       (get_local $9)
       (i32.const 16)
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
    (i32.const 6)
   )
   (i64.store offset=8 align=4
    (get_local $9)
    (i64.load offset=96
     (get_local $9)
    )
   )
   (drop
    (call $_ZN5eosio14execute_actionI9eparticleS1_JyyEEEbPT_MT0_FvDpT1_E
     (i32.add
      (get_local $9)
      (i32.const 104)
     )
     (i32.add
      (get_local $9)
      (i32.const 8)
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
 (func $_ZN5eosio14execute_actionI9eparticleS1_JyyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
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
   (i32.const 272)
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
   (i32.const 272)
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
 (func $_ZN5eosio14execute_actionI9eparticleS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEES9_EEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
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
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $0
         (call $action_data_size)
        )
       )
      )
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
     (set_local $1
      (i32.const 0)
     )
     (br $label$0)
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
  (i64.store
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=8
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
   (i32.const 272)
  )
  (drop
   (call $memcpy
    (get_local $2)
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
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (drop
   (call $_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
    (i32.add
     (get_local $2)
     (i32.const 48)
    )
    (i32.add
     (get_local $2)
     (i32.const 20)
    )
   )
  )
  (block $label$4
   (br_if $label$4
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
  (call $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI9eparticleS5_JyRNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE
   (i32.add
    (get_local $2)
    (i32.const 48)
   )
   (get_local $2)
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
    (i32.const 64)
   )
  )
  (i32.const 1)
 )
 (func $_ZN5eosio14execute_actionI9eparticleS1_JyRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEbyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
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
 (func $_ZN5eosio14execute_actionI9eparticleS1_JyEEEbPT_MT0_FvDpT1_E (param $0 i32) (param $1 i32) (result i32)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
   (i32.const 272)
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
 (func $_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionI9eparticleS5_JyRNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEESD_EEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS6_5tupleIJySC_SC_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISE_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISG_Efp0_EEEEOSE_OSG_NS0_16integer_sequenceIjJXspT1_EEEE (param $0 i32) (param $1 i32)
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
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
   )
  )
  (drop
   (call $_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
    (get_local $4)
    (i32.add
     (get_local $1)
     (i32.const 20)
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
  (call_indirect (type $FUNCSIG$vijii)
   (get_local $0)
   (get_local $2)
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
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
  )
 )
 (func $malloc (param $0 i32) (result i32)
  (call $_ZN5eosio14memory_manager6mallocEm
   (i32.const 1856)
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
       (i32.const 10256)
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
      (i32.load8_u offset=10342
       (i32.const 0)
      )
     )
    )
    (set_local $7
     (i32.load offset=10344
      (i32.const 0)
     )
    )
    (br $label$0)
   )
   (set_local $7
    (current_memory)
   )
   (i32.store8 offset=10342
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=10344
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
       (i32.load offset=10344
        (i32.const 0)
       )
      )
     )
     (set_local $8
      (i32.const 0)
     )
     (i32.store offset=10344
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
       (i32.load8_u offset=10342
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=10342
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=10344
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
       (i32.load offset=10344
        (i32.const 0)
       )
      )
     )
     (i32.store offset=10344
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
       (i32.load offset=10240
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.const 10048)
    )
    (set_local $1
     (i32.add
      (i32.mul
       (get_local $2)
       (i32.const 12)
      )
      (i32.const 10048)
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
       (i32.load offset=10348
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
