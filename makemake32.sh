export LC_ALL=POSIX

ls *.mak >xls

echo export LC_ALL=POSIX  >xmk.sh
echo mkdir  utl          >>xmk.sh
echo mkdir  utl/linux    >>xmk.sh

echo mkdir utl/linux/isis       >mkisis.sh
echo mkdir utl/linux/isis1660   >mkisis1660.sh
echo mkdir utl/linux/isisG      >mkisisG.sh
echo mkdir utl/linux/lind       >mklind.sh
echo mkdir utl/linux/lindG4     >mklindG4.sh
echo mkdir utl/linux/lind512    >mklind512.sh
echo mkdir utl/linux/lind512G4  >mklind512G4.sh
echo mkdir utl/linux/ffi        >mkffi.sh
echo mkdir utl/linux/ffiG4      >mkffiG4.sh
echo mkdir utl/linux/ffiG4_4    >mkffiG4_4.sh
echo mkdir utl/linux/ffi512     >mkffi512.sh
echo mkdir utl/linux/ffi512G4   >mkffi512G4.sh
echo mkdir utl/linux/ffi1660    >mkffi1660.sh

echo mkdir utl/linux/BigIsis    >mkBigIsis.sh

./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/isis       'left(v1,size(v1)-4)' CIFFI=0 LIND=0 LIND4=0 ISISXL=0 ISISXL512=0 _FILE_OFFSET_BITS=00 _LARGEFILE64_SOURCE=0'/" lw=0 now >>mkisis.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/isis1660   'left(v1,size(v1)-4)' CIFFI=0 LIND=0 LIND4=0 ISISXL=1 ISISXL512=0 _FILE_OFFSET_BITS=00 _LARGEFILE64_SOURCE=0'/" lw=0 now >>mkisis1660.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/isisG      'left(v1,size(v1)-4)' CIFFI=0 LIND=0 LIND4=0 ISISXL=0 ISISXL512=0 _FILE_OFFSET_BITS=64 _LARGEFILE64_SOURCE=1'/" lw=0 now >>mkisisG.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/lind       'left(v1,size(v1)-4)' CIFFI=0 LIND=1 LIND4=0 ISISXL=1 ISISXL512=0 _FILE_OFFSET_BITS=00 _LARGEFILE64_SOURCE=0'/" lw=0 now >>mklind.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/lindG4     'left(v1,size(v1)-4)' CIFFI=0 LIND=1 LIND4=1 ISISXL=1 ISISXL512=0 _FILE_OFFSET_BITS=64 _LARGEFILE64_SOURCE=1'/" lw=0 now >>mklindG4.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/lind512    'left(v1,size(v1)-4)' CIFFI=0 LIND=1 LIND4=0 ISISXL=1 ISISXL512=1 _FILE_OFFSET_BITS=00 _LARGEFILE64_SOURCE=0'/" lw=0 now >>mklind512.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/lind512G4  'left(v1,size(v1)-4)' CIFFI=0 LIND=1 LIND4=1 ISISXL=1 ISISXL512=1 _FILE_OFFSET_BITS=64 _LARGEFILE64_SOURCE=1'/" lw=0 now >>mklind512G4.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/ffi        'left(v1,size(v1)-4)' CIFFI=1 LIND=1 LIND4=0 ISISXL=1 ISISXL512=0 _FILE_OFFSET_BITS=00 _LARGEFILE64_SOURCE=0'/" lw=0 now >>mkffi.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/ffiG4      'left(v1,size(v1)-4)' CIFFI=1 LIND=1 LIND4=1 ISISXL=1 ISISXL512=0 _FILE_OFFSET_BITS=64 _LARGEFILE64_SOURCE=1'/" lw=0 now >>mkffiG4.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/ffiG4_4    'left(v1,size(v1)-4)' CIFFI=1 LIND=1 LIND4=1 ISISXL=1 ISISXL512=0 _FILE_OFFSET_BITS=64 _LARGEFILE64_SOURCE=1 MAXMFRL=4194304'/" lw=0 now >>mkffiG4_4.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/ffi512     'left(v1,size(v1)-4)' CIFFI=1 LIND=1 LIND4=0 ISISXL=1 ISISXL512=1 _FILE_OFFSET_BITS=00 _LARGEFILE64_SOURCE=0'/" lw=0 now >>mkffi512.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/ffi512G4   'left(v1,size(v1)-4)' CIFFI=1 LIND=1 LIND4=1 ISISXL=1 ISISXL512=1 _FILE_OFFSET_BITS=64 _LARGEFILE64_SOURCE=1'/" lw=0 now >>mkffi512G4.sh
./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/ffi1660    'left(v1,size(v1)-4)' CIFFI=1 LIND=0 LIND4=0 ISISXL=1 ISISXL512=0 _FILE_OFFSET_BITS=00 _LARGEFILE64_SOURCE=0'/" lw=0 now >>mkffi1660.sh

