# excerpt from https://github.com/arnetheduck/nim-win32-abi

import ./[minwinbase, minwindef, winnt]
export minwinbase, minwindef, winnt

{.push dynlib: "kernel32".}
proc FreeLibrary*(hLibModule: HMODULE): BOOL {.sideEffect, importc, stdcall, header: "libloaderapi.h".}
proc GetProcAddress*(hModule: HMODULE, lpProcName: PCSTR): FARPROC {.sideEffect, importc, stdcall, header: "libloaderapi.h".}
proc LoadLibraryA*(lpLibFileName: PCSTR): HMODULE {.sideEffect, importc, stdcall, header: "libloaderapi.h".}
{.pop.}
