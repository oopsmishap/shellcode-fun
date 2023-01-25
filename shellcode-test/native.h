#pragma once
#include <stdint.h>

#include "native_structs.h"

namespace native
{
    __forceinline PPEB get_peb()
    {
#if defined(_WIN64)
        return ( PPEB )__readgsqword( 0x60 );
#else
        return ( PPEB )__readfsdword( 0x30 );
#endif
    }

    // get address of a loaded module
    void* find_module( uint32_t hash )
    {

        auto peb = get_peb();

        // get pointer to first module in load order list
        auto curr_mod = ( PLDR_DATA_TABLE_ENTRY )peb->Ldr->InLoadOrderModuleList.Flink;

        // save pointer of first module in list to check later to see if we've gone through the entire list
        auto first_mod = curr_mod;

        // simple loop going through linked list, hashing the name and comparing with func input
        do
        {
            // if runtime hash == precomputed hash return baseaddress of module
            if( r_hash( ( wchar_t* )curr_mod->BaseDllName.Buffer ) == hash )
                return curr_mod->BaseAddress;

            // if hash did not match go to next entry in linked list
            curr_mod = ( PLDR_DATA_TABLE_ENTRY )curr_mod->InLoadOrderModuleList.Flink;
        }
        while( curr_mod && curr_mod != first_mod );

        return nullptr;
    }

    // inline function to get address of ntdll.dll
    __forceinline void* find_ntdll()
    {
        auto peb = get_peb();

        // get address to 1st module in list, ntdll.dll
        auto ntdll = *( uintptr_t* )&peb->Ldr->InMemoryOrderModuleList;

        // return BaseAdress from LDR_DATA_TABLE
        return *( void** )( ntdll + 0x20 );
    }

    // inline function to get address of kernel32.dll
    __forceinline void* find_kernel32()
    {
        // get pointer to PEB structure
        auto peb = get_peb();

        // get address to 3rd module in list, kernel32.dll
        // output in asm:
        // mov rcx, QWORD PTR[ rax + 24 ]
        // mov rax, QWORD PTR[ rcx + 32 ]
        // mov rcx, QWORD PTR[ rax ]
        // mov rcx, QWORD PTR[ rcx ]
        //
        auto kernel32 = ***( uintptr_t*** )&peb->Ldr->InInitializationOrderModuleList;

        // return BaseAdress from LDR_DATA_TABLE
        return *( void** )( kernel32 + 0x20 );
    }

    // inline function to get address of kernel32.dll
    __forceinline void* find_kernel32_32()
    {
        // get pointer to PEB structure
        auto peb = get_peb();

        // get address to 3rd module in list, kernel32.dll
        // output in asm:
        // mov rcx, QWORD PTR[ rax + 24 ]
        // mov rax, QWORD PTR[ rcx + 32 ]
        // mov rcx, QWORD PTR[ rax ]
        // mov rcx, QWORD PTR[ rcx ]
        //
        auto kernel32 = ***( uintptr_t*** )&peb->Ldr->InInitializationOrderModuleList;

        // return BaseAdress from LDR_DATA_TABLE
        return *( void** )( kernel32 + 0x8 );
    }

    inline void* find_function( void* mod, uint32_t hash )
    {
        // get export directory from DOS Header -> NT Header -> Optional Header
        auto dos = ( IMAGE_DOS_HEADER* )mod;
        auto nt_hdr = ( IMAGE_NT_HEADERS* )( ( uint8_t* )mod + dos->e_lfanew );
        auto exports = &( nt_hdr->OptionalHeader.DataDirectory[ IMAGE_DIRECTORY_ENTRY_EXPORT ] );

        // get virtual address from directory header and add it to image base to get pointer to export directory
        auto exports_dir = ( IMAGE_EXPORT_DIRECTORY* )( exports->VirtualAddress + ( uint8_t* )mod );

        // loop through export directory using NumberOfNames
        for( uint32_t i = 0; i < exports_dir->NumberOfNames; i++ )
        {
            // get the rva of the module names
            uint32_t name_rva = *( uint32_t* )( exports_dir->AddressOfNames + ( uint8_t* )mod + i * sizeof( uint32_t ) );

            // resolve rva of module name and hash the string, compare with input hash
            if( r_hash( ( char* )( name_rva + ( uint8_t* )mod ) ) == hash )
            {
                // get the export function rva 
                uint16_t name_idx = *( uint16_t* )( exports_dir->AddressOfNameOrdinals + ( uint8_t* )mod + i * sizeof( uint16_t ) );
                uint32_t func_rva = *( uint32_t* )( exports_dir->AddressOfFunctions + ( uint8_t* )mod + name_idx * sizeof( uint32_t ) );

                // resolve and return the address of the function within the module
                return ( uint8_t* )mod + func_rva;
            }
        }

        return nullptr;
    }

}