# excerpt from https://github.com/arnetheduck/nim-win32-abi

import ./[minwindef, winnt]
export minwindef, winnt

{.push dynlib: "kernel32".}
proc TerminateThread*(hThread: HANDLE, dwExitCode: uint32): BOOL {.sideEffect, importc, header: "processthreadsapi.h", stdcall.}
{.pop.}
