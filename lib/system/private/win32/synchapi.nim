# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./[winnt, minwindef, minwinbase]
export winnt, minwindef, minwinbase

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "synchapi.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}
{.pragma: mdalias, mdheader.}


type
  CONDITION_VARIABLE* {.mdalias.} = RTL_CONDITION_VARIABLE

{.push dynlib: "kernel32".}
proc DeleteCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION) {.mdmethod, importc, stdcall.}
proc EnterCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION) {.mdmethod, importc, stdcall.}
proc InitializeConditionVariable*(ConditionVariable: ptr RTL_CONDITION_VARIABLE) {.mdmethod, importc, stdcall.}
proc InitializeCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION) {.mdmethod, importc, stdcall.}
proc LeaveCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION) {.mdmethod, importc, stdcall.}
proc SleepConditionVariableCS*(ConditionVariable: ptr RTL_CONDITION_VARIABLE, CriticalSection: PCRITICAL_SECTION, dwMilliseconds: uint32): BOOL {.mdmethod, importc, stdcall.}
proc TryEnterCriticalSection*(lpCriticalSection: LPCRITICAL_SECTION): BOOL {.mdmethod, importc, stdcall.}
proc WaitForMultipleObjects*(nCount: uint32, lpHandles: ptr HANDLE, bWaitAll: BOOL, dwMilliseconds: uint32): uint32 {.mdmethod, importc, stdcall.}
proc WaitForSingleObject*(hHandle: HANDLE, dwMilliseconds: uint32): uint32 {.mdmethod, importc, stdcall.}
proc WakeAllConditionVariable*(ConditionVariable: ptr RTL_CONDITION_VARIABLE) {.mdmethod, importc, stdcall.}
proc WakeConditionVariable*(ConditionVariable: ptr RTL_CONDITION_VARIABLE) {.mdmethod, importc, stdcall.}
{.pop.}
