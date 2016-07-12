/* Generated by Frama-C */
typedef int wchar_t;
typedef unsigned int size_t;
typedef int ssize_t;
typedef unsigned int gid_t;
typedef unsigned int uid_t;
typedef long off_t;
typedef int intptr_t;
typedef long time_t;
struct __anonstruct_fd_set_1 {
   char __fc_fd_set ;
};
typedef struct __anonstruct_fd_set_1 fd_set;
typedef unsigned int clock_t;
struct tm {
   int tm_sec ;
   int tm_min ;
   int tm_hour ;
   int tm_mday ;
   int tm_mon ;
   int tm_year ;
   int tm_wday ;
   int tm_yday ;
   int tm_isdst ;
};
struct option {
   char const *name ;
   int has_arg ;
   int *flag ;
   int val ;
};
typedef __builtin_va_list va_list;
typedef unsigned int ino_t;
typedef unsigned int blkcnt_t;
typedef unsigned int blksize_t;
typedef unsigned int dev_t;
typedef unsigned int mode_t;
typedef unsigned int nlink_t;
struct stat {
   dev_t st_dev ;
   ino_t st_ino ;
   mode_t st_mode ;
   nlink_t st_nlink ;
   uid_t st_uid ;
   gid_t st_gid ;
   dev_t st_rdev ;
   off_t st_size ;
   time_t st_atime ;
   time_t st_mtime ;
   time_t st_ctime ;
   blksize_t st_blksize ;
   blkcnt_t st_blocks ;
};
struct __fc_pos_t {
   unsigned long __fc_stdio_position ;
};
typedef struct __fc_pos_t fpos_t;
struct __fc_FILE {
   unsigned int __fc_stdio_id ;
   fpos_t __fc_position ;
   char __fc_error ;
   char __fc_eof ;
   int __fc_flags ;
   struct stat *__fc_inode ;
   unsigned char *__fc_real_data ;
   int __fc_real_data_max_size ;
};
typedef struct __fc_FILE FILE;
struct hdr {
   struct hdr *ptr ;
   unsigned int size ;
};
typedef struct hdr HEADER;
void laInit(void);

void laFree(void *ap);

void *laAlloc(int nbytes);

/*@
axiomatic MemCmp {
  logic ℤ memcmp{L1, L2}(char *s1, char *s2, ℤ n) 
    reads \at(*(s1+(0 .. n-1)),L1), \at(*(s2+(0 .. n-1)),L2);
  
  axiom memcmp_zero{L1, L2}:
    ∀ char *s1, char *s2;
    ∀ ℤ n;
      memcmp{L1, L2}(s1, s2, n) ≡ 0 ⇔
      (∀ ℤ i; 0 ≤ i < n ⇒ \at(*(s1+i),L1) ≡ \at(*(s2+i),L2));
  
  }
 */
/*@
axiomatic MemChr {
  logic 𝔹 memchr{L}(char *s, ℤ c, ℤ n) 
    reads *(s+(0 .. n-1));
  
  axiom memchr_def{L}:
    ∀ char *s;
    ∀ ℤ c;
    ∀ ℤ n;
      memchr(s, c, n) ≡ \true ⇔ (∃ int i; 0 ≤ i < n ∧ *(s+i) ≡ c);
  
  }
 */
/*@
axiomatic MemSet {
  logic 𝔹 memset{L}(char *s, ℤ c, ℤ n) 
    reads *(s+(0 .. n-1));
  
  axiom memset_def{L}:
    ∀ char *s;
    ∀ ℤ c;
    ∀ ℤ n;
      memset(s, c, n) ≡ \true ⇔ (∀ ℤ i; 0 ≤ i < n ⇒ *(s+i) ≡ c);
  
  }
 */
