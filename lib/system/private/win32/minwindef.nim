# excerpt from https://github.com/arnetheduck/nim-win32-abi
# dropped `distinct` for now (experimental)

type
  BOOL* {.header: "minwindef.h".} = int32
  HINSTANCE* {.header: "minwindef.h".} = pointer
  HMODULE* {.header: "minwindef.h".} = HINSTANCE
  FARPROC* = pointer
