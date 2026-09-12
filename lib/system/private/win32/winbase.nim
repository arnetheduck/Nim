# excerpt from https://github.com/arnetheduck/nim-win32-abi

import ./winnt
export winnt

const
  INFINITE*: uint32 = 0xffffffff'u32

{.push dynlib: "kernel32".}
proc SetThreadAffinityMask*(hThread: HANDLE, dwThreadAffinityMask: uint): uint {.sideEffect, importc, header: "winbase.h", stdcall.}
{.pop.}