/*@
axiomatic StrLen {
  logic ℤ strlen{L}(char *s) 
    reads *(s+(0 ..));
  
  axiom strlen_pos_or_null{L}:
    ∀ char *s;
    ∀ ℤ i;
      0 ≤ i ∧ (∀ ℤ j; 0 ≤ j < i ⇒ *(s+j) ≢ '\000') ∧
      *(s+i) ≡ '\000' ⇒ strlen(s) ≡ i;
  
  axiom strlen_neg{L}:
    ∀ char *s; (∀ ℤ i; 0 ≤ i ⇒ *(s+i) ≢ '\000') ⇒ strlen(s) < 0;
  
  axiom strlen_before_null{L}:
    ∀ char *s;
    ∀ ℤ i; 0 ≤ i < strlen(s) ⇒ *(s+i) ≢ '\000';
  
  axiom strlen_at_null{L}:
    ∀ char *s; 0 ≤ strlen(s) ⇒ *(s+strlen(s)) ≡ '\000';
  
  axiom strlen_not_zero{L}:
    ∀ char *s;
    ∀ ℤ i; 0 ≤ i ≤ strlen(s) ∧ *(s+i) ≢ '\000' ⇒ i < strlen(s);
  
  axiom strlen_zero{L}:
    ∀ char *s;
    ∀ ℤ i;
      0 ≤ i ≤ strlen(s) ∧ *(s+i) ≡ '\000' ⇒ i ≡ strlen(s);
  
  axiom strlen_sup{L}:
    ∀ char *s;
    ∀ ℤ i; 0 ≤ i ∧ *(s+i) ≡ '\000' ⇒ 0 ≤ strlen(s) ≤ i;
  
  axiom strlen_shift{L}:
    ∀ char *s;
    ∀ ℤ i; 0 ≤ i ≤ strlen(s) ⇒ strlen(s+i) ≡ strlen(s)-i;
  
  axiom strlen_create{L}:
    ∀ char *s;
    ∀ ℤ i; 0 ≤ i ∧ *(s+i) ≡ '\000' ⇒ 0 ≤ strlen(s) ≤ i;
  
  axiom strlen_create_shift{L}:
    ∀ char *s;
    ∀ ℤ i;
    ∀ ℤ k;
      0 ≤ k ≤ i ∧ *(s+i) ≡ '\000' ⇒ 0 ≤ strlen(s+k) ≤ i-k;
  
  axiom memcmp_strlen_left{L}:
    ∀ char *s1, char *s2;
    ∀ ℤ n;
      memcmp{L, L}(s1, s2, n) ≡ 0 ∧ strlen(s1) < n ⇒
      strlen(s1) ≡ strlen(s2);
  
  axiom memcmp_strlen_right{L}:
    ∀ char *s1, char *s2;
    ∀ ℤ n;
      memcmp{L, L}(s1, s2, n) ≡ 0 ∧ strlen(s2) < n ⇒
      strlen(s1) ≡ strlen(s2);
  
  axiom memcmp_strlen_shift_left{L}:
    ∀ char *s1, char *s2;
    ∀ ℤ k, ℤ n;
      memcmp{L, L}(s1, s2+k, n) ≡ 0 ≤ k ∧ strlen(s1) < n ⇒
      0 ≤ strlen(s2) ≤ k+strlen(s1);
  
  axiom memcmp_strlen_shift_right{L}:
    ∀ char *s1, char *s2;
    ∀ ℤ k, ℤ n;
      memcmp{L, L}(s1+k, s2, n) ≡ 0 ≤ k ∧ strlen(s2) < n ⇒
      0 ≤ strlen(s1) ≤ k+strlen(s2);
  
  }
 */
/*@
axiomatic StrCmp {
  logic ℤ strcmp{L}(char *s1, char *s2) 
    reads *(s1+(0 .. strlen(s1))), *(s2+(0 .. strlen(s2)));
  
  axiom strcmp_zero{L}:
    ∀ char *s1, char *s2;
      strcmp(s1, s2) ≡ 0 ⇔
      strlen(s1) ≡ strlen(s2) ∧
      (∀ ℤ i; 0 ≤ i ≤ strlen(s1) ⇒ *(s1+i) ≡ *(s2+i));
  
  }
 */
/*@
axiomatic StrNCmp {
  logic ℤ strncmp{L}(char *s1, char *s2, ℤ n) 
    reads *(s1+(0 .. n-1)), *(s2+(0 .. n-1));
  
  axiom strncmp_zero{L}:
    ∀ char *s1, char *s2;
    ∀ ℤ n;
      strncmp(s1, s2, n) ≡ 0 ⇔
      (strlen(s1) < n ∧ strcmp(s1, s2) ≡ 0) ∨
      (∀ ℤ i; 0 ≤ i < n ⇒ *(s1+i) ≡ *(s2+i));
  
  }
 */
