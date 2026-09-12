# excerpt from https://github.com/arnetheduck/nim-win32-abi

type
  HANDLE* {.header: "winnt.h".} = distinct pointer
  LIST_ENTRY* {.completeStruct, header: "winnt.h".} = object
    Flink*: ptr LIST_ENTRY
    Blink*: ptr LIST_ENTRY
  RTL_CONDITION_VARIABLE* {.completeStruct, header: "winnt.h".} = object
    Ptr*: pointer
  RTL_CRITICAL_SECTION* {.completeStruct, header: "winnt.h".} = object
    DebugInfo*: PRTL_CRITICAL_SECTION_DEBUG
    LockCount*: int32
    RecursionCount*: int32
    OwningThread*: HANDLE
    LockSemaphore*: HANDLE
    SpinCount*: uint
  RTL_CRITICAL_SECTION_DEBUG* {.completeStruct, header: "winnt.h".} = object
    Type*: uint16
    CreatorBackTraceIndex*: uint16
    CriticalSection*: ptr RTL_CRITICAL_SECTION
    ProcessLocksList*: LIST_ENTRY
    EntryCount*: uint32
    ContentionCount*: uint32
    Flags*: uint32
    CreatorBackTraceIndexHigh*: uint16
    Identifier*: uint16
  PCSTR* = cstring
  PRTL_CRITICAL_SECTION_DEBUG* {.header: "winnt.h".} = ptr RTL_CRITICAL_SECTION_DEBUG
  PRTL_CRITICAL_SECTION* {.header: "winnt.h".} = ptr RTL_CRITICAL_SECTION

const
  MEM_COMMIT*: int32 = 4096'i32
  MEM_DECOMMIT*: int32 = 16384'i32
  MEM_RELEASE*: int32 = 32768'i32
  MEM_RESERVE*: int32 = 8192'i32
  MEM_TOP_DOWN*: int32 = 1048576'i32
  PAGE_READWRITE*: int32 = 4'i32
