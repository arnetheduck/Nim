# excerpt from https://github.com/arnetheduck/nim-win32-abi

import ./minwindef
export minwindef

{.push dynlib: "kernel32".}
proc VirtualAlloc*(lpAddress: pointer, dwSize: uint, flAllocationType: uint32, flProtect: uint32): pointer {.sideEffect, importc, header: "memoryapi.h", stdcall.}
proc VirtualFree*(lpAddress: pointer, dwSize: uint, dwFreeType: uint32): BOOL {.sideEffect, importc, header: "memoryapi.h", stdcall.}
{.pop.}
