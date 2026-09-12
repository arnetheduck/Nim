# excerpt from https://github.com/arnetheduck/nim-win32-abi

import ./[windef, winnt]
export windef, winnt

{.push dynlib: "user32".}
proc MessageBoxA*(hWnd: HWND, lpText: PCSTR, lpCaption: PCSTR, uType: uint32): int32 {.sideEffect, importc, stdcall, header: "winuser.h".}
{.pop.}
