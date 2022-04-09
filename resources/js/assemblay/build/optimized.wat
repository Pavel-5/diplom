(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/S_BLOCKS (mut i32) (i32.const 0))
 (global $assembly/index/keyArr (mut i32) (i32.const 2256))
 (global $~lib/rt/__rtti_base i32 (i32.const 4720))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 21164))
 (memory $0 1)
 (data (i32.const 1036) "\\")
 (data (i32.const 1052) "@\00\00\00\t\00\00\00\06\00\00\00\03\00\00\00\02\00\00\00\08\00\00\00\0b\00\00\00\01\00\00\00\07\00\00\00\n\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\0c\00\00\00\00\00\00\00\0d\00\00\00\05")
 (data (i32.const 1132) "<")
 (data (i32.const 1144) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1196) "<")
 (data (i32.const 1208) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1324) "<")
 (data (i32.const 1336) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1388) ",")
 (data (i32.const 1400) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1468) "<")
 (data (i32.const 1480) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1532) "\\")
 (data (i32.const 1548) "@\00\00\00\03\00\00\00\07\00\00\00\0e\00\00\00\t\00\00\00\08\00\00\00\n\00\00\00\0f\00\00\00\00\00\00\00\05\00\00\00\02\00\00\00\06\00\00\00\0c\00\00\00\0b\00\00\00\04\00\00\00\0d\00\00\00\01")
 (data (i32.const 1628) "\\")
 (data (i32.const 1644) "@\00\00\00\0e\00\00\00\04\00\00\00\06\00\00\00\02\00\00\00\0b\00\00\00\03\00\00\00\0d\00\00\00\08\00\00\00\0c\00\00\00\0f\00\00\00\05\00\00\00\n\00\00\00\00\00\00\00\07\00\00\00\01\00\00\00\t")
 (data (i32.const 1724) "\\")
 (data (i32.const 1740) "@\00\00\00\0e\00\00\00\07\00\00\00\n\00\00\00\0c\00\00\00\0d\00\00\00\01\00\00\00\03\00\00\00\t\00\00\00\00\00\00\00\02\00\00\00\0b\00\00\00\04\00\00\00\0f\00\00\00\08\00\00\00\05\00\00\00\06")
 (data (i32.const 1820) "\\")
 (data (i32.const 1836) "@\00\00\00\0b\00\00\00\05\00\00\00\01\00\00\00\t\00\00\00\08\00\00\00\0d\00\00\00\0f\00\00\00\00\00\00\00\0e\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\0c\00\00\00\07\00\00\00\n\00\00\00\06")
 (data (i32.const 1916) "\\")
 (data (i32.const 1932) "@\00\00\00\03\00\00\00\n\00\00\00\0d\00\00\00\0c\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00\0b\00\00\00\07\00\00\00\05\00\00\00\t\00\00\00\04\00\00\00\08\00\00\00\0f\00\00\00\0e\00\00\00\06")
 (data (i32.const 2012) "\\")
 (data (i32.const 2028) "@\00\00\00\01\00\00\00\0d\00\00\00\02\00\00\00\t\00\00\00\07\00\00\00\n\00\00\00\06\00\00\00\00\00\00\00\08\00\00\00\0c\00\00\00\04\00\00\00\05\00\00\00\0f\00\00\00\03\00\00\00\0b\00\00\00\0e")
 (data (i32.const 2108) "\\")
 (data (i32.const 2124) "@\00\00\00\0b\00\00\00\n\00\00\00\0f\00\00\00\05\00\00\00\00\00\00\00\0c\00\00\00\0e\00\00\00\08\00\00\00\06\00\00\00\02\00\00\00\03\00\00\00\t\00\00\00\01\00\00\00\07\00\00\00\0d\00\00\00\04")
 (data (i32.const 2204) "\1c")
 (data (i32.const 2236) ",")
 (data (i32.const 2248) "\05\00\00\00\10\00\00\00\b0\08\00\00\b0\08")
 (data (i32.const 2284) "\1c")
 (data (i32.const 2296) "\01")
 (data (i32.const 2316) "|")
 (data (i32.const 2328) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data (i32.const 2444) "<")
 (data (i32.const 2456) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data (i32.const 2508) "\1c")
 (data (i32.const 2520) "\01\00\00\00\02\00\00\000")
 (data (i32.const 2540) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2940) "\1c\04")
 (data (i32.const 2952) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data (i32.const 3996) "\\")
 (data (i32.const 4008) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4092) ",")
 (data (i32.const 4104) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 4140) ",")
 (data (i32.const 4152) "\01\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 4188) "\1c")
 (data (i32.const 4220) ",")
 (data (i32.const 4232) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 4268) "\1c")
 (data (i32.const 4300) "|")
 (data (i32.const 4312) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 4428) "\1c")
 (data (i32.const 4460) "\1c")
 (data (i32.const 4472) "\01\00\00\00\02\00\00\001")
 (data (i32.const 4492) "\1c")
 (data (i32.const 4524) "\1c")
 (data (i32.const 4556) "\1c")
 (data (i32.const 4588) "<")
 (data (i32.const 4600) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4652) "<")
 (data (i32.const 4664) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4720) "\07\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 4748) "\02\t\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A\00\00\00\00\00\00\02A")
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "encrypt" (func $export:assembly/index/encrypt))
 (export "decrypt" (func $export:assembly/index/decrypt))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/index/S_BLOCKS
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/index/keyArr
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  i32.const 1344
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4112
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4320
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1152
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4608
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4672
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2960
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4016
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1216
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.get $0
   i32.const 21164
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 1216
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1216
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1216
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   i32.const 4720
   i32.load
   local.get $2
   i32.lt_u
   if
    i32.const 1344
    i32.const 1408
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 3
   i32.shl
   i32.const 4724
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $0
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  i32.or
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1488
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1488
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1488
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1488
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1488
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1488
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1488
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1488
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1488
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1488
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $4
  if
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1488
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $4
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1488
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 21168
  i32.const 0
  i32.store
  i32.const 22736
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 21168
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $1
      local.get $0
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 21168
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 21168
  i32.const 22740
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 21168
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     global.get $~lib/rt/itcms/toSpace
     local.get $0
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      i32.load offset=4
      i32.const 3
      i32.and
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 21164
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1216
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 21164
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 21164
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1488
       i32.const 559
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1488
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1488
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1152
   i32.const 1216
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $5
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1152
   i32.const 1488
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 4
   local.get $5
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $3
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $3
   i32.add
   local.get $3
   local.get $3
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $4
   local.get $2
   local.get $4
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $4
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $5
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $5
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1488
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 1488
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1488
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $4
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $6
   i32.const 2
   i32.and
   local.get $3
   i32.or
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $5
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $2
  local.set $1
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   local.tee $3
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 0
   i32.store8 offset=2
   local.get $3
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $3
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store8 offset=3
   local.get $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $0
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   local.get $1
   i32.sub
   i32.const 3
   i32.and
   local.tee $3
   i32.add
   local.tee $1
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   local.get $3
   i32.sub
   i32.const -4
   i32.and
   local.tee $0
   i32.add
   local.tee $3
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $3
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $0
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $1
   i32.const 0
   i32.store offset=24
   local.get $3
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $3
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $1
   local.get $1
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $3
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.sub
   local.set $0
   loop $while-continue|0
    local.get $0
    i32.const 32
    i32.ge_u
    if
     local.get $1
     i64.const 0
     i64.store
     local.get $1
     i64.const 0
     i64.store offset=8
     local.get $1
     i64.const 0
     i64.store offset=16
     local.get $1
     i64.const 0
     i64.store offset=24
     local.get $0
     i32.const 32
     i32.sub
     local.set $0
     local.get $1
     i32.const 32
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      local.get $1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $1
        i32.load offset=5
        local.tee $4
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $3
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $3
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $4
     i32.const 2
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $1
       i32.load offset=6
       local.tee $4
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $3
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $1
      i32.load offset=7
      local.tee $4
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $3
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $3
   i32.load8_u
   i32.store8
   local.get $3
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $3
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $4
   i32.const 2
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $0
   i32.sub
   local.get $4
   i32.sub
   i32.const 0
   local.get $4
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $0
    local.get $1
    local.get $4
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/array/Array<~lib/array/Array<i32>>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/string/String#concat
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $4
   i32.add
   local.tee $2
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2304
    local.set $2
    br $__inlined_func$~lib/string/String#concat
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $0
   local.get $3
   call $~lib/memory/memory.copy
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   call $~lib/memory/memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 4112
    i32.const 4240
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   block $__inlined_func$~lib/rt/itcms/__renew
    local.get $2
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 1073741820
    local.get $2
    i32.const 1073741820
    i32.lt_u
    select
    local.tee $2
    local.get $1
    i32.const 8
    local.get $1
    i32.const 8
    i32.gt_u
    select
    i32.const 2
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.tee $3
    local.get $0
    i32.load
    local.tee $2
    i32.const 20
    i32.sub
    local.tee $4
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    i32.le_u
    if
     local.get $4
     local.get $3
     i32.store offset=16
     local.get $2
     local.set $1
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $3
    local.get $4
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $1
    local.get $2
    local.get $3
    local.get $4
    i32.load offset=16
    local.tee $4
    local.get $3
    local.get $4
    i32.lt_u
    select
    call $~lib/memory/memory.copy
   end
   local.get $1
   local.get $2
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $3
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $2
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  local.get $2
  i32.store offset=12
 )
 (func $assembly/index/setKey (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  call $assembly/index/textToPseudoBinary
  local.tee $0
  i32.store
  local.get $0
  i32.const 8
  call $assembly/index/splitPseudoBinary
  global.set $assembly/index/keyArr
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/util/string/strtol<f64> (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.eqz
  if
   f64.const nan:0x8000000000000
   return
  end
  local.get $0
  local.tee $1
  i32.load16_u
  local.set $0
  loop $while-continue|0
   block $__inlined_func$~lib/util/string/isSpace (result i32)
    local.get $0
    i32.const 128
    i32.or
    i32.const 160
    i32.eq
    local.get $0
    i32.const 9
    i32.sub
    i32.const 4
    i32.le_u
    i32.or
    local.get $0
    i32.const 5760
    i32.lt_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    i32.const 1
    local.get $0
    i32.const -8192
    i32.add
    i32.const 10
    i32.le_u
    br_if $__inlined_func$~lib/util/string/isSpace
    drop
    block $break|0
     block $case6|0
      local.get $0
      i32.const 5760
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 8232
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 8233
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 8239
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 8287
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 12288
      i32.eq
      br_if $case6|0
      local.get $0
      i32.const 65279
      i32.eq
      br_if $case6|0
      br $break|0
     end
     i32.const 1
     br $__inlined_func$~lib/util/string/isSpace
    end
    i32.const 0
   end
   if
    local.get $1
    i32.const 2
    i32.add
    local.tee $1
    i32.load16_u
    local.set $0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 43
  i32.eq
  local.get $0
  i32.const 45
  i32.eq
  i32.or
  if (result f64)
   local.get $2
   i32.const 1
   i32.sub
   local.tee $2
   i32.eqz
   if
    f64.const nan:0x8000000000000
    return
   end
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load16_u
   drop
   f64.const -1
   f64.const 1
   local.get $0
   i32.const 45
   i32.eq
   select
  else
   f64.const 1
  end
  loop $while-continue|2
   block $while-break|2
    local.get $2
    local.tee $0
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    if
     local.get $1
     i32.load16_u
     local.tee $0
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $0
      i32.const 48
      i32.sub
     else
      local.get $0
      i32.const 65
      i32.sub
      i32.const 25
      i32.le_u
      if (result i32)
       local.get $0
       i32.const 55
       i32.sub
      else
       local.get $0
       i32.const 87
       i32.sub
       local.get $0
       local.get $0
       i32.const 97
       i32.sub
       i32.const 25
       i32.le_u
       select
      end
     end
     local.tee $0
     i32.const 2
     i32.ge_u
     if
      local.get $3
      i64.reinterpret_f64
      i64.const 1
      i64.shl
      i64.const 2
      i64.sub
      i64.const -9007199254740994
      i64.gt_u
      if
       f64.const nan:0x8000000000000
       return
      end
      br $while-break|2
     end
     local.get $3
     local.get $3
     f64.add
     local.get $0
     f64.convert_i32_u
     f64.add
     local.set $3
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|2
    end
   end
  end
  local.get $3
  f64.mul
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $__inlined_func$~lib/util/string/joinStringArray (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=12
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4780
   i32.lt_s
   if
    i32.const 21184
    i32.const 21232
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 1
   i32.sub
   local.tee $4
   i32.const 0
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 2304
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   local.get $4
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    local.get $3
    i32.load
    local.tee $1
    i32.store
    local.get $0
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    i32.const 2304
    local.get $1
    select
    br $__inlined_func$~lib/util/string/joinStringArray
   end
   loop $for-loop|0
    local.get $0
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load
     local.tee $5
     i32.store offset=4
     local.get $5
     if
      local.get $5
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.get $1
      i32.add
      local.set $1
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   i32.const 0
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.get $4
   i32.const 2300
   i32.load
   i32.const 1
   i32.shr_u
   local.tee $1
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store offset=8
   i32.const 0
   local.set $2
   loop $for-loop|1
    local.get $2
    local.get $4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load
     local.tee $6
     i32.store offset=4
     local.get $6
     if
      local.get $0
      i32.const 1
      i32.shl
      local.get $5
      i32.add
      local.get $6
      local.get $6
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.tee $6
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $0
      local.get $6
      i32.add
      local.set $0
     end
     local.get $1
     if
      local.get $0
      i32.const 1
      i32.shl
      local.get $5
      i32.add
      i32.const 2304
      local.get $1
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
      local.get $0
      local.get $1
      i32.add
      local.set $0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 2
   i32.shl
   local.get $3
   i32.add
   i32.load
   local.tee $1
   i32.store offset=4
   local.get $1
   if
    local.get $0
    i32.const 1
    i32.shl
    local.get $5
    i32.add
    local.get $1
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    call $~lib/memory/memory.copy
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
  end
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1344
    i32.const 4240
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 4608
    i32.const 1216
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 4672
   i32.const 1216
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/fromSpace
   local.tee $0
   i32.load offset=8
   local.set $2
   local.get $1
   global.get $~lib/rt/itcms/white
   local.get $0
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner0
   block $invalid
    block $~lib/array/Array<i32>
     block $~lib/arraybuffer/ArrayBufferView
      block $~lib/string/String
       block $~lib/arraybuffer/ArrayBuffer
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/array/Array<i32> $folding-inner0 $folding-inner0 $folding-inner0 $invalid
       end
       return
      end
      return
     end
     local.get $0
     i32.load
     local.tee $0
     if
      local.get $0
      call $byn-split-outlined-A$~lib/rt/itcms/__visit
     end
     return
    end
    local.get $0
    i32.load
    local.tee $0
    if
     local.get $0
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    return
   end
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $3
    if
     local.get $3
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~start
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store
  memory.size
  i32.const 16
  i32.shl
  i32.const 21164
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1268
  i32.const 1264
  i32.store
  i32.const 1272
  i32.const 1264
  i32.store
  i32.const 1264
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1300
  i32.const 1296
  i32.store
  i32.const 1304
  i32.const 1296
  i32.store
  i32.const 1296
  global.set $~lib/rt/itcms/toSpace
  i32.const 1444
  i32.const 1440
  i32.store
  i32.const 1448
  i32.const 1440
  i32.store
  i32.const 1440
  global.set $~lib/rt/itcms/fromSpace
  local.get $0
  i32.const 8
  i32.const 4
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 16
  i32.const 3
  i32.const 1056
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 1
  i32.const 16
  i32.const 3
  i32.const 1552
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 2
  i32.const 16
  i32.const 3
  i32.const 1648
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 3
  i32.const 16
  i32.const 3
  i32.const 1744
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 4
  i32.const 16
  i32.const 3
  i32.const 1840
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 5
  i32.const 16
  i32.const 3
  i32.const 1936
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 6
  i32.const 16
  i32.const 3
  i32.const 2032
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  i32.const 7
  i32.const 16
  i32.const 3
  i32.const 2128
  call $~lib/rt/__newArray
  call $~lib/array/Array<~lib/array/Array<i32>>#__uset
  local.get $0
  global.set $assembly/index/S_BLOCKS
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/textToPseudoBinary (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4780
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i64.const 0
   i64.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   i32.const 2304
   local.set $4
   local.get $1
   i32.const 2304
   i32.store
   loop $for-loop|0
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.get $3
     i32.le_u
     if (result i32)
      i32.const -1
     else
      local.get $3
      i32.const 1
      i32.shl
      local.get $0
      i32.add
      i32.load16_u
     end
     local.set $1
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4780
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     block $__inlined_func$~lib/util/number/itoa32
      local.get $1
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 2528
       local.set $1
       br $__inlined_func$~lib/util/number/itoa32
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 64
      i32.const 0
      local.get $1
      i32.sub
      local.get $1
      local.get $1
      i32.const 31
      i32.shr_u
      local.tee $6
      select
      i64.extend_i32_u
      local.tee $5
      i64.clz
      i32.wrap_i64
      i32.sub
      local.get $6
      i32.add
      local.tee $2
      i32.const 1
      i32.shl
      i32.const 1
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store
      loop $do-loop|0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       i32.const 1
       i32.shl
       local.get $1
       i32.add
       local.get $5
       i64.const 1
       i64.and
       i32.wrap_i64
       i32.const 1
       i32.shl
       i32.const 4016
       i32.add
       i32.load16_u
       i32.store16
       local.get $5
       i64.const 1
       i64.shr_u
       local.tee $5
       i64.const 0
       i64.ne
       br_if $do-loop|0
      end
      local.get $6
      if
       local.get $1
       i32.const 45
       i32.store16
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $1
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 2528
     i32.store offset=8
     local.get $2
     i32.const 16
     local.get $1
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.sub
     call $~lib/string/String#repeat
     local.tee $2
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.get $1
     call $~lib/string/String.__concat
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=16
     local.get $4
     local.get $1
     call $~lib/string/String.__concat
     local.tee $4
     i32.store
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 21184
  i32.const 21232
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/splitPseudoBinary (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store
  local.get $3
  i32.const 0
  i32.const 5
  i32.const 4208
  call $~lib/rt/__newArray
  local.tee $5
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.get $1
  i32.div_s
  local.set $4
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.gt_s
   if
    local.get $0
    local.get $2
    local.get $4
    i32.mul
    local.get $4
    call $~lib/string/String#substr
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=4
    local.get $5
    local.get $3
    call $~lib/array/Array<~lib/string/String>#push
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/index/intToPseudoBinary (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4780
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $3
   i32.const 0
   i32.store offset=16
   local.get $3
   i32.const 2304
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4780
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   block $__inlined_func$~lib/util/number/itoa64
    local.get $0
    i64.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 2528
     local.set $2
     br $__inlined_func$~lib/util/number/itoa64
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 64
    i64.const 0
    local.get $0
    i64.sub
    local.get $0
    local.get $0
    i64.const 63
    i64.shr_u
    i32.wrap_i64
    local.tee $4
    select
    local.tee $0
    i64.clz
    i32.wrap_i64
    i32.sub
    local.get $4
    i32.add
    local.tee $3
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $2
    i32.store
    loop $do-loop|0
     local.get $3
     i32.const 1
     i32.sub
     local.tee $3
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     local.get $0
     i64.const 1
     i64.and
     i32.wrap_i64
     i32.const 1
     i32.shl
     i32.const 4016
     i32.add
     i32.load16_u
     i32.store16
     local.get $0
     i64.const 1
     i64.shr_u
     local.tee $0
     i64.const 0
     i64.ne
     br_if $do-loop|0
    end
    local.get $4
    if
     local.get $2
     i32.const 45
     i32.store16
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $3
   i32.const 2528
   i32.store offset=8
   local.get $1
   local.get $2
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.sub
   call $~lib/string/String#repeat
   local.tee $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   i32.const 2304
   local.get $1
   call $~lib/string/String.__concat
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 21184
  i32.const 21232
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/f (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4780
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   local.get $3
   i64.const 0
   i64.store offset=8
   local.get $3
   i64.const 0
   i64.store offset=16
   local.get $3
   i32.const 0
   i32.store offset=24
   local.get $3
   local.get $0
   call $~lib/util/string/strtol<f64>
   i64.trunc_f64_s
   local.get $1
   call $~lib/util/string/strtol<f64>
   i64.trunc_f64_s
   i64.add
   i64.const 4294967296
   i64.rem_s
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   call $assembly/index/intToPseudoBinary
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 8
   call $assembly/index/splitPseudoBinary
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   i32.const 4448
   call $~lib/rt/__newArray
   local.tee $4
   i32.store offset=8
   i32.const 0
   local.set $0
   loop $for-loop|0
    local.get $3
    i32.load offset=12
    local.get $0
    i32.gt_s
    if
     local.get $3
     local.get $0
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=12
     local.get $1
     call $~lib/util/string/strtol<f64>
     i64.trunc_f64_s
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/index/S_BLOCKS
     local.tee $1
     i32.store offset=20
     local.get $1
     local.get $0
     call $~lib/array/Array<~lib/string/String>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=16
     i32.wrap_i64
     local.tee $5
     local.get $1
     i32.load offset=12
     i32.ge_u
     if
      i32.const 1344
      i32.const 4240
      i32.const 114
      i32.const 42
      call $~lib/builtins/abort
      unreachable
     end
     local.get $1
     i32.load offset=4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i64.extend_i32_s
     i32.const 4
     call $assembly/index/intToPseudoBinary
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store offset=16
     local.get $4
     local.get $1
     call $~lib/array/Array<~lib/string/String>#push
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 2304
   i32.store offset=16
   local.get $0
   local.get $4
   call $~lib/array/Array<~lib/string/String>#join
   local.tee $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4780
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store
   local.get $1
   i32.const 0
   i32.store offset=8
   i32.const 0
   local.set $1
   loop $for-loop|02
    local.get $1
    i32.const 11
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.const 1
     i32.const 2147483647
     call $~lib/string/String#substr
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store
     local.get $0
     i32.const 0
     i32.const 1
     call $~lib/string/String#substr
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=4
     local.get $4
     local.get $0
     call $~lib/string/String.__concat
     local.tee $0
     i32.store offset=8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|02
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 21184
  i32.const 21232
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/pseudoXor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  i32.const 2304
  local.set $6
  local.get $2
  i32.const 2304
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $5
  loop $for-loop|0
   local.get $5
   local.get $7
   i32.gt_s
   if
    block $__inlined_func$~lib/string/String.__eq (result i32)
     local.get $0
     local.get $7
     local.get $7
     i32.const 1
     i32.add
     local.tee $2
     call $~lib/string/String#slice
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store offset=4
     local.get $1
     local.get $7
     local.get $2
     call $~lib/string/String#slice
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=8
     i32.const 1
     local.get $8
     local.get $9
     i32.eq
     br_if $__inlined_func$~lib/string/String.__eq
     drop
     i32.const 0
     local.get $8
     i32.const 0
     local.get $9
     select
     i32.eqz
     br_if $__inlined_func$~lib/string/String.__eq
     drop
     i32.const 0
     local.get $9
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $3
     local.get $8
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.ne
     br_if $__inlined_func$~lib/string/String.__eq
     drop
     block $__inlined_func$~lib/util/string/compareImpl (result i32)
      local.get $9
      i32.const 7
      i32.and
      local.get $8
      i32.const 7
      i32.and
      i32.or
      i32.eqz
      local.get $3
      i32.const 4
      i32.ge_u
      i32.and
      if
       loop $do-loop|0
        local.get $9
        i64.load
        local.get $8
        i64.load
        i64.eq
        if
         local.get $9
         i32.const 8
         i32.add
         local.set $9
         local.get $8
         i32.const 8
         i32.add
         local.set $8
         local.get $3
         i32.const 4
         i32.sub
         local.tee $3
         i32.const 4
         i32.ge_u
         br_if $do-loop|0
        end
       end
      end
      loop $while-continue|1
       local.get $3
       local.tee $2
       i32.const 1
       i32.sub
       local.set $3
       local.get $2
       if
        local.get $9
        i32.load16_u
        local.tee $4
        local.get $8
        i32.load16_u
        local.tee $2
        i32.ne
        if
         local.get $4
         local.get $2
         i32.sub
         br $__inlined_func$~lib/util/string/compareImpl
        end
        local.get $9
        i32.const 2
        i32.add
        local.set $9
        local.get $8
        i32.const 2
        i32.add
        local.set $8
        br $while-continue|1
       end
      end
      i32.const 0
     end
     i32.eqz
    end
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     i32.const 2528
     i32.store offset=12
     i32.const 2528
    else
     global.get $~lib/memory/__stack_pointer
     i32.const 4480
     i32.store offset=12
     i32.const 4480
    end
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $6
    local.get $2
    call $~lib/string/String.__concat
    local.tee $6
    i32.store
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $assembly/index/parseTextFromPseudoBinary (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4780
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store
   i32.const 2304
   local.set $1
   local.get $3
   i32.const 2304
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 5
   i32.shr_u
   local.set $4
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $2
     i32.const 4
     i32.shl
     i32.const 16
     call $~lib/string/String#substr
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $5
     call $~lib/util/string/strtol<f64>
     i64.trunc_f64_s
     i32.wrap_i64
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4780
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     i32.const 0
     i32.store
     local.get $6
     i32.const 2
     i32.const 1
     call $~lib/rt/itcms/__new
     local.tee $6
     i32.store
     local.get $6
     local.get $5
     i32.store16
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     local.get $1
     local.get $6
     call $~lib/string/String.__concat
     local.tee $1
     i32.store
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 21184
  i32.const 21232
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/encrypt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i64.const 0
  i64.store offset=16
  local.get $2
  i64.const 0
  i64.store offset=24
  local.get $2
  i64.const 0
  i64.store offset=32
  local.get $2
  i64.const 0
  i64.store offset=40
  local.get $2
  i32.const 0
  i32.store offset=48
  local.get $1
  call $assembly/index/setKey
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/index/textToPseudoBinary
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2528
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  call $~lib/string/String#repeat
  local.tee $0
  i32.store offset=8
  loop $while-continue|0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 63
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $1
    call $~lib/string/String.__concat
    local.tee $1
    i32.store
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 7
  i32.shr_u
  call $assembly/index/splitPseudoBinary
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 6
  i32.const 4288
  call $~lib/rt/__newArray
  local.tee $2
  i32.store offset=16
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $0
   i32.load offset=12
   local.get $1
   i32.gt_s
   if
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=20
    local.get $3
    i32.const 2
    call $assembly/index/splitPseudoBinary
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=20
    local.get $2
    local.get $3
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $1
  loop $for-loop|2
   local.get $1
   i32.const 32
   i32.lt_s
   if
    local.get $1
    i32.const 24
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/index/keyArr
     local.tee $0
     i32.store offset=4
     local.get $1
     local.get $0
     i32.load offset=12
     i32.rem_s
    else
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/index/keyArr
     local.tee $0
     i32.store offset=4
     i32.const 7
     local.get $1
     local.get $0
     i32.load offset=12
     i32.rem_s
     i32.sub
    end
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    global.get $assembly/index/keyArr
    local.tee $4
    i32.store offset=4
    local.get $3
    local.get $4
    local.get $0
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $3
    i32.store offset=24
    i32.const 0
    local.set $0
    loop $for-loop|3
     local.get $2
     i32.load offset=12
     local.get $0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=20
      local.get $5
      i32.const 0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=20
      local.get $6
      i32.const 0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $assembly/index/f
      local.tee $4
      i32.store offset=32
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=40
      local.get $7
      i32.const 1
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=36
      local.get $7
      local.get $4
      call $assembly/index/pseudoXor
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=36
      local.get $6
      i32.const 0
      local.get $4
      call $~lib/array/Array<~lib/string/String>#__set
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=4
      local.get $4
      i32.const 1
      local.get $5
      call $~lib/array/Array<~lib/string/String>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|3
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 4512
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=44
  i32.const 0
  local.set $1
  loop $for-loop|4
   local.get $2
   i32.load offset=12
   local.get $1
   i32.gt_s
   if
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $3
    i32.store offset=20
    local.get $4
    i32.const 2304
    i32.store offset=36
    local.get $3
    call $~lib/array/Array<~lib/string/String>#join
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=20
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 2304
  i32.store offset=20
  local.get $1
  local.get $0
  call $~lib/array/Array<~lib/string/String>#join
  local.tee $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/index/parseTextFromPseudoBinary
  local.tee $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/decrypt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i64.const 0
  i64.store offset=8
  local.get $2
  i64.const 0
  i64.store offset=16
  local.get $2
  i64.const 0
  i64.store offset=24
  local.get $2
  i64.const 0
  i64.store offset=32
  local.get $2
  i64.const 0
  i64.store offset=40
  local.get $2
  i32.const 0
  i32.store offset=48
  local.get $1
  call $assembly/index/setKey
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/index/textToPseudoBinary
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 2528
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  call $~lib/string/String#repeat
  local.tee $0
  i32.store offset=8
  loop $while-continue|0
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.const 63
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    local.get $0
    call $~lib/string/String.__concat
    local.tee $1
    i32.store
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $1
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 7
  i32.shr_u
  call $assembly/index/splitPseudoBinary
  local.tee $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 6
  i32.const 4544
  call $~lib/rt/__newArray
  local.tee $2
  i32.store offset=16
  i32.const 0
  local.set $1
  loop $for-loop|1
   local.get $0
   i32.load offset=12
   local.get $1
   i32.gt_s
   if
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=20
    local.get $3
    i32.const 2
    call $assembly/index/splitPseudoBinary
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=20
    local.get $2
    local.get $3
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|1
   end
  end
  i32.const 0
  local.set $1
  loop $for-loop|2
   local.get $1
   i32.const 32
   i32.lt_s
   if
    local.get $1
    i32.const 8
    i32.lt_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/index/keyArr
     local.tee $0
     i32.store offset=4
     local.get $1
     local.get $0
     i32.load offset=12
     i32.rem_s
    else
     global.get $~lib/memory/__stack_pointer
     global.get $assembly/index/keyArr
     local.tee $0
     i32.store offset=4
     i32.const 7
     local.get $1
     local.get $0
     i32.load offset=12
     i32.rem_s
     i32.sub
    end
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    global.get $assembly/index/keyArr
    local.tee $4
    i32.store offset=4
    local.get $3
    local.get $4
    local.get $0
    call $~lib/array/Array<~lib/string/String>#__get
    local.tee $3
    i32.store offset=24
    i32.const 0
    local.set $0
    loop $for-loop|3
     local.get $2
     i32.load offset=12
     local.get $0
     i32.gt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=20
      local.get $5
      i32.const 1
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      local.get $5
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=20
      local.get $6
      i32.const 1
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $6
      local.get $3
      call $assembly/index/f
      local.tee $4
      i32.store offset=32
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=4
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=40
      local.get $7
      i32.const 0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $7
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store offset=36
      local.get $7
      local.get $4
      call $assembly/index/pseudoXor
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=36
      local.get $6
      i32.const 1
      local.get $4
      call $~lib/array/Array<~lib/string/String>#__set
      local.get $2
      local.get $0
      call $~lib/array/Array<~lib/string/String>#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store offset=4
      local.get $4
      i32.const 0
      local.get $5
      call $~lib/array/Array<~lib/string/String>#__set
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|3
     end
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 5
  i32.const 4576
  call $~lib/rt/__newArray
  local.tee $0
  i32.store offset=44
  i32.const 0
  local.set $1
  loop $for-loop|4
   local.get $2
   i32.load offset=12
   local.get $1
   i32.gt_s
   if
    local.get $2
    local.get $1
    call $~lib/array/Array<~lib/string/String>#__get
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $3
    i32.store offset=20
    local.get $4
    i32.const 2304
    i32.store offset=36
    local.get $3
    call $~lib/array/Array<~lib/string/String>#join
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=20
    local.get $0
    local.get $3
    call $~lib/array/Array<~lib/string/String>#push
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|4
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 2304
  i32.store offset=20
  local.get $1
  local.get $0
  call $~lib/array/Array<~lib/string/String>#join
  local.tee $0
  i32.store offset=48
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $assembly/index/parseTextFromPseudoBinary
  local.tee $0
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   call $~lib/memory/memory.copy
  end
  local.get $5
  local.get $3
  i32.store
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String#repeat (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.lt_s
  i32.const 2524
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $3
  i64.extend_i32_s
  local.get $0
  i64.extend_i32_s
  i64.mul
  i64.const 268435456
  i64.gt_u
  i32.or
  if
   i32.const 4112
   i32.const 4160
   i32.const 333
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2304
   return
  end
  local.get $0
  i32.const 1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2528
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $3
  i32.mul
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  local.get $0
  local.get $3
  i32.const 1
  i32.shl
  local.tee $0
  i32.mul
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $3
   i32.lt_u
   if
    local.get $1
    local.get $2
    i32.add
    i32.const 2528
    local.get $0
    call $~lib/memory/memory.copy
    local.get $0
    local.get $1
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String#substr (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
   local.set $1
  end
  local.get $1
  i32.sub
  local.tee $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2304
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1344
   i32.const 4240
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 4320
   i32.const 4240
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
   i32.const 0
   i32.gt_s
   select
  else
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2304
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  local.get $3
  local.get $1
  i32.const 1
  i32.shl
  local.get $0
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:assembly/index/encrypt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/index/encrypt
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:assembly/index/decrypt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4780
  i32.lt_s
  if
   i32.const 21184
   i32.const 21232
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/index/decrypt
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1216
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
