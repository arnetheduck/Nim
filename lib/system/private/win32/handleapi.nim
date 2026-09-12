# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./[winnt, minwindef]
export winnt, minwindef

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "handleapi.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}

template INVALID_HANDLE_VALUE*: untyped = cast[HANDLE](-1)
{.push dynlib: "kernel32".}
proc CloseHandle*(hObject: HANDLE): BOOL {.mdmethod, importc, stdcall.}
proc DuplicateHandle*(hSourceProcessHandle: HANDLE, hSourceHandle: HANDLE, hTargetProcessHandle: HANDLE, lpTargetHandle: ptr HANDLE, dwDesiredAccess: uint32, bInheritHandle: BOOL, dwOptions: uint32): BOOL {.mdmethod, importc, stdcall.}
proc GetHandleInformation*(hObject: HANDLE, lpdwFlags: ptr uint32): BOOL {.mdmethod, importc, stdcall.}
proc SetHandleInformation*(hObject: HANDLE, dwMask: uint32, dwFlags: uint32): BOOL {.mdmethod, importc, stdcall.}
{.pop.}
