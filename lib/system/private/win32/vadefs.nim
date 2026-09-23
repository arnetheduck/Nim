# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "vadefs.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdalias, mdheader.}

type

  # typdefs
  va_list* {.mdalias.} = ptr int8

