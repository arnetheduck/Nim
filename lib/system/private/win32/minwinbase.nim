# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./winnt
export winnt

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "minwinbase.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdalias, mdheader.}

type
  CRITICAL_SECTION* {.mdalias.} = RTL_CRITICAL_SECTION
  LPCRITICAL_SECTION* {.mdalias.} = PRTL_CRITICAL_SECTION
  PCRITICAL_SECTION* {.mdalias.} = PRTL_CRITICAL_SECTION
