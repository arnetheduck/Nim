# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./minwindef
export minwindef

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "memoryapi.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}

{.push dynlib: "kernel32".}
proc VirtualAlloc*(lpAddress: pointer, dwSize: uint, flAllocationType: uint32, flProtect: uint32): pointer {.mdmethod, importc, stdcall.}
proc VirtualFree*(lpAddress: pointer, dwSize: uint, dwFreeType: uint32): BOOL {.mdmethod, importc, stdcall.}
{.pop.}
