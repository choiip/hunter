# By Alex Choi, 2018

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    ZZip
    VERSION
    "0.13.69"
    URL
    "https://github.com/gdraheim/zziplib/archive/v0.13.69.tar.gz"
    SHA1
    1644c03fbc95f33decaaa04b5fb1e83d6bea2dfc
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(ZZip)
hunter_download(PACKAGE_NAME ZZip)