./mx seq=xls "pft='sh -x mxmake32.sh utl/linux/BigIsis    'left(v1,size(v1)-4)' CIFFI=1 LIND=0 LIND4=0 ISISXL=1 ISISXL512=0 _FILE_OFFSET_BITS=64 _LARGEFILE64_SOURCE=1 SUPERISIS=1'/" lw=0 now >>mkBigIsis.sh


cat           mkisis.sh       >>xmk.sh
cat           mkisis1660.sh   >>xmk.sh
cat           mkisisG.sh      >>xmk.sh
cat           mklind.sh       >>xmk.sh
cat           mklindG4.sh     >>xmk.sh
cat           mklind512.sh    >>xmk.sh
cat           mklind512G4.sh  >>xmk.sh
cat           mkffi.sh        >>xmk.sh
cat           mkffiG4.sh      >>xmk.sh
cat           mkffiG4_4.sh    >>xmk.sh
cat           mkffi512.sh     >>xmk.sh
cat           mkffi512G4.sh   >>xmk.sh
cat           mkffi1660.sh    >>xmk.sh

cat           mkBigIsis.sh   >>xmk.sh

echo          cp utl/linux/lindG4/crunchmf utl/linux/isis            >>xmk.sh
echo          cp utl/linux/lindG4/crunchmf utl/linux/isis1660        >>xmk.sh
echo          cp utl/linux/lindG4/crunchmf utl/linux/lind            >>xmk.sh
echo          cp utl/linux/lindG4/crunchmf utl/linux/lind512         >>xmk.sh

echo          cp utl/linux/ffiG4/crunchmf utl/linux/ffi              >>xmk.sh
echo          cp utl/linux/ffiG4/crunchmf utl/linux/ffi512           >>xmk.sh
echo          cp utl/linux/ffiG4/crunchmf utl/linux/ffi1660          >>xmk.sh

echo          mv utl/linux/lind/ifload utl/linux/lind/iflind           >>xmk.sh
echo          mv utl/linux/lindG4/ifload utl/linux/lindG4/iflind       >>xmk.sh
echo          mv utl/linux/lindG4_4/ifload utl/linux/lindG4_4/iflind   >>xmk.sh
echo          mv utl/linux/lind512/ifload utl/linux/lind512/iflind     >>xmk.sh
echo          mv utl/linux/lind512G4/ifload utl/linux/lind512G4/iflind >>xmk.sh
echo          mv utl/linux/ffi/ifload utl/linux/ffi/iflind             >>xmk.sh
echo          mv utl/linux/ffiG4/ifload utl/linux/ffiG4/iflind         >>xmk.sh
echo          mv utl/linux/ffi512/ifload utl/linux/ffi512/iflind       >>xmk.sh
echo          mv utl/linux/ffi512G4/ifload utl/linux/ffi512G4/iflind   >>xmk.sh
echo          mv utl/linux/ffi1660/ifload utl/linux/ffi1660/iflind     >>xmk.sh

