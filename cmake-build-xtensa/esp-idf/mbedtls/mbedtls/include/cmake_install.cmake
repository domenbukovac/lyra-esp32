# Install script for directory: /Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aes.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aesni.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/arc4.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/aria.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/base64.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/blowfish.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/bn_mul.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/certs.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cipher_internal.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/compat-1.3.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/config.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/debug.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/des.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ecp_internal.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/entropy_poll.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/error.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/havege.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md2.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md4.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md5.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/md_internal.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/oid.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/padlock.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pem.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pk_internal.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs11.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/rsa_internal.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_internal.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/threading.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/timing.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/version.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    "/Users/domenbukovac/esp/esp-idf/components/mbedtls/mbedtls/include/mbedtls/xtea.h"
    )
endif()

