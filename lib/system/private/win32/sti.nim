# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "sti.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}

{.push dynlib: "kernel32".}
proc GetLastError*(): uint32 {.mdmethod, importc, stdcall.}
{.pop.}