echo          rm utl/linux/lind/ifupd       >>xmk.sh
echo          rm utl/linux/lindG4/ifupd     >>xmk.sh
echo          rm utl/linux/lind512/ifupd    >>xmk.sh
echo          rm utl/linux/lind512G4/ifupd  >>xmk.sh
echo          rm utl/linux/ffi/ifupd        >>xmk.sh
echo          rm utl/linux/ffiG4/ifupd      >>xmk.sh
echo          rm utl/linux/ffiG4_4/ifupd    >>xmk.sh
echo          rm utl/linux/ffi512/ifupd     >>xmk.sh
echo          rm utl/linux/ffi512G4/ifupd   >>xmk.sh

echo          rm utl/linux/isis/wtrig*          >>xmk.sh
echo          rm utl/linux/isis1660/wtrig*      >>xmk.sh
echo          rm utl/linux/isisG/wtrig*         >>xmk.sh
echo          rm utl/linux/lind/wtring*         >>xmk.sh
echo          rm utl/linux/lindG4/wtrig*        >>xmk.sh
echo          rm utl/linux/lind512/wtrig*       >>xmk.sh
echo          rm utl/linux/lind512G4/wtrig*     >>xmk.sh

echo          mkdir wxis                                 >>xmk.sh
echo          mkdir wxis/linux                           >>xmk.sh
echo          mkdir wxis/linux/isis                      >>xmk.sh
echo          mkdir wxis/linux/isis1660                  >>xmk.sh
echo          mkdir wxis/linux/isisG                     >>xmk.sh
echo          mkdir wxis/linux/lind                      >>xmk.sh
echo          mkdir wxis/linux/lindG4                    >>xmk.sh
echo          mkdir wxis/linux/lind512                   >>xmk.sh
echo          mkdir wxis/linux/lind512G4                 >>xmk.sh
echo          mkdir wxis/linux/ffi                       >>xmk.sh
echo          mkdir wxis/linux/ffiG4                     >>xmk.sh
echo          mkdir wxis/linux/ffiG4_4                   >>xmk.sh
echo          mkdir wxis/linux/ffi512                    >>xmk.sh
echo          mkdir wxis/linux/ffi512G4                  >>xmk.sh
echo          mkdir wxis/linux/ffi1660                   >>xmk.sh

echo          mkdir wxis/linux/BigIsis          >>xmk.sh

echo          cp utl/linux/isis/wxis wxis/linux/isis            >>xmk.sh
echo          cp utl/linux/isis1660/wxis wxis/linux/isis1660    >>xmk.sh
echo          cp utl/linux/isis1660/wxis wxis/linux/isisG       >>xmk.sh
echo          cp utl/linux/lind/wxis wxis/linux/lind            >>xmk.sh
echo          cp utl/linux/lindG4/wxis wxis/linux/lindG4        >>xmk.sh
echo          cp utl/linux/lind512/wxis wxis/linux/lind512      >>xmk.sh
echo          cp utl/linux/lind512G4/wxis wxis/linux/lind512G4  >>xmk.sh
echo          cp utl/linux/ffi/wxis wxis/linux/ffi              >>xmk.sh
echo          cp utl/linux/ffiG4/wxis wxis/linux/ffiG4          >>xmk.sh
echo          cp utl/linux/ffiG4_4/wxis wxis/linux/ffiG4_4      >>xmk.sh
echo          cp utl/linux/ffi512/wxis wxis/linux/ffi512        >>xmk.sh
echo          cp utl/linux/ffi512G4/wxis wxis/linux/ffi512G4    >>xmk.sh
echo          cp utl/linux/ffi1660/wxis wxis/linux/ffi1660      >>xmk.sh

echo          cp utl/linux/BigIsis wxis/linux/BigIsis  >>xmk.sh

echo "nohup time sh -x xmk.sh &"
nohup time sh -x xmk.sh &

echo "compilation finished !!!"
exit
