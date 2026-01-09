# libc-test run results

## Module summary

| Module | Passed | Failed | Skipped | Notes |
|---|---:|---:|---:|---|
| functional | 65 | 7 | 1 | |
| math | 198 | 1 | 0 | |
| musl | 1 | 0 | 0 | |
| regression | 60 | 4 | 4 | |

## Overall summary

| Total passed | Total failed | Total skipped | Notes |
|---:|---:|---:|---|
| 324 | 12 | 5 | |

## Test case details

| Module | Test case | Test purpose | Result | Error/exception |
|---|---|---|---|---|
| functional | libc-test-bins/src/functional/argv.exe | 验证 argv 相关接口的基本行为与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/basename.exe | 验证 basename 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/clocale_mbfuncs.exe | 验证 clocale_mbfuncs 相关接口在 wctob、setlocale、mbrtowc 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/clock_gettime.exe | 验证 clock_gettime 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/crypt.exe | 验证 crypt 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/dirname.exe | 验证 dirname 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/dlopen.exe | 验证 dlopen 相关接口在 dlerror、dlsym、dlopen 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/env.exe | 验证 env 相关接口在 getenv、setenv、clearenv 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/fcntl.exe | 验证 fcntl 相关接口在 fcntl、fork、waitpid 场景下的行为与边界 | FAIL | src/functional/fcntl.c:36: status==0 failed: lock failed to work<br>src/functional/fcntl.c:44: status==0 failed: child failed to detect lock held by parent |
| functional | libc-test-bins/src/functional/fdopen.exe | 验证 fdopen 相关接口在 mkstemp、fdopen、ftello 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/fnmatch.exe | 验证 fnmatch 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/fscanf.exe | 验证 fscanf 相关接口在 fscanf、writetemp、feof 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/fwscanf.exe | 验证 fwscanf 相关接口在 writetemp、fwscanf、feof 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/iconv_open.exe | 验证 iconv_open 相关接口在 iconv、iconv_open、iconv_close 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/inet_pton.exe | inet_addr, inet_ntoa, inet_pton and inet_ntop tests with roundtrip check | PASS |  |
| functional | libc-test-bins/src/functional/ipc_msg.exe | 验证 ipc_msg 相关接口在 msgget、msgctl、msgrcv 场景下的行为与边界 | FAIL | src/functional/ipc_msg.c:62: qid_ds.msg_lspid == 0 failed: got 51, want 0<br>src/functional/ipc_msg.c:63: qid_ds.msg_lrpid == 0 failed: got 51, want 0<br>src/functional/ipc_msg.c:69: qid_ds.msg_ctime <= t+5 failed: got 34141948608, want <= 1767513956<br>src/functional/ipc_msg.c:81: msg_stime is 34157937504 want <= 1767513956<br>src/functional/ipc_msg.c:128: child exit status: 256 |
| functional | libc-test-bins/src/functional/ipc_sem.exe | 验证 ipc_sem 相关接口在 semctl、semget、ftok 场景下的行为与边界 | FAIL | src/functional/ipc_sem.c:44: semid = semget(k, 1, IPC_CREAT\\ | 0666) failed: Function not implemented<br>src/functional/ipc_sem.c:45: semctl(semid, 0, IPC_RMID) failed: Function not implemented<br>src/functional/ipc_sem.c:46: semid = semget(k, 1, IPC_CREAT\\ | IPC_EXCL\\ | 0666) failed: Function not implemented |
| functional | libc-test-bins/src/functional/ipc_shm.exe | 验证 ipc_shm 相关接口在 shmget、shmctl、ftok 场景下的行为与边界 | SKIP | Skipped by run script |
| functional | libc-test-bins/src/functional/mbc.exe | 验证 mbc 相关接口在 mbrtowc、setlocale、mbsrtowcs 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/memstream.exe | 验证 memstream 相关接口在 open_memstream、fmemopen、memcmp 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/mntent.exe | 验证 mntent 相关接口在 fmemopen、endmntent、test_getmntent_empty 场景下的行为与边界 | FAIL | src/functional/mntent.c:45: !strcmp(m->mnt_opts, "defaults") failed |
| functional | libc-test-bins/src/functional/popen.exe | 验证 popen 相关接口在 popen、pclose、getpid 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/pthread_cancel.exe | 验证 pthread_cancel 相关接口在 pthread_cleanup_push、pthread_cleanup_pop、pthread_create 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/pthread_cancel-points.exe | testing cancellation points | PASS |  |
| functional | libc-test-bins/src/functional/pthread_cond.exe | 验证 pthread_cond 相关接口在 pthread_mutex_lock、pthread_mutex_unlock、pthread_create 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/pthread_mutex.exe | testing pthread mutex behaviour with various attributes | PASS |  |
| functional | libc-test-bins/src/functional/pthread_mutex_pi.exe | testing pthread mutex behaviour with various attributes | FAIL | src/functional/pthread_mutex_pi.c:42: pthread_mutexattr_setprotocol(&ma, PTHREAD_PRIO_INHERIT) failed: Function not implemented<br>src/functional/pthread_mutex_pi.c:42: pthread_mutexattr_setprotocol(&ma, PTHREAD_PRIO_INHERIT) failed: Function not implemented<br>src/functional/pthread_mutex_pi.c:42: pthread_mutexattr_setprotocol(&ma, PTHREAD_PRIO_INHERIT) failed: Function not implemented<br>src/functional/pthread_mutex_pi.c:87: pthread_mutexattr_setprotocol(&ma, PTHREAD_PRIO_INHERIT) failed: Function not implemented<br>src/functional/pthread_mutex_pi.c:87: pthread_mutexattr_setprotocol(&ma, PTHREAD_PRIO_INHERIT) failed: Function not implemented<br>src/functional/pthread_mutex_pi.c:108: pthread_mutexattr_setprotocol(&ma, PTHREAD_PRIO_INHERIT) failed: Function not implemented<br>src/functional/pthread_mutex_pi.c:108: pthread_mutexattr_setprotocol(&ma, PTHREAD_PRIO_INHERIT) failed: Function not implemented |
| functional | libc-test-bins/src/functional/pthread_robust.exe | 验证 pthread_robust 相关接口在 pthread_mutex_lock、pthread_mutex_unlock、pthread_mutex_init 场景下的行为与边界 | FAIL | src/functional/pthread_robust.c:43: pthread_mutexattr_setprotocol(&mtx_a, PTHREAD_PRIO_INHERIT) failed: (pshared==0, pi==1) Function not implemented (setting PI attribute)<br>src/functional/pthread_robust.c:43: pthread_mutexattr_setprotocol(&mtx_a, PTHREAD_PRIO_INHERIT) failed: (pshared==1, pi==1) Function not implemented (setting PI attribute) |
| functional | libc-test-bins/src/functional/pthread_tsd.exe | 验证 pthread_tsd 相关接口在 pthread_setspecific、pthread_key_create、pthread_getspecific 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/qsort.exe | 验证 qsort 相关接口在 qsort、char_test、t_randseed 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/random.exe | 验证 random 相关接口在 random、srandom、initstate 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/search_hsearch.exe | 验证 search_hsearch 相关接口在 hcreate、hdestroy 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/search_insque.exe | 验证 search_insque 相关接口在 insque、remque 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/search_lsearch.exe | 验证 search_lsearch 相关接口在 lsearch、lfind 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/search_tsearch.exe | 验证 search_tsearch 相关接口在 twalk、tsearch、nodes 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/sem_init.exe | unnamed semaphore sanity check | PASS |  |
| functional | libc-test-bins/src/functional/sem_open.exe | named semaphore sanity check | PASS |  |
| functional | libc-test-bins/src/functional/setjmp.exe | 验证 setjmp 相关接口在 sigprocmask、sigemptyset、sigaddset 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/snprintf.exe | 验证 snprintf 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/socket.exe | 验证 socket 相关接口在 socket、bind、getsockname 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/spawn.exe | 验证 spawn 相关接口在 posix_spawn_file_actions_addclose、pipe、posix_spawn_file_actions_init 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/sscanf.exe | 验证 sscanf 相关接口在 sscanf、match、failure 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/sscanf_long.exe | 验证 sscanf_long 相关接口在 sscanf、stack 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/stat.exe | 验证 stat 相关接口在 geteuid、stat、tmpfile 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/strftime.exe | 验证 strftime 相关接口在 strftime、setenv 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/string.exe | 验证 string 相关接口在 strtok、strlcpy、strlcat 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/string_memcpy.exe | 验证 string_memcpy 相关接口在 pmemcpy 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/string_memmem.exe | 验证 string_memmem 相关接口在 memmem 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/string_memset.exe | 验证 string_memset 相关接口在 pmemset 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/string_strchr.exe | 验证 string_strchr 相关接口在 strchr 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/string_strcspn.exe | 验证 string_strcspn 相关接口在 strcspn 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/string_strstr.exe | 验证 string_strstr 相关接口在 strstr 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/strptime.exe | 验证 strptime 相关接口在 strptime、strftime、setenv 场景下的行为与边界 | FAIL | src/functional/strptime.c:23: "%F": failed to parse "1856-07-10"<br>src/functional/strptime.c:23: "%s": failed to parse "683078400"<br>src/functional/strptime.c:47: "%z": failed to parse "+0200"<br>src/functional/strptime.c:47: "%z": failed to parse "-0530"<br>src/functional/strptime.c:47: "%z": failed to parse "-06" |
| functional | libc-test-bins/src/functional/strtod.exe | 验证 strtod 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/strtod_long.exe | 验证 strtod_long 相关接口在 strtod 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/strtod_simple.exe | 验证 strtod_simple 相关接口在 strtod、failure、sin 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/strtof.exe | 验证 strtof 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/strtold.exe | 验证 strtold 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/strtol.exe | 验证 strtol 相关接口在 strtol、strtoul、strtoull 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/swprintf.exe | 验证 swprintf 相关接口在 swprintf、setlocale、wcslen 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/tgmath.exe | 验证 tgmath 相关接口在 pow、sqrt、lrint 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/time.exe | 验证 time 相关接口在 mktime、gmtime、got 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/tls_align_dlopen.exe | 验证 tls_align_dlopen 相关接口在 dlopen、dlsym 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/tls_align.exe | 验证 tls_align 相关接口的基本行为与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/tls_init_dlopen.exe | 验证 tls_init_dlopen 相关接口在 dlopen、dlerror、dlsym 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/tls_init.exe | 验证 tls_init 相关接口在 pthread_create、pthread_join 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/tls_local_exec.exe | 验证 tls_local_exec 相关接口在 ptrmod、__attribute__、pthread_create 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/udiv.exe | 验证 udiv 相关接口的基本行为与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/ungetc.exe | 验证 ungetc 相关接口在 ungetc、fscanf、tmpfile 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/utime.exe | 验证 utime 相关接口在 futimens、utimensat、tmpfile 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/vfork.exe | 验证 vfork 相关接口在 w、vfork、waitpid 场景下的行为与边界 | PASS |  |
| functional | libc-test-bins/src/functional/wcsstr.exe | 验证 wcsstr 接口的基本语义与边界条件 | PASS |  |
| functional | libc-test-bins/src/functional/wcstol.exe | 验证 wcstol 相关接口在 wcstoul、wcstol 场景下的行为与边界 | PASS |  |
| math | libc-test-bins/src/math/acos.exe | 验证 acos 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/acosf.exe | 验证 acosf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/acosh.exe | 验证 acosh 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/acoshf.exe | 验证 acoshf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/acoshl.exe | 验证 acoshl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/acosl.exe | 验证 acosl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/asin.exe | 验证 asin 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/asinf.exe | 验证 asinf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/asinh.exe | 验证 asinh 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/asinhf.exe | 验证 asinhf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/asinhl.exe | 验证 asinhl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/asinl.exe | 验证 asinl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atan2.exe | 验证 atan2 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atan2f.exe | 验证 atan2f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atan2l.exe | 验证 atan2l 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atan.exe | 验证 atan 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atanf.exe | 验证 atanf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atanh.exe | 验证 atanh 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atanhf.exe | 验证 atanhf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atanhl.exe | 验证 atanhl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/atanl.exe | 验证 atanl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/cbrt.exe | 验证 cbrt 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/cbrtf.exe | 验证 cbrtf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/cbrtl.exe | 验证 cbrtl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ceil.exe | 验证 ceil 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ceilf.exe | 验证 ceilf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ceill.exe | 验证 ceill 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/copysign.exe | 验证 copysign 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/copysignf.exe | 验证 copysignf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/copysignl.exe | 验证 copysignl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/cos.exe | 验证 cos 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/cosf.exe | 验证 cosf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/cosh.exe | 验证 cosh 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/coshf.exe | 验证 coshf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/coshl.exe | 验证 coshl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/cosl.exe | 验证 cosl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/drem.exe | 验证 drem 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/dremf.exe | 验证 dremf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/erfc.exe | 验证 erfc 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/erfcf.exe | 验证 erfcf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/erfcl.exe | 验证 erfcl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/erf.exe | 验证 erf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/erff.exe | 验证 erff 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/erfl.exe | 验证 erfl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/exp10.exe | 验证 exp10 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/exp10f.exe | 验证 exp10f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/exp10l.exe | 验证 exp10l 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/exp2.exe | 验证 exp2 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/exp2f.exe | 验证 exp2f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/exp2l.exe | 验证 exp2l 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/exp.exe | 验证 exp 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/expf.exe | 验证 expf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/expl.exe | 验证 expl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/expm1.exe | 验证 expm1 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/expm1f.exe | 验证 expm1f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/expm1l.exe | 验证 expm1l 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fabs.exe | 验证 fabs 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fabsf.exe | 验证 fabsf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fabsl.exe | 验证 fabsl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fdim.exe | 验证 fdim 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fdimf.exe | 验证 fdimf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fdiml.exe | 验证 fdiml 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fenv.exe | 验证 fenv 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/floor.exe | 验证 floor 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/floorf.exe | 验证 floorf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/floorl.exe | 验证 floorl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fma.exe | 验证 fma 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmaf.exe | 验证 fmaf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmal.exe | 验证 fmal 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmax.exe | 验证 fmax 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmaxf.exe | 验证 fmaxf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmaxl.exe | 验证 fmaxl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmin.exe | 验证 fmin 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fminf.exe | 验证 fminf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fminl.exe | 验证 fminl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmod.exe | 验证 fmod 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmodf.exe | 验证 fmodf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fmodl.exe | 验证 fmodl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/fpclassify.exe | 验证 fpclassify 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/frexp.exe | 验证 frexp 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/frexpf.exe | 验证 frexpf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/frexpl.exe | 验证 frexpl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/hypot.exe | 验证 hypot 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/hypotf.exe | 验证 hypotf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/hypotl.exe | 验证 hypotl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ilogb.exe | 验证 ilogb 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ilogbf.exe | 验证 ilogbf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ilogbl.exe | 验证 ilogbl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/isless.exe | 验证 isless 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/j0.exe | 验证 j0 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/j0f.exe | 验证 j0f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/j1.exe | 验证 j1 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/j1f.exe | 验证 j1f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/jn.exe | 验证 jn 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/jnf.exe | 验证 jnf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ldexp.exe | 验证 ldexp 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ldexpf.exe | 验证 ldexpf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ldexpl.exe | 验证 ldexpl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lgamma.exe | 验证 lgamma 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lgammaf.exe | 验证 lgammaf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lgammaf_r.exe | 验证 lgammaf_r 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lgammal.exe | 验证 lgammal 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lgammal_r.exe | 验证 lgammal_r 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lgamma_r.exe | 验证 lgamma_r 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/llrint.exe | 验证 llrint 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/llrintf.exe | 验证 llrintf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/llrintl.exe | 验证 llrintl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/llround.exe | 验证 llround 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/llroundf.exe | 验证 llroundf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/llroundl.exe | 验证 llroundl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log10.exe | 验证 log10 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log10f.exe | 验证 log10f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log10l.exe | 验证 log10l 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log1p.exe | 验证 log1p 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log1pf.exe | 验证 log1pf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log1pl.exe | 验证 log1pl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log2.exe | 验证 log2 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log2f.exe | 验证 log2f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log2l.exe | 验证 log2l 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/logb.exe | 验证 logb 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/logbf.exe | 验证 logbf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/logbl.exe | 验证 logbl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/log.exe | 验证 log 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/logf.exe | 验证 logf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/logl.exe | 验证 logl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lrint.exe | 验证 lrint 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lrintf.exe | 验证 lrintf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lrintl.exe | 验证 lrintl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lround.exe | 验证 lround 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lroundf.exe | 验证 lroundf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/lroundl.exe | 验证 lroundl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/modf.exe | 验证 modf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/modff.exe | 验证 modff 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/modfl.exe | 验证 modfl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nearbyint.exe | 验证 nearbyint 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nearbyintf.exe | 验证 nearbyintf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nearbyintl.exe | 验证 nearbyintl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nextafter.exe | 验证 nextafter 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nextafterf.exe | 验证 nextafterf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nextafterl.exe | 验证 nextafterl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nexttoward.exe | 验证 nexttoward 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nexttowardf.exe | 验证 nexttowardf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/nexttowardl.exe | 验证 nexttowardl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/pow10.exe | 验证 pow10 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/pow10f.exe | 验证 pow10f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/pow10l.exe | 验证 pow10l 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/pow.exe | 验证 pow 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/powf.exe | 验证 powf 的数值正确性、边界值与特殊输入处理 | FAIL | src/math/ucb/powf.h:103: bad fp exception: RU powf(0x1.fffffep+127,0x1p+0)=0x1.fffffep+127, want 0 got INEXACT\\ | OVERFLOW<br>X src/math/ucb/powf.h:530: bad fp exception: RN powf(0x1.fffff8p-127,0x1p+0)=0x1.fffff8p-127, want 0 got INEXACT\\ | UNDERFLOW<br>X src/math/ucb/powf.h:533: bad fp exception: RN powf(0x1.fffffcp-127,0x1p+0)=0x1.fffffcp-127, want 0 got INEXACT\\ | UNDERFLOW<br>X src/math/ucb/powf.h:719: bad fp exception: RN powf(-0x1.fffff8p-127,0x1p+0)=-0x1.fffff8p-127, want 0 got INEXACT\\ | UNDERFLOW<br>X src/math/ucb/powf.h:722: bad fp exception: RN powf(-0x1.fffffcp-127,0x1p+0)=-0x1.fffffcp-127, want 0 got INEXACT\\ | UNDERFLOW |
| math | libc-test-bins/src/math/powl.exe | 验证 powl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/remainder.exe | 验证 remainder 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/remainderf.exe | 验证 remainderf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/remainderl.exe | 验证 remainderl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/remquo.exe | 验证 remquo 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/remquof.exe | 验证 remquof 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/remquol.exe | 验证 remquol 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/rint.exe | 验证 rint 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/rintf.exe | 验证 rintf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/rintl.exe | 验证 rintl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/round.exe | 验证 round 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/roundf.exe | 验证 roundf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/roundl.exe | 验证 roundl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/scalb.exe | 验证 scalb 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/scalbf.exe | 验证 scalbf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/scalbln.exe | 验证 scalbln 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/scalblnf.exe | 验证 scalblnf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/scalblnl.exe | 验证 scalblnl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/scalbn.exe | 验证 scalbn 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/scalbnf.exe | 验证 scalbnf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/scalbnl.exe | 验证 scalbnl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sincos.exe | 验证 sincos 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sincosf.exe | 验证 sincosf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sincosl.exe | 验证 sincosl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sin.exe | 验证 sin 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sinf.exe | 验证 sinf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sinh.exe | 验证 sinh 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sinhf.exe | 验证 sinhf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sinhl.exe | 验证 sinhl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sinl.exe | 验证 sinl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sqrt.exe | 验证 sqrt 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sqrtf.exe | 验证 sqrtf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/sqrtl.exe | 验证 sqrtl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tan.exe | 验证 tan 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tanf.exe | 验证 tanf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tanh.exe | 验证 tanh 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tanhf.exe | 验证 tanhf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tanhl.exe | 验证 tanhl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tanl.exe | 验证 tanl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tgamma.exe | 验证 tgamma 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tgammaf.exe | 验证 tgammaf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/tgammal.exe | 验证 tgammal 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/trunc.exe | 验证 trunc 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/truncf.exe | 验证 truncf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/truncl.exe | 验证 truncl 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/y0.exe | 验证 y0 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/y0f.exe | 验证 y0f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/y1.exe | 验证 y1 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/y1f.exe | 验证 y1f 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/yn.exe | 验证 yn 的数值正确性、边界值与特殊输入处理 | PASS |  |
| math | libc-test-bins/src/math/ynf.exe | 验证 ynf 的数值正确性、边界值与特殊输入处理 | PASS |  |
| musl | libc-test-bins/src/musl/pleval-static.exe | 验证 pleval 相关接口的兼容性与基本行为 | PASS |  |
| regression | libc-test-bins/src/regression/daemon-failure.exe | 回归用例：验证 daemon-failure 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/dn_expand-empty.exe | 回归用例：验证 dn_expand-empty 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/dn_expand-ptr-0.exe | 回归用例：验证 dn_expand-ptr-0 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/execle-env.exe | 回归用例：验证 execle-env 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/fflush-exit.exe | 回归用例：验证 fflush-exit 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/fgets-eof.exe | 回归用例：验证 fgets-eof 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/fgetwc-buffering.exe | 回归用例：验证 fgetwc-buffering 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/flockfile-list.exe | 回归用例：验证 flockfile-list 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/fpclassify-invalid-ld80.exe | 回归用例：验证 fpclassify-invalid-ld80 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/ftello-unflushed-append.exe | 回归用例：验证 ftello-unflushed-append 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/getpwnam_r-crash.exe | 回归用例：验证 getpwnam_r-crash 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/getpwnam_r-errno.exe | 回归用例：验证 getpwnam_r-errno 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/iconv-roundtrips.exe | 回归用例：验证 iconv-roundtrips 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/inet_ntop-v4mapped.exe | 回归用例：验证 inet_ntop-v4mapped 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/inet_pton-empty-last-field.exe | 回归用例：验证 inet_pton-empty-last-field 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/iswspace-null.exe | 回归用例：验证 iswspace-null 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/lrand48-signextend.exe | 回归用例：验证 lrand48-signextend 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/lseek-large.exe | 回归用例：验证 lseek-large 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/malloc-0.exe | 回归用例：验证 malloc-0 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/malloc-brk-fail.exe | 回归用例：验证 malloc-brk-fail 相关问题不再复现 | SKIP | Skipped by run script |
| regression | libc-test-bins/src/regression/malloc-oom.exe | 回归用例：验证 malloc-oom 相关问题不再复现 | SKIP | Skipped by run script |
| regression | libc-test-bins/src/regression/mbsrtowcs-overflow.exe | 回归用例：验证 mbsrtowcs-overflow 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/memmem-oob.exe | 回归用例：验证 memmem-oob 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/memmem-oob-read.exe | 回归用例：验证 memmem-oob-read 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/mkdtemp-failure.exe | 回归用例：验证 mkdtemp-failure 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/mkstemp-failure.exe | 回归用例：验证 mkstemp-failure 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/printf-1e9-oob.exe | 回归用例：验证 printf-1e9-oob 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/printf-fmt-g-round.exe | 回归用例：验证 printf-fmt-g-round 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/printf-fmt-g-zeros.exe | 回归用例：验证 printf-fmt-g-zeros 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/printf-fmt-n.exe | 回归用例：验证 printf-fmt-n 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread_atfork-errno-clobber.exe | 回归用例：验证 pthread_atfork-errno-clobber 相关问题不再复现 | FAIL | src/regression/pthread_atfork-errno-clobber.c:23: (pid = fork()) == -1 failed: fork succeeded despite rlimit<br>src/regression/pthread_atfork-errno-clobber.c:23: (pid = fork()) == -1 failed: fork succeeded despite rlimit |
| regression | libc-test-bins/src/regression/pthread_cancel-sem_wait.exe | 回归用例：验证 pthread_cancel-sem_wait 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread_condattr_setclock.exe | 回归用例：验证 pthread_condattr_setclock 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread_cond-smasher.exe | 回归用例：验证 pthread_cond-smasher 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread_cond_wait-cancel_ignored.exe | 回归用例：验证 pthread_cond_wait-cancel_ignored 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread_create-oom.exe | 回归用例：验证 pthread_create-oom 相关问题不再复现 | SKIP | Skipped by run script |
| regression | libc-test-bins/src/regression/pthread_exit-cancel.exe | 回归用例：验证 pthread_exit-cancel 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread_exit-dtor.exe | 回归用例：验证 pthread_exit-dtor 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread_once-deadlock.exe | 回归用例：验证 pthread_once-deadlock 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread-robust-detach.exe | 回归用例：验证 pthread-robust-detach 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/pthread_rwlock-ebusy.exe | 回归用例：验证 pthread_rwlock-ebusy 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/putenv-doublefree.exe | 回归用例：验证 putenv-doublefree 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/raise-race.exe | 回归用例：验证 raise-race 相关问题不再复现 | FAIL | src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 1)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 11)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 9)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 2)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 42)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 21)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 30)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 73)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 24)<br>src/regression/raise-race.c:40: lost signals: got 998, wanted 1000 (ischild 1 forks 81)<br>src/regression/raise-race.c:40: lost signals: got 998, wanted 1000 (ischild 1 forks 52)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 45)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 68)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 70)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 71)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 83)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 12)<br>src/regression/raise-race.c:40: lost signals: got 997, wanted 1000 (ischild 1 forks 31)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 59)<br>src/regression/raise-race.c:40: lost signals: got 999, wanted 1000 (ischild 1 forks 63)<br>src/regression/raise-race.c:40: lost signals: got 998, wanted 1000 (ischild 1 forks 87)<br>src/regression/raise-race.c:40: lost signals: got 998, wanted 1000 (ischild 1 forks 64)<br>src/regression/raise-race.c:40: lost signals: got 997[145.191820 0:13, wanted 1000 (ischild 1 forks 76)<br>src/regression/raise-race.c:40: lost signals: got 998, wanted 1000 (ischild 1 forks 92)<br>src/regression/raise-race.c:40: lost signals: got 998, wanted 1000 (ischild 1 forks 96) |
| regression | libc-test-bins/src/regression/regex-backref-0.exe | 回归用例：验证 regex-backref-0 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/regex-bracket-icase.exe | 回归用例：验证 regex-bracket-icase 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/regexec-nosub.exe | 回归用例：验证 regexec-nosub 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/regex-ere-backref.exe | 回归用例：验证 regex-ere-backref 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/regex-escaped-high-byte.exe | 回归用例：验证 regex-escaped-high-byte 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/regex-negated-range.exe | 回归用例：验证 regex-negated-range 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/rewind-clear-error.exe | 回归用例：验证 rewind-clear-error 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/rlimit-open-files.exe | 回归用例：验证 rlimit-open-files 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/scanf-bytes-consumed.exe | 回归用例：验证 scanf-bytes-consumed 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/scanf-match-literal-eof.exe | 回归用例：验证 scanf-match-literal-eof 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/scanf-nullbyte-char.exe | 回归用例：验证 scanf-nullbyte-char 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/sem_close-unmap.exe | 回归用例：验证 sem_close-unmap 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/setenv-oom.exe | 回归用例：验证 setenv-oom 相关问题不再复现 | SKIP | Skipped by run script |
| regression | libc-test-bins/src/regression/setvbuf-unget.exe | 回归用例：验证 setvbuf-unget 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/sigaltstack.exe | 回归用例：验证 sigaltstack 相关问题不再复现 | FAIL | src/regression/sigaltstack.c:28: ss_flags is not SS_ONSTACK in the signal handler |
| regression | libc-test-bins/src/regression/sigprocmask-internal.exe | 回归用例：验证 sigprocmask-internal 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/sigreturn.exe | 回归用例：验证 sigreturn 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/sscanf-eof.exe | 回归用例：验证 sscanf-eof 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/statvfs.exe | 回归用例：验证 statvfs 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/strverscmp.exe | 回归用例：验证 strverscmp 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/syscall-sign-extend.exe | 回归用例：验证 syscall-sign-extend 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/tls_get_new-dtv.exe | 回归用例：验证 tls_get_new-dtv 相关问题不再复现 | FAIL | src/regression/tls_get_new-dtv.c:32: mod = dlopen("tls_get_new-dtv_dso.so", RTLD_NOW) failed<br>src/regression/tls_get_new-dtv.c:18: f = dlsym(mod, "f") failed<br>src/regression/tls_get_new-dtv.c:18: f = dlsym(mod, "f") failed<br>src/regression/tls_get_new-dtv.c:18: f = dlsym(mod, "f") failed<br>src/regression/tls_get_new-dtv.c:18: f = dlsym(mod, "f") failed<br>src/regression/tls_get_new-dtv.c:18: f = dlsym(mod, "f") failed<br>src/regression/tls_get_new-dtv.c:18: f = dlsym(mod, "f") failed<br>src/regression/tls_get_new-dtv.c:18: f = dlsym(mod, "f") failed |
| regression | libc-test-bins/src/regression/uselocale-0.exe | 回归用例：验证 uselocale-0 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/wcsncpy-read-overflow.exe | 回归用例：验证 wcsncpy-read-overflow 相关问题不再复现 | PASS |  |
| regression | libc-test-bins/src/regression/wcsstr-false-negative.exe | 回归用例：验证 wcsstr-false-negative 相关问题不再复现 | PASS |  |