/*@
axiomatic StrChr {
  logic 𝔹 strchr{L}(char *s, ℤ c) 
    reads *(s+(0 .. strlen(s)));
  
  axiom strchr_def{L}:
    ∀ char *s;
    ∀ ℤ c;
      strchr(s, c) ≡ \true ⇔
      (∃ ℤ i; 0 ≤ i ≤ strlen(s) ∧ *(s+i) ≡ c);
  
  }
 */
/*@
axiomatic WcsLen {
  logic ℤ wcslen{L}(wchar_t *s) 
    reads *(s+(0 ..));
  
  axiom wcslen_pos_or_null{L}:
    ∀ wchar_t *s;
    ∀ ℤ i;
      0 ≤ i ∧ (∀ ℤ j; 0 ≤ j < i ⇒ *(s+j) ≢ 0) ∧ *(s+i) ≡ 0 ⇒
      wcslen(s) ≡ i;
  
  axiom wcslen_neg{L}:
    ∀ wchar_t *s; (∀ ℤ i; 0 ≤ i ⇒ *(s+i) ≢ 0) ⇒ wcslen(s) < 0;
  
  axiom wcslen_before_null{L}:
    ∀ wchar_t *s;
    ∀ int i; 0 ≤ i < wcslen(s) ⇒ *(s+i) ≢ 0;
  
  axiom wcslen_at_null{L}:
    ∀ wchar_t *s; 0 ≤ wcslen(s) ⇒ *(s+wcslen(s)) ≡ 0;
  
  axiom wcslen_not_zero{L}:
    ∀ wchar_t *s;
    ∀ int i; 0 ≤ i ≤ wcslen(s) ∧ *(s+i) ≢ 0 ⇒ i < wcslen(s);
  
  axiom wcslen_zero{L}:
    ∀ wchar_t *s;
    ∀ int i; 0 ≤ i ≤ wcslen(s) ∧ *(s+i) ≡ 0 ⇒ i ≡ wcslen(s);
  
  axiom wcslen_sup{L}:
    ∀ wchar_t *s;
    ∀ int i; 0 ≤ i ∧ *(s+i) ≡ 0 ⇒ 0 ≤ wcslen(s) ≤ i;
  
  axiom wcslen_shift{L}:
    ∀ wchar_t *s;
    ∀ int i; 0 ≤ i ≤ wcslen(s) ⇒ wcslen(s+i) ≡ wcslen(s)-i;
  
  axiom wcslen_create{L}:
    ∀ wchar_t *s;
    ∀ int i; 0 ≤ i ∧ *(s+i) ≡ 0 ⇒ 0 ≤ wcslen(s) ≤ i;
  
  axiom wcslen_create_shift{L}:
    ∀ wchar_t *s;
    ∀ int i;
    ∀ int k; 0 ≤ k ≤ i ∧ *(s+i) ≡ 0 ⇒ 0 ≤ wcslen(s+k) ≤ i-k;
  
  }
 */
/*@
axiomatic WcsCmp {
  logic ℤ wcscmp{L}(wchar_t *s1, wchar_t *s2) 
    reads *(s1+(0 .. wcslen(s1))), *(s2+(0 .. wcslen(s2)));
  
  axiom wcscmp_zero{L}:
    ∀ wchar_t *s1, wchar_t *s2;
      wcscmp(s1, s2) ≡ 0 ⇔
      wcslen(s1) ≡ wcslen(s2) ∧
      (∀ ℤ i; 0 ≤ i ≤ wcslen(s1) ⇒ *(s1+i) ≡ *(s2+i));
  
  }
 */
/*@
axiomatic WcsNCmp {
  logic ℤ wcsncmp{L}(wchar_t *s1, wchar_t *s2, ℤ n) 
    reads *(s1+(0 .. n-1)), *(s2+(0 .. n-1));
  
  axiom wcsncmp_zero{L}:
    ∀ wchar_t *s1, wchar_t *s2;
    ∀ ℤ n;
      wcsncmp(s1, s2, n) ≡ 0 ⇔
      (wcslen(s1) < n ∧ wcscmp(s1, s2) ≡ 0) ∨
      (∀ ℤ i; 0 ≤ i < n ⇒ *(s1+i) ≡ *(s2+i));
  
  }
 */
