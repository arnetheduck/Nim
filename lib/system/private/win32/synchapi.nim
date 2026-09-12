# excerpt from https://github.com/arnetheduck/nim-win32-abi

import ./[minwinbase, minwindef, winnt]
export minwinbase, minwindef, winnt

type
  CONDITION_VARIABLE* {.header: "synchapi.h".} = RTL_CONDITION_VARIABLE

{.push dynlib: "kernel32".}
proc DeleteCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION) {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc EnterCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION) {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc InitializeConditionVariable*(ConditionVariable: ptr RTL_CONDITION_VARIABLE) {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc InitializeCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION) {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc LeaveCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION) {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc SleepConditionVariableCS*(ConditionVariable: ptr RTL_CONDITION_VARIABLE, CriticalSection: PCRITICAL_SECTION, dwMilliseconds: uint32): BOOL {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc TryEnterCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION): BOOL {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc WaitForMultipleObjects*(nCount: uint32, lpHandles: ptr HANDLE, bWaitAll: BOOL, dwMilliseconds: uint32): uint32 {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc WaitForSingleObject*(hHandle: HANDLE, dwMilliseconds: uint32): uint32 {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc WakeAllConditionVariable*(ConditionVariable: ptr RTL_CONDITION_VARIABLE) {.sideEffect, importc, header: "synchapi.h", stdcall.}
proc WakeConditionVariable*(ConditionVariable: ptr RTL_CONDITION_VARIABLE) {.sideEffect, importc, header: "synchapi.h", stdcall.}
{.pop.}
