#--dpkg-buildpackage-hook
for p in $(find -name *.tar.*); do
        echo $p | sed 's|./||'
done

for p in $(find -name *.deb); do
        echo $p | sed 's|./||'
done