/*@ logic ℤ minimum(ℤ i, ℤ j) = i<j? i: j;
 */
/*@ logic ℤ maximum(ℤ i, ℤ j) = i<j? j: i;
 */
/*@
predicate valid_string{L}(char *s) =
  0 ≤ strlen(s) ∧ \valid(s+(0 .. strlen(s)));
 */
/*@
predicate valid_read_string{L}(char *s) =
  0 ≤ strlen(s) ∧ \valid_read(s+(0 .. strlen(s)));
 */
/*@
predicate valid_string_or_null{L}(char *s) = s ≡ \null ∨ valid_string(s);
 */
/*@
predicate valid_wstring{L}(wchar_t *s) =
  0 ≤ wcslen(s) ∧ \valid(s+(0 .. wcslen(s)));
 */
/*@
predicate valid_wstring_or_null{L}(wchar_t *s) =
  s ≡ \null ∨ valid_wstring(s);
 */
/*@ assigns *fdset;
    assigns *fdset \from *fdset, fd; */
extern void FD_CLR(int fd, fd_set *fdset);

/*@ assigns \nothing; */
extern int FD_ISSET(int fd, fd_set *fdset);

/*@ assigns *fdset;
    assigns *fdset \from *fdset, fd; */
extern void FD_SET(int fd, fd_set *fdset);

/*@ assigns *fdset;
    assigns *fdset \from \nothing; */
extern void FD_ZERO(fd_set *fdset);

/*@ ghost unsigned int volatile __fc_time __attribute__((__FRAMA_C_MODEL__));
  */
/*@ assigns \result;
    assigns \result \from __fc_time; */
extern clock_t clock(void);

/*@ assigns \result;
    assigns \result \from time1, time0; */
extern double difftime(time_t time1, time_t time0);

/*@ assigns *timeptr, \result;
    assigns *timeptr \from *timeptr;
    assigns \result \from *timeptr;
 */
extern time_t mktime(struct tm *timeptr);

/*@ assigns *timer, \result;
    assigns *timer \from __fc_time;
    assigns \result \from __fc_time;
    
    behavior null:
      assumes timer ≡ \null;
      assigns \result;
      assigns \result \from __fc_time;
    
    behavior not_null:
      assumes timer ≢ \null;
      requires \valid(timer);
      ensures \initialized(\old(timer));
      assigns *timer, \result;
      assigns *timer \from __fc_time;
      assigns \result \from __fc_time;
    
    complete behaviors not_null, null;
    disjoint behaviors not_null, null;
 */
extern time_t time(time_t *timer);

struct tm __fc_time_tm;
struct tm * const __p_fc_time_tm = & __fc_time_tm;
/*@ ensures \result ≡ &__fc_time_tm ∨ \result ≡ \null;
    assigns \result, __fc_time_tm;
    assigns \result \from __p_fc_time_tm;
    assigns __fc_time_tm \from *timer;
 */
extern struct tm *gmtime(time_t const *timer);

/*@ ensures \result ≡ &__fc_time_tm ∨ \result ≡ \null;
    assigns \result, __fc_time_tm;
    assigns \result \from __p_fc_time_tm;
    assigns __fc_time_tm \from *timer;
 */
extern struct tm *localtime(time_t const *timer);

extern char *optarg;

extern int optind;

extern int opterr;

extern int optopt;

/*@ assigns \result, *optarg, optind, opterr, optopt;
    assigns \result \from argc, *(argv+(0 .. argc-1)), *(optstring+(0 ..));
    assigns *optarg \from argc, *(argv+(0 .. argc-1)), *(optstring+(0 ..));
    assigns optind \from argc, *(argv+(0 .. argc-1)), *(optstring+(0 ..));
    assigns opterr \from argc, *(argv+(0 .. argc-1)), *(optstring+(0 ..));
    assigns optopt \from argc, *(argv+(0 .. argc-1)), *(optstring+(0 ..));
 */
extern int getopt(int argc, char * const *argv, char const *optstring);

/*@ assigns \result, *optarg, optind, opterr, optopt,
            *((longopts+(0 ..))->flag);
    assigns \result
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns *optarg
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns optind
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns opterr
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns optopt
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns *((longopts+(0 ..))->flag)
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
 */
