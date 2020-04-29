FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_plilly-a20 = "file://0001-Add-dts-and-defconfig-for-INCOstartec-pLILLY-A20.patch \
                             file://boot.cmd"
SRC_URI_append_plilly-a20-tbt-x-056t-d = "file://0001-Add-dts-and-defconfig-for-INCOstartec-pLILLY-A20.patch \
                                          file://0002-Add-defconfig-for-INCOstartec-tbt-x-056t-with-pLILLY.patch \
                                          file://boot.cmd"
