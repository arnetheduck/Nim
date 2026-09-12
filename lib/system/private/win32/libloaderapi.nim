# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./[minwinbase, minwindef, winnt]
export minwinbase, minwindef, winnt

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "libloaderapi.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}

{.push dynlib: "kernel32".}
proc FreeLibrary*(hLibModule: HMODULE): BOOL {.mdmethod, importc, stdcall.}
proc GetProcAddress*(hModule: HMODULE, lpProcName: PCSTR): FARPROC {.mdmethod, importc, stdcall.}
proc LoadLibraryA*(lpLibFileName: PCSTR): HMODULE {.mdmethod, importc, stdcall.}
{.pop.}