extern int getopt_long(int argc, char * const *argv, char const *shortopts,
                       struct option const *longopts, int *longind);

/*@ assigns \result, *optarg, optind, opterr, optopt,
            *((longopts+(0 ..))->flag);
    assigns \result
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns *optarg
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns optind
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns opterr
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns optopt
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
    assigns *((longopts+(0 ..))->flag)
      \from argc, *(argv+(0 .. argc-1)), *(shortopts+(0 ..)),
            *(longopts+(0 ..));
 */
extern int getopt_long_only(int argc, char * const *argv,
                            char const *shortopts,
                            struct option const *longopts, int *longind);

/*@ ghost int __fc_fds[1024]; */
/*@ requires 0 ≤ fd < 1024;
    ensures \result ≡ 0 ∨ \result ≡ -1;
    assigns \result, __fc_fds[fd];
    assigns \result \from fd, __fc_fds[fd];
    assigns __fc_fds[fd] \from fd, __fc_fds[fd];
 */
extern int close(int fd);

/*@ requires arg ≢ \null;
    requires valid_read_string(path);
    requires valid_read_string(arg);
    assigns \result;
    assigns \result \from *(path+(0 ..)), *(arg+(0 ..));
 */
extern int execl(char const *path, char const *arg , ...);

/*@ requires arg ≢ \null;
    requires valid_read_string(path);
    requires valid_read_string(arg);
    assigns \result;
    assigns \result \from *(path+(0 ..)), *(arg+(0 ..));
 */
extern int execle(char const *path, char const *arg , ...);

/*@ requires arg ≢ \null;
    requires valid_read_string(path);
    requires valid_read_string(arg);
    assigns \result;
    assigns \result \from *(path+(0 ..)), *(arg+(0 ..));
 */
extern int execlp(char const *path, char const *arg , ...);

/*@ requires *(argv+0) ≢ \null;
    requires valid_read_string(path);
    requires valid_read_string(*(argv+0));
    assigns \result;
    assigns \result \from *(path+(0 ..)), *(argv+(0 ..));
 */
extern int execv(char const *path, char * const *argv);

/*@ requires *(argv+0) ≢ \null;
    requires valid_read_string(path);
    requires valid_read_string(*(argv+0));
    assigns \result;
    assigns \result \from *(path+(0 ..)), *(argv+(0 ..));
 */
extern int execve(char const *path, char * const *argv, char * const *env);

/*@ requires *(argv+0) ≢ \null;
    requires valid_read_string(path);
    requires valid_read_string(*(argv+0));
    assigns \result;
    assigns \result \from *(path+(0 ..)), *(argv+(0 ..));
 */
extern int execvp(char const *path, char * const *argv);

/*@ assigns \result;
    assigns \result \from \nothing; */
extern uid_t getuid(void);

/*@ requires 0 ≤ fd < 1024;
    requires \valid((char *)buf+(0 .. count-1));
    ensures (0 ≤ \result ≤ \old(count)) ∨ \result ≡ -1;
    ensures \initialized((char *)\old(buf)+(0 .. \result-1));
    assigns \result, *((char *)buf+(0 .. count-1)), __fc_fds[fd];
    assigns \result \from __fc_fds[fd], count;
    assigns *((char *)buf+(0 .. count-1)) \from __fc_fds[fd], count;
    assigns __fc_fds[fd] \from __fc_fds[fd], count;
 */
extern ssize_t read(int fd, void *buf, size_t count);

extern void *sbrk(intptr_t);

/*@ requires 0 ≤ fd < 1024;
    requires \valid_read((char *)buf+(0 .. count-1));
    ensures -1 ≤ \result ≤ \old(count);
    assigns \result, __fc_fds[fd];
    assigns \result \from fd, count, __fc_fds[fd];
    assigns __fc_fds[fd] \from fd, count, __fc_fds[fd];
 */
extern ssize_t write(int fd, void const *buf, size_t count);

extern int __FC_errno;

extern FILE *__fc_stdin;

extern FILE *__fc_stdout;

/*@ assigns \nothing; */
extern int remove(char const *filename);

/*@ assigns \nothing; */
extern int rename(char const *old_name, char const *new_name);

/*@ ensures
      \result ≡ \null ∨
      (\valid(\result) ∧ \fresh{Old, Here}(\result,sizeof(FILE)));
    assigns \nothing;
 */
