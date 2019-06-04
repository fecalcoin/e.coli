// Copyright (c) 2014-2016 The Bitcoin Core developers
// Copyright (c) 2017 The Fecal E.coli developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef FECAL_CRYPTO_SHA1_H
#define FECAL_CRYPTO_SHA1_H

#include <stdint.h>
#include <stdlib.h>

/** A hasher class for SHA1. */
class CSHA1
{
private:
    uint32_t s[5];
    unsigned char buf[64];
    uint64_t bytes;

public:
    static const size_t OUTPUT_SIZE = 20;

    CSHA1();
    CSHA1& Write(const unsigned char* data, size_t len);
    void Finalize(unsigned char hash[OUTPUT_SIZE]);
    CSHA1& Reset();
};

#endif // FECAL_CRYPTO_SHA1_H
