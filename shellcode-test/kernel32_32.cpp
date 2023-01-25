#include <Windows.h>
#include "hash.h"
#include "native.h"

//#include <stdio.h>

// function prototypes
using winexec_fn = void* ( __stdcall* )( const char*, uint32_t );

void main()
{
    // compute needed hashes at compile time
    constexpr auto winexec = c_hash( "WinExec" );

    // get the kernel32 module, then using that find LoadLibraryA function address
    auto win_exec = ( winexec_fn )native::find_function( native::find_kernel32_32(), winexec );

    win_exec( "calc", 0 );

    return;
}