extern FILE *tmpfile(void);

/*@ assigns \result, *(s+(..));
    assigns \result \from *(s+(..));
    assigns *(s+(..)) \from \nothing;
 */
extern char *tmpnam(char *s);

/*@ requires \valid(stream);
    ensures \result ≡ 0 ∨ \result ≡ -1;
    assigns \result;
    assigns \result \from stream, stream->__fc_stdio_id;
 */
extern int fclose(FILE *stream);

/*@ requires stream ≡ \null ∨ \valid_read(stream);
    ensures \result ≡ 0 ∨ \result ≡ -1;
    assigns \result;
    assigns \result \from stream, stream->__fc_stdio_id;
 */
extern int fflush(FILE *stream);

FILE __fc_fopen[512];
FILE * const __p_fc_fopen = __fc_fopen;
/*@ ensures \result ≡ \null ∨ \subset(\result, &__fc_fopen[0 .. 512-1]);
    assigns \result;
    assigns \result \from *(filename+(..)), *(mode+(..)), __p_fc_fopen;
 */
extern FILE *fopen(char const *filename, char const *mode);

/*@ ensures
      \result ≡ \null ∨
      (\valid(\result) ∧ \fresh{Old, Here}(\result,sizeof(FILE)));
    assigns \result;
    assigns \result \from fildes, *(mode+(..));
 */
extern FILE *fdopen(int fildes, char const *mode);

/*@ ensures \result ≡ \null ∨ \result ≡ \old(stream);
    assigns *stream;
 */
extern FILE *freopen(char const *filename, char const *mode, FILE *stream);

/*@ assigns *stream;
    assigns *stream \from buf; */
extern void setbuf(FILE *stream, char *buf);

/*@ assigns *stream;
    assigns *stream \from buf, mode, size; */
extern int setvbuf(FILE *stream, char *buf, int mode, size_t size);

/*@ assigns *stream;
    assigns *stream \from stream->__fc_stdio_id; */
extern int fprintf(FILE *stream, char const *format , ...);

/*@ assigns *stream;
    assigns *stream \from stream->__fc_stdio_id; */
extern int fscanf(FILE *stream, char const *format , ...);

/*@ assigns *__fc_stdout;
    assigns *__fc_stdout \from *(format+(..)); */
extern int printf(char const *format , ...);

/*@ assigns *__fc_stdin; */
extern int scanf(char const *format , ...);

/*@ assigns *(s+(0 .. n-1)); */
extern int snprintf(char *s, size_t n, char const *format , ...);

/*@ assigns *(s+(0 ..)); */
extern int sprintf(char *s, char const *format , ...);

/*@ assigns *stream;
    assigns *stream \from *(format+(..)), arg; */
extern int vfprintf(FILE *stream, char const *format, va_list arg);

/*@ assigns *stream;
    assigns *stream \from *(format+(..)), *stream; */
extern int vfscanf(FILE *stream, char const *format, va_list arg);

/*@ assigns *__fc_stdout;
    assigns *__fc_stdout \from arg; */
extern int vprintf(char const *format, va_list arg);

/*@ assigns *__fc_stdin;
    assigns *__fc_stdin \from *(format+(..)); */
extern int vscanf(char const *format, va_list arg);

/*@ assigns *(s+(0 .. n-1));
    assigns *(s+(0 .. n-1)) \from *(format+(..)), arg;
 */
extern int vsnprintf(char *s, size_t n, char const *format, va_list arg);

/*@ assigns *(s+(0 ..));
    assigns *(s+(0 ..)) \from *(format+(..)), arg; */
extern int vsprintf(char *s, char const *format, va_list arg);

/*@ assigns *stream; */
extern int fgetc(FILE *stream);

/*@ ensures \result ≡ \null ∨ \result ≡ \old(s);
    assigns *(s+(0 .. n-1)), *stream, \result;
    assigns *(s+(0 .. n-1)) \from *stream;
    assigns *stream \from *stream;
    assigns \result \from s, n, *stream;
 */
extern char *fgets(char *s, int n, FILE *stream);

/*@ assigns *stream; */
extern int fputc(int c, FILE *stream);

/*@ assigns *stream;
    assigns *stream \from *(s+(..)); */
