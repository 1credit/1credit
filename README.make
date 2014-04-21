1CRedit has been successfully built from this package.

On linux, a Gentoo distribution was used.  Key packages installed were:

Boost 1.53.0
openssl 1.0.1f
db 4.8
miniupnpc 1.8 (required unless you specify "USE_UPNP=-" during builds

Under windows, the system was built natively using:

ActivePerl-5.15.3.1603-MWWin32-x6
Mingw-w64-v3.1.0
qt-win-opensource-4.8.5-mingw
boost_1_53_0
openssl-1.0.1f
db-4.8.30.NC
miniupnpc-1.8

The unix binaries and unix-QT image should build cleanly without any issues using the included makefiles.

Unix bbinary:

cd 1credit/src
make clean -f makefile.unix
make -f makefile.unix

Unix-QT

cd 1credit
qmake
make clean
make

Please do not attempt to make and run the test program, it will fail.  Those test fail on virtually all Alt coins to some degree or another depending on how far they varied for the original Litecoin source.

Remember to uncomment the Windows and comment the single Unix line in 1credit-qt.pro when building under Windows.

Windows "tricks":

First and foremost, follow this guide to get all the dependants and tools built:

https://bitcointalk.org/index.php?topic=149479.0

All the mentioned mods for QT5 have already been done in the source tree and the 1credit-qt.pro file should be ready for uncommenting.

At the time of launch, the following packages were used:

Boost 1_55_0
DB 4.8.30.NC
Miniupnpc 1.8
openssl-1.0.1f
QT 5.2.0
Minww
mingw32
Python33
ActivePerl-5.18.1.1800-MSWin32-x64-297570.msi

Don't forget to pre-make libleveldb and libmemenv before launching the Windows-QT build:

cd /1credit/src/leveldb
TARGET_OS=NATIVE_WINDOWS make libleveldb.a libmemenv.a

Then...

cd /1credit
qmake 1credit-qt.pro
mingw32-make -f Makefile.Release

Step 4.5 of the above guide, where you do the "mingw32-make -f Makefile.Release" should result in a fully static (no additional libraries require) windows executable being placed in the release subdirectory.
