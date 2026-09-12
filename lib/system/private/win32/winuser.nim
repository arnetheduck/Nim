# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./[windef, winnt]
export windef, winnt

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "winuser.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}

{.push dynlib: "user32".}
proc MessageBoxA*(hWnd: HWND, lpText: PCSTR, lpCaption: PCSTR, uType: uint32): int32 {.mdmethod, importc, stdcall.}
{.pop.}