extern int fputs(char const *s, FILE *stream);

/*@ assigns \result, *stream;
    assigns \result \from *stream;
    assigns *stream \from *stream;
 */
extern int getc(FILE *stream);

/*@ assigns \result;
    assigns \result \from *__fc_stdin; */
extern int getchar(void);

/*@ ensures \result ≡ \old(s) ∨ \result ≡ \null;
    assigns *(s+(..)), \result;
    assigns *(s+(..)) \from *__fc_stdin;
    assigns \result \from s, __fc_stdin;
 */
extern char *gets(char *s);

/*@ assigns *stream;
    assigns *stream \from c; */
extern int putc(int c, FILE *stream);

/*@ assigns *__fc_stdout;
    assigns *__fc_stdout \from c; */
extern int putchar(int c);

/*@ assigns *__fc_stdout;
    assigns *__fc_stdout \from *(s+(..)); */
extern int puts(char const *s);

/*@ assigns *stream;
    assigns *stream \from c; */
extern int ungetc(int c, FILE *stream);

/*@ requires \valid((char *)ptr+(0 .. nmemb*size-1));
    requires \valid(stream);
    ensures \result ≤ \old(nmemb);
    ensures \initialized((char *)\old(ptr)+(0 .. \result*\old(size)-1));
    assigns *((char *)ptr+(0 .. nmemb*size-1)), \result;
    assigns *((char *)ptr+(0 .. nmemb*size-1)) \from size, nmemb, *stream;
    assigns \result \from size, *stream;
 */
extern size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream);

/*@ requires \valid_read((char *)ptr+(0 .. nmemb*size-1));
    requires \valid(stream);
    ensures \result ≤ \old(nmemb);
    assigns *stream, \result;
    assigns *stream \from *((char *)ptr+(0 .. nmemb*size-1));
    assigns \result \from *((char *)ptr+(0 .. nmemb*size-1));
 */
extern size_t fwrite(void const *ptr, size_t size, size_t nmemb, FILE *stream);

/*@ assigns *pos;
    assigns *pos \from *stream; */
extern int fgetpos(FILE *stream, fpos_t *pos);

/*@ assigns *stream, __FC_errno;
    assigns *stream \from offset, whence; */
extern int fseek(FILE *stream, long offset, int whence);

/*@ assigns *stream;
    assigns *stream \from *pos; */
extern int fsetpos(FILE *stream, fpos_t const *pos);

/*@ assigns \result, __FC_errno;
    assigns \result \from *stream;
    assigns __FC_errno \from *stream;
 */
extern long ftell(FILE *stream);

/*@ assigns *stream;
    assigns *stream \from \nothing; */
extern void rewind(FILE *stream);

/*@ assigns *stream;
    assigns *stream \from \nothing; */
extern void clearerr(FILE *stream);

/*@ assigns \result;
    assigns \result \from *stream; */
extern int feof(FILE *stream);

/*@ assigns \result;
    assigns \result \from *stream; */
extern int fileno(FILE *stream);

/*@ assigns *stream;
    assigns *stream \from \nothing; */
extern void flockfile(FILE *stream);

/*@ assigns *stream;
    assigns *stream \from \nothing; */
extern void funlockfile(FILE *stream);

/*@ assigns \result, *stream;
    assigns \result \from \nothing;
    assigns *stream \from \nothing;
 */
extern int ftrylockfile(FILE *stream);

/*@ assigns \result;
    assigns \result \from *stream; */
extern int ferror(FILE *stream);

/*@ assigns __fc_stdout;
    assigns __fc_stdout \from __FC_errno, *(s+(..)); */
extern void perror(char const *s);

/*@ assigns \result, *stream;
    assigns \result \from *stream;
    assigns *stream \from *stream;
 */
extern int getc_unlocked(FILE *stream);

/*@ assigns \result;
    assigns \result \from *__fc_stdin; */
extern int getchar_unlocked(void);

/*@ assigns *stream;
    assigns *stream \from c; */
extern int putc_unlocked(int c, FILE *stream);

/*@ assigns *__fc_stdout;
    assigns *__fc_stdout \from c; */
extern int putchar_unlocked(int c);

/*@ assigns *stream;
    assigns *stream \from \nothing; */
extern void clearerr_unlocked(FILE *stream);

