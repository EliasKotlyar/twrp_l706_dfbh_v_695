# Fix for JAVA errors while building
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
source ./build/envsetup.sh
lunch omni_l706_dfbh_v_695

make -j 8 clean
# Fix for recoveryimage(http://docs.halium.org/en/latest/porting/common-system-build-errors.html):
LANG=C make -j 8 recoveryimage 
