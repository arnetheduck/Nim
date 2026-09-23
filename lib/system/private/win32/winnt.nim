# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "minwindef.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}
{.pragma: mdtype, completeStruct, mdheader.}
{.pragma: mdalias, mdheader.}

type
  HANDLE* {.mdalias.} = pointer
  LIST_ENTRY* {.mdtype.} = object
    Flink*: ptr LIST_ENTRY
    Blink*: ptr LIST_ENTRY
  RTL_CONDITION_VARIABLE* {.mdtype.} = object
    Ptr*: pointer
  RTL_CRITICAL_SECTION* {.mdtype.} = object
    DebugInfo*: PRTL_CRITICAL_SECTION_DEBUG
    LockCount*: int32
    RecursionCount*: int32
    OwningThread*: HANDLE
    LockSemaphore*: HANDLE
    SpinCount*: uint
  RTL_CRITICAL_SECTION_DEBUG* {.mdtype.} = object
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
  PRTL_CRITICAL_SECTION_DEBUG* {.mdalias.} = ptr RTL_CRITICAL_SECTION_DEBUG
  PRTL_CRITICAL_SECTION* {.mdalias.} = ptr RTL_CRITICAL_SECTION
  PWSTR* = ptr UncheckedArray[uint16]

const
  MEM_COMMIT*: int32 = 4096'i32
  MEM_DECOMMIT*: int32 = 16384'i32
  MEM_RELEASE*: int32 = 32768'i32
  MEM_RESERVE*: int32 = 8192'i32
  MEM_TOP_DOWN*: int32 = 1048576'i32
  PAGE_EXECUTE*: int32 = 16'i32
  PAGE_EXECUTE_READ*: int32 = 32'i32
  PAGE_EXECUTE_READWRITE*: int32 = 64'i32
  PAGE_NOACCESS*: int32 = 1'i32
  PAGE_READONLY*: int32 = 2'i32
  PAGE_READWRITE*: int32 = 4'i32
