# Description: Java Media Framework is required. Otherwise,
#   -It will crash when opening File->Preferences of Sweet Home 3D.

JMF_ZIP=jmf-2_1_1e-alljava.zip
JMF_DEST_DIR=/usr/lib/

unzip -o "${JMF_ZIP}" -d "${JMF_DEST_DIR}"

echo 'export JMFHOME=/usr/lib/JMF-2.1.1e' >> ~/.bashrc
echo 'export CLASSPATH=.:$CLASSPATH:$JMFHOME/lib/jmf.jar' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$JMFHOME/lib' >> ~/.bashrc

source ~/.bashrc