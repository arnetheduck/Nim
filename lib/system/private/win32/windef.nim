# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "windef.h".}
else:
  {.pragma: mdheader.}

type
  HWND* {.mdheader.} = pointer
