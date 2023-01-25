#pragma once
#include <Windows.h>
#include "macros.hpp"
#include "win32_structs.hpp"

win32::PPEB get_peb();
void* get_kernel32();
void* get_ntdll();
void* get_module( uint32_t hash );
void* get_function( void* module, uint32_t hash );