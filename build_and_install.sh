rm -rf build
ARCHFLAGS='-arch i386 -arch x86_64' python setup.py build --with-libmemcached=/opt/local
rm -f ~/dev/virtualenvs/content/lib/python2.7/site-packages/_pylibmc.so
rm -rf ~/dev/virtualenvs/content/lib/python2.7/site-packages/pylibmc
cp -r ./build/lib.macosx-10.7-intel-2.7/* ~/dev/virtualenvs/content/lib/python2.7/site-packages/