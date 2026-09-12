# excerpt from https://github.com/arnetheduck/nim-win32-abi

import ./winnt
export winnt

type
  CRITICAL_SECTION* {.header: "minwinbase.h".} = RTL_CRITICAL_SECTION
  LPCRITICAL_SECTION* {.header: "minwinbase.h".} = PRTL_CRITICAL_SECTION
  PCRITICAL_SECTION* {.header: "minwinbase.h".} = PRTL_CRITICAL_SECTION
