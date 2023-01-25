#pragma once
#include <stdint.h>

// http://www.cse.yorku.ca/~oz/hash.html
// hash function based on djb2

// compile-time hash
template< typename T >
uint32_t constexpr c_hash( const T* str )
{
    uint32_t hash = 5381;
    while( uint32_t c = *str++ )
        hash = ( hash * 33 ) ^ c;
    return hash;
}

// runtime hash
template< typename T >
inline uint32_t r_hash( T* str )
{
    uint32_t hash = 5381;
    while( uint32_t c = *str++ )
        hash = ( hash * 33 ) ^ c;
    return hash;
}
