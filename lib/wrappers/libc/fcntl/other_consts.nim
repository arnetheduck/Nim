var F_DUPFD* {.importc: "F_DUPFD", header: "<fcntl.h>".}: cint
var F_GETFD* {.importc: "F_GETFD", header: "<fcntl.h>".}: cint
var F_SETFD* {.importc: "F_SETFD", header: "<fcntl.h>".}: cint
var F_GETFL* {.importc: "F_GETFL", header: "<fcntl.h>".}: cint
var F_SETFL* {.importc: "F_SETFL", header: "<fcntl.h>".}: cint
var F_GETLK* {.importc: "F_GETLK", header: "<fcntl.h>".}: cint
var F_SETLK* {.importc: "F_SETLK", header: "<fcntl.h>".}: cint
var F_SETLKW* {.importc: "F_SETLKW", header: "<fcntl.h>".}: cint
var F_GETOWN* {.importc: "F_GETOWN", header: "<fcntl.h>".}: cint
var F_SETOWN* {.importc: "F_SETOWN", header: "<fcntl.h>".}: cint
var FD_CLOEXEC* {.importc: "FD_CLOEXEC", header: "<fcntl.h>".}: cint
var F_RDLCK* {.importc: "F_RDLCK", header: "<fcntl.h>".}: cint
var F_UNLCK* {.importc: "F_UNLCK", header: "<fcntl.h>".}: cint
var F_WRLCK* {.importc: "F_WRLCK", header: "<fcntl.h>".}: cint
var O_CREAT* {.importc: "O_CREAT", header: "<fcntl.h>".}: cint
var O_EXCL* {.importc: "O_EXCL", header: "<fcntl.h>".}: cint
var O_NOCTTY* {.importc: "O_NOCTTY", header: "<fcntl.h>".}: cint
var O_TRUNC* {.importc: "O_TRUNC", header: "<fcntl.h>".}: cint
var O_APPEND* {.importc: "O_APPEND", header: "<fcntl.h>".}: cint
var O_DSYNC* {.importc: "O_DSYNC", header: "<fcntl.h>".}: cint
var O_NONBLOCK* {.importc: "O_NONBLOCK", header: "<fcntl.h>".}: cint
var O_RSYNC* {.importc: "O_RSYNC", header: "<fcntl.h>".}: cint
var O_SYNC* {.importc: "O_SYNC", header: "<fcntl.h>".}: cint
var O_ACCMODE* {.importc: "O_ACCMODE", header: "<fcntl.h>".}: cint
var O_RDONLY* {.importc: "O_RDONLY", header: "<fcntl.h>".}: cint
var O_RDWR* {.importc: "O_RDWR", header: "<fcntl.h>".}: cint
var O_WRONLY* {.importc: "O_WRONLY", header: "<fcntl.h>".}: cint
var POSIX_FADV_NORMAL* {.importc: "POSIX_FADV_NORMAL", header: "<fcntl.h>".}: cint
var POSIX_FADV_SEQUENTIAL* {.importc: "POSIX_FADV_SEQUENTIAL", header: "<fcntl.h>".}: cint
var POSIX_FADV_RANDOM* {.importc: "POSIX_FADV_RANDOM", header: "<fcntl.h>".}: cint
var POSIX_FADV_WILLNEED* {.importc: "POSIX_FADV_WILLNEED", header: "<fcntl.h>".}: cint
var POSIX_FADV_DONTNEED* {.importc: "POSIX_FADV_DONTNEED", header: "<fcntl.h>".}: cint
var POSIX_FADV_NOREUSE* {.importc: "POSIX_FADV_NOREUSE", header: "<fcntl.h>".}: cint
