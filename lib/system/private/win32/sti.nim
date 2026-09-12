# excerpt from https://github.com/arnetheduck/nim-win32-abi

{.push dynlib: "kernel32".}
proc GetLastError*(): uint32 {.sideEffect, importc, header: "sti.h", stdcall.}
{.pop.}
