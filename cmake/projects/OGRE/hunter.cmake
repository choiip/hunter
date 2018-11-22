# Copyright (c) 2016-2018, Alex Choi
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    OGRE
    VERSION
    1.11.5
    URL
    "https://github.com/choiip/ogre/archive/tcl.patch.tar.gz"
    SHA1
    cd10774b0ac5b555a98a6b6dc5997a5ec09ec630
)

hunter_add_version(
    PACKAGE_NAME
    OGRE
    VERSION
    1.11.4
    URL
    "https://github.com/OGRECave/ogre/archive/v1.11.4.tar.gz"
    SHA1
    1134492c0bb54074d291b2cca0d8993808269eba
)

hunter_cmake_args(
    OpenCV
    CMAKE_ARGS
        OGRE_BUILD_SAMPLES=OFF
        OGRE_BUILD_COMPONENT_JAVA=OFF
)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(OGRE)
hunter_download(PACKAGE_NAME OGRE)
