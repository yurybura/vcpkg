vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Curve/rebind
    REF "v${VERSION}"
    SHA512 7c241b4f14b1727b74893fed82b3574479a96cac4ed754d707c643bc61f33924e423c4374bb508543617a55d9933c5755e3868e59b038fb649e89c1e93097642
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
