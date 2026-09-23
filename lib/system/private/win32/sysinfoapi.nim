# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./[winnt, minwindef, minwinbase]
export winnt, minwindef, minwinbase

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "sysinfoapi.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}
{.pragma: mdtype, completeStruct, mdheader.}
{.pragma: mdalias, mdheader.}

type

  # structs
  SYSTEM_INFO* {.mdtype.} = object
    Anonymous*: SYSTEM_INFO_0
    dwPageSize*: uint32
    lpMinimumApplicationAddress*: pointer
    lpMaximumApplicationAddress*: pointer
    dwActiveProcessorMask*: uint
    dwNumberOfProcessors*: uint32
    dwProcessorType*: uint32
    dwAllocationGranularity*: uint32
    wProcessorLevel*: uint16
    wProcessorRevision*: uint16
  SYSTEM_INFO_0* {.union, mdtype.} = object
    dwOemId*: uint32
    Anonymous*: SYSTEM_INFO_0_1
  SYSTEM_INFO_0_1* {.mdtype.} = object
    wProcessorArchitecture*: uint16
    wReserved*: uint16

  # typdefs
  LPSYSTEM_INFO* {.mdalias.} = ptr SYSTEM_INFO

{.push dynlib: "kernel32".}
proc GetSystemInfo*(lpSystemInfo: ptr SYSTEM_INFO) {.mdmethod, importc, stdcall.}
{.pop.}
