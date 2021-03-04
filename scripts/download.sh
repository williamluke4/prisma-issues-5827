echo "========================= Downloading Custom Binaries ========================="
if [[ -d ../vendor-bins ]]; then
    echo "Removing Binaries"
    rm -rf ../vendor-bins
fi
mkdir -p vendor-bins 
cd vendor-bins 
wget \
  https://binaries.prisma.sh/master/854c8ba7f0dce66f115af36af24e66989a8c02a1/debian-openssl-1.1.x/introspection-engine.gz \
  https://binaries.prisma.sh/master/854c8ba7f0dce66f115af36af24e66989a8c02a1/debian-openssl-1.1.x/migration-engine.gz \
  https://binaries.prisma.sh/master/854c8ba7f0dce66f115af36af24e66989a8c02a1/debian-openssl-1.1.x/prisma-fmt.gz \
  https://binaries.prisma.sh/master/854c8ba7f0dce66f115af36af24e66989a8c02a1/debian-openssl-1.1.x/query-engine.gz 

gunzip *.gz 
chmod +x ./* 
cd ..
echo "==============================================================================="
