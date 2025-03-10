# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/compat
    REF boost-${VERSION}
    SHA512 ae81f5d4fd7f552eaf390da2d4e8557273229126bab4e8d1cd029eed35813b4f19c8e51ac4702116f551c1c1b15a6971de8ec5ff75b9449620dd6caf196a6b3e
    HEAD_REF master
)

set(FEATURE_OPTIONS "")
boost_configure_and_install(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)
