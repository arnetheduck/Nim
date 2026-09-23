# excerpt from https://github.com/arnetheduck/nim-win32-abi
# copy from there when adding things

import ./[vadefs, winnt]
export vadefs, winnt

when defined(checkAbi) or defined(mdheaders):
  {.pragma: mdheader, header: "winbase.h".}
else:
  {.pragma: mdheader.}
{.pragma: mdmethod, sideEffect, mdheader.}
{.pragma: mdalias, mdheader.}

type

    HLOCAL* {.mdalias.} = pointer #[HANDLE]#

const
  FORMAT_MESSAGE_ALLOCATE_BUFFER*: int32 = 256'i32
  FORMAT_MESSAGE_ARGUMENT_ARRAY*: int32 = 8192'i32
  FORMAT_MESSAGE_FROM_HMODULE*: int32 = 2048'i32
  FORMAT_MESSAGE_FROM_STRING*: int32 = 1024'i32
  FORMAT_MESSAGE_FROM_SYSTEM*: int32 = 4096'i32
  FORMAT_MESSAGE_IGNORE_INSERTS*: int32 = 512'i32
  HANDLE_FLAG_INHERIT*: int32 = 1'i32
  INFINITE*: uint32 = 0xffffffff'u32

{.push dynlib: "kernel32".}
proc FormatMessageW*(dwFlags: uint32, lpSource: pointer, dwMessageId: uint32, dwLanguageId: uint32, lpBuffer: PWSTR, nSize: uint32, Arguments: ptr va_list): uint32 {.mdmethod, importc, stdcall.}
proc LocalFree*(hMem: HLOCAL): HLOCAL {.mdmethod, importc, stdcall.}
proc SetThreadAffinityMask*(hThread: HANDLE, dwThreadAffinityMask: uint): uint {.mdmethod, importc, stdcall.}
{.pop.}
