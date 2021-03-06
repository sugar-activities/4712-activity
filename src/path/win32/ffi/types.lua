LuaQ      @./src/path/win32/ffi/types.lua           r      A@   F@ €       δ@  $  FΑ@  \A @ ΑA  \A  @ ΑA Β \A  @ ΑA  \A  @ ΑA B \A  @ ΑA  \A  @ ΑA Β \A  J AC Α  IAC ΑΑ  IAC ΑA  IAC ΑΑ  IAC ΑA  IAC Α  IAC ΑΑ  IAC Α  IAC ΑA  IAC Α  I ΚΑ  $Β  Ι$        Ι$B                ΙΚΑ  G AB  ΙΙAΙή   !      require    ffi    C    cdef     static const int MAX_PATH = 260;
  typedef uint32_t DWORD;
  typedef char    CHAR;
  typedef wchar_t WCHAR;
  typedef uint32_t DEVICE_TYPE;
  typedef uint32_t ULONG;
  typedef void*    HANDLE;
  typedef void*    HLOCAL;
  typedef void*    LPVOID;
  typedef uint32_t BOOL;
       π?    // GET_FILEEX_INFO_LEVELS
  typedef enum _GET_FILEEX_INFO_LEVELS { 
    GetFileExInfoStandard,
    GetFileExMaxInfoLevel 
  } GET_FILEEX_INFO_LEVELS;
 x    // FILETIME
  typedef struct _FILETIME {
    DWORD dwLowDateTime;
    DWORD dwHighDateTime;
  } FILETIME, *PFILETIME;
 9   // WIN32_FILE_ATTRIBUTE_DATA
  typedef struct _WIN32_FILE_ATTRIBUTE_DATA {
    DWORD    dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD    nFileSizeHigh;
    DWORD    nFileSizeLow;
  } WIN32_FILE_ATTRIBUTE_DATA, *PWIN32_FILE_ATTRIBUTE_DATA;
    // WIN32_FIND_DATAA
  typedef struct _WIN32_FIND_DATAA {
    DWORD    dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD    nFileSizeHigh;
    DWORD    nFileSizeLow;
    DWORD    dwReserved0;
    DWORD    dwReserved1;
    CHAR     cFileName[MAX_PATH];
    CHAR     cAlternateFileName[14];
  } WIN32_FIND_DATAA, *PWIN32_FIND_DATAA;
    // WIN32_FIND_DATAW
  typedef struct _WIN32_FIND_DATAW {
    DWORD    dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD    nFileSizeHigh;
    DWORD    nFileSizeLow;
    DWORD    dwReserved0;
    DWORD    dwReserved1;
    WCHAR    cFileName[MAX_PATH];
    WCHAR    cAlternateFileName[14];
  } WIN32_FIND_DATAW, *PWIN32_FIND_DATAW;
 Τ    // STORAGE_DEVICE_NUMBER
  typedef struct _STORAGE_DEVICE_NUMBER {
    DEVICE_TYPE DeviceType;
    ULONG       DeviceNumber;
    ULONG       PartitionNumber;
  } STORAGE_DEVICE_NUMBER, *PSTORAGE_DEVICE_NUMBER;
    DWORD    typeof    PCHAR    CHAR*    PWCHAR    WCHAR* 	   VLA_CHAR    CHAR[?] 
   VLA_WCHAR 	   WCHAR[?]    WIN32_FILE_ATTRIBUTE_DATA 	   FILETIME    WIN32_FIND_DATAA    WIN32_FIND_DATAW    STORAGE_DEVICE_NUMBER    INVALID_HANDLE    cast    void*       πΏ   CTYPES 
   CTYPE2LUA           	       E      @@ε   \ΐ  Z@   Γ   ή           pcall    cdef                                         	         arg           ok          err             ffi                   ΐ  A          *     #pragma pack(push)
  #pragma pack(1)
        #pragma pack(pop)
                                  n           str                           A   @  @ΐ   Α  @  @  Z@      @Α W @  Aΐ     Mΐ      L ΐ  ϊ           π?   string    find                      @   sub                                                                                         str           pos               {           J@  @ I   Ζ@@ ΖΐA@ Α@’@ I  Ζ A ΖΐA Α@’@ I   Ζ@A ΖΐAA Α@’@ I  ΖΐA B ’@ I ^    	      dwFileAttributes    ftCreationTime    dwLowDateTime    dwHighDateTime    ftLastAccessTime    ftLastWriteTime 
   nFileSize    nFileSizeLow    nFileSizeHigh        {   |   |   }   }   }   }   }   }   }   ~   ~   ~   ~   ~   ~   ~                                                   s                          D   F ΐ    \   @Ζ@@  I^          WIN32_FILE_ATTRIBUTE_DATA 
   cFileName    string                                               s     
      res    
         c2lua    ffi               D   F ΐ    \   @@Δ  ΖΐΑ@ Δ  Ζ Α  DFAΑNΑά @ I ^          WIN32_FILE_ATTRIBUTE_DATA    cast    PCHAR 
   cFileName    string 	   MAX_PATH        @                                                                                  s           res          pstr 
         str             c2lua    ffi    CTYPES    C    ztrim r               	   	            )   )   +   +   +   0   +   +   2   2   2   7   2   2   9   9   9   B   9   9   D   D   D   Q   D   D   S   S   S   `   S   S   b   b   b   h   b   b   j   k   k   k   k   l   l   l   l   m   m   m   m   n   n   n   n   o   o   o   o   q   q   q   q   r   r   r   r   s   s   s   s   t   t   t   t   u   u   u   u   x   y                                                                                 ffi    q      C    q      pcdef    q      pack    q      ztrim    q      CTYPES X   q      c2lua Y   q      _M p   q       