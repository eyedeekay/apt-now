#--dpkg-buildpackage-hook
rm debian/source/include-binaries
for p in $(find -name *.tar.*); do
        echo $p | sed 's|./||'  | tee -a debian/source/include-binaries
done

for p in $(find -name *.deb); do
        echo $p | sed 's|./||'  | tee -a debian/source/include-binaries
done
