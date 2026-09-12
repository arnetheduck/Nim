# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "minwindef.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdalias, mdheader.}

type
  BOOL* {.mdalias.} = int32
  HINSTANCE* {.mdalias.} = pointer
  HMODULE* {.mdalias.} = HINSTANCE
  FARPROC* {.mdalias.} = pointer