/*@ assigns \result;
    assigns \result \from *stream; */
extern int feof_unlocked(FILE *stream);

/*@ assigns \result;
    assigns \result \from *stream; */
extern int ferror_unlocked(FILE *stream);

/*@ assigns \result;
    assigns \result \from *stream; */
extern int fileno_unlocked(FILE *stream);

HEADER _heapstart = {.ptr = (struct hdr *)0, .size = (unsigned int)0};
HEADER _heapend = {.ptr = (struct hdr *)0, .size = (unsigned int)0};
void warm_boot(char *str)
{
  printf("%s\n",str);
  return;
}

HEADER *frhd;
static short memleft;
void laFree(void *ap)
{
  HEADER *nxt;
  HEADER *prev;
  HEADER *f;
  f = (HEADER *)ap - 1;
  memleft = (short)((unsigned int)memleft + f->size);
  if (frhd > f) {
    nxt = frhd;
    frhd = f;
    prev = f + f->size;
    if (prev == nxt) {
      f->size += nxt->size;
      f->ptr = nxt->ptr;
    }
    else f->ptr = nxt;
    goto return_label;
  }
  prev = (HEADER *)0;
  nxt = frhd;
  while (1) {
    if (nxt) {
      if (! (nxt < f)) break;
    }
    else break;
    if (nxt + nxt->size == f) {
      nxt->size += f->size;
      f = nxt + nxt->size;
      if (f == nxt->ptr) {
        nxt->size += f->size;
        nxt->ptr = f->ptr;
      }
      goto return_label;
    }
    prev = nxt;
    nxt = nxt->ptr;
  }
  prev->ptr = f;
  prev = f + f->size;
  if (prev == nxt) {
    f->size += nxt->size;
    f->ptr = nxt->ptr;
  }
  else f->ptr = nxt;
  return_label: return;
}

void *laAlloc(int nbytes)
{
  void *__retres;
  HEADER *nxt;
  HEADER *prev;
  int nunits;
  nunits = (int)((((unsigned int)nbytes + sizeof(HEADER)) - (unsigned int)1) / sizeof(HEADER) + (unsigned int)1);
  prev = (HEADER *)0;
  nxt = frhd;
  while (nxt) {
    if (nxt->size >= (unsigned int)nunits) {
      if (nxt->size > (unsigned int)nunits) {
        nxt->size -= (unsigned int)nunits;
        nxt += nxt->size;
        nxt->size = (unsigned int)nunits;
      }
      else 
        if (prev == (HEADER *)0) frhd = nxt->ptr; else prev->ptr = nxt->ptr;
      memleft = (short)((int)memleft - nunits);
      __retres = (void *)(nxt + 1);
      goto return_label;
    }
    prev = nxt;
    nxt = nxt->ptr;
  }
  warm_boot((char *)"Allocation Failed!");
  __retres = (void *)0;
  return_label: return __retres;
}

void laInit(void)
{
  _heapstart.ptr = (struct hdr *)sbrk(0xFF50);
  _heapend.ptr = (struct hdr *)sbrk(0);
  frhd = _heapstart.ptr;
  frhd->ptr = (struct hdr *)0;
  frhd->size = (unsigned int)((char *)_heapend.ptr - (char *)_heapstart.ptr) / sizeof(HEADER);
  memleft = (short)frhd->size;
  return;
}

/*@ type cty = HEADER *;
 */
/*@ logic cty cbe{L}= _heapstart.ptr;
 */
/*@ logic cty cen{L}= _heapend.ptr;
 */
/*@ logic ℤ csz{L}(cty x) = \at(x->size*sizeof(HEADER),L);
 */
/*@ logic cty fbe{L}= frhd;
 */
/*@ logic cty fen= \null;
 */
/*@ logic cty fn{L}(cty x) = \at(x->ptr,L);
 */
/*@ logic char * malloc= "laAlloc";
 */
/*@ logic char * minit= "laInit";
 */
/*@ logic char * free= "laFree";

*/
int main(void)
{
  int __retres;
  void *man;
  void *p1;
  void *p2;
  laInit();
  man = (void *)0;
  p1 = laAlloc(20);
  laAlloc(20);
  p2 = laAlloc(20);
  laAlloc(20);
  laFree(p1);
  laFree(p2);
  __retres = 0;
  return __retres;
}


