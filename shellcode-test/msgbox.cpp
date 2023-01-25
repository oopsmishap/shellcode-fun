#include <Windows.h>
#include "hash.h"
#include "native.h"

// function prototypes
using message_box_fn = int( __stdcall* )( HWND, const char*, const char*, UINT );
using load_library_fn = void* ( __stdcall* )( const char* );

void main2()
{
    // compute needed hashes at compile time
    constexpr auto loadlib = c_hash( "LoadLibraryA" );
    constexpr auto msgbox = c_hash( "MessageBoxA" );

    // get the kernel32 module, then using that find LoadLibraryA function address
    load_library_fn load_library = ( load_library_fn )native::find_function( native::find_kernel32(), loadlib );

    // load user32.dll, then find MessageBoxA within the loaded dll
    message_box_fn message_box = ( message_box_fn )native::find_function( load_library( "user32.dll" ), msgbox );

    // display a message box
    message_box( 0, "foo", "bar", MB_OK);
}