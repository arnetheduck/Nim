# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./[minwindef, winnt]
export minwindef, winnt

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "processthreadsapi.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}

{.push dynlib: "kernel32".}
proc GetCurrentProcessId*(): uint32 {.mdmethod, importc, stdcall.}
proc GetCurrentThreadId*(): uint32 {.mdmethod, importc, stdcall.}
proc TerminateThread*(hThread: HANDLE, dwExitCode: uint32): BOOL {.mdmethod, importc, stdcall.}
{.pop.}
