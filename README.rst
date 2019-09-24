meta-incostartec
================

This layer supports the pLILLY-A20 from INCOstartec.

It depends on the additional layer::

  meta-sunxi: https://github.com/linux-sunxi/meta-sunxi


Usage
=====

Clone this repository, the Yocto Poky reference distribution and the meta-sunxi
layer in a directory::

  mkdir ~/yocto-build

  cd ~/yocto-build
  git clone https://github.com/opendevices/meta-incostartec
  cd meta-incostartec
  git checkout warrior

  cd ~/yocto-build
  git clone https://github.com/linux-sunxi/meta-sunxi
  cd meta-sunxi
  git checkout warrior

  cd ~/yocto-build
  git clone https://git.yoctoproject.org/git/poky
  cd poky 
  git checkout warrior


Setup the build directory::

  cd ~/yocto-build
  source poky/oe-init-build-env build-pLILLY-A20/


Add the layers meta-incostartec and meta-sunxi to `~/yocto-build/build-pLILLY-A20/conf/bblayers.conf`
::

  POKY_BBLAYERS_CONF_VERSION = "2"
  
  BBPATH = "${TOPDIR}"
  BBFILES ?= ""
  
  BBLAYERS ?= " \
    ${TOPDIR}/../poky/meta \
    ${TOPDIR}/../poky/meta-poky \
    ${TOPDIR}/../meta-sunxi \
    ${TOPDIR}/../meta-incostartec \
  "
 

Search the MACHINE variable in  `~/yocto-build/build-pLILLY-A20/conf/local.conf` and set it to `plilly-a20`
::

  ...
  MACHINE = "plilly-a20"
  ..


Run the first image build::

  bitbake core-image-minimal
  # or 
  bitbake core-image-base


When the build is completed the output can be found in `~/yocto-build/build-pLILLY-A20/tmp/deploy/images/plilly-a20/`. 

Write the image to a SDcard and boot the pLILLY ::

  sudo bmaptool copy --nobmap core-image-minimal-plilly-a20.sunxi-sdimg /dev/mmcblk0

  # or using dd
  sudo dd if=core-image-base-plilly-a20.sunxi-sdimg of=/dev/mmcblk0 bs=1M



  
