#!/bin/sh

sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev -y
sudo apt-get install git --allow-unauthenticated -y
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils --allow-unauthenticated -y
sudo apt-get install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev --allow-unauthenticated -y
sudo apt-get install libboost-all-dev --allow-unauthenticated -y
sudo apt-get install software-properties-common --allow-unauthenticated -y
sudo apt-get install libminiupnpc-dev --allow-unauthenticated -y
sudo apt-get install libzmq3-dev --allow-unauthenticated -y
sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler --allow-unauthenticated -y
sudo apt-get install libqt4-dev libprotobuf-dev protobuf-compiler --allow-unauthenticated -y
sudo apt-get install qt4-qmake --allow-unauthenticated -y
sudo apt-get install libqt4-dev --allow-unauthenticated -y
sudo apt update && sudo apt install libssl1.0-dev --allow-unauthenticated -y

#wget http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz
#tar xvzf db-4.8.30.NC.tar.gz
#cd  db-4.8.30.NC/build_unix/
#../dist/configure --prefix=/usr/local --enable-cxx
#sudo make
#sudo make install
cd

mkdir compil
cd compil

git clone https://github.com/roppik/u2coin.git
git clone https://github.com/roppik/GoogCoin.git
git clone https://github.com/roppik/eurocash.git
git clone https://github.com/roppik/slovakcoin.git
git clone https://github.com/roppik/vlbcoin.git
git clone https://github.com/roppik/d8.git
git clone https://github.com/roppik/bitcoin-liza.git

cd /root/compil/u2coin/src/
sudo make -f makefile.unix
sleep n
cd
cd /root/compil/GoogCoin/src/
sudo make -f makefile.unix
sleep n
cd
cd /root/compil/eurocash/src/
sudo make -f makefile.unix
sleep n
cd
cd /root/compil/slovakcoin/src/
sudo make -f makefile.unix
sleep n
cd
cd /root/compil/vlbcoin/src/
sudo make -f makefile.unix
sleep n
cd
cd /root/compil/d8/src/
sudo make -f makefile.unix
sleep n
cd
cd /root/compil/bitcoin-liza/src/
sudo make -f makefile.unix
sleep n
cd


sudo mkdir /root/daemon
sudo mkdir /root/daemon/u2
sudo mkdir /root/daemon/goo
sudo mkdir /root/daemon/euch
sudo mkdir /root/daemon/svk
sudo mkdir /root/daemon/vlb
sudo mkdir /root/daemon/d8
sudo mkdir /root/daemon/liza

cd
cd /root/compil/u2coin/src/
sudo cp u2coind /root/daemon/u2
cd
cd /root/compil/GoogCoin/src/
sudo cp googcoind /root/daemon/goo
cd
cd /root/compil/eurocash/src/
sudo cp eurocashd /root/daemon/euch
cd
cd /root/compil/slovakcoin/src/
sudo cp slovakcoind /root/daemon/svk
cd
cd /root/compil/vlbcoin/src/
sudo cp vlbcoind /root/daemon/vlb
cd
cd /root/compil/d8/src/
sudo cp d8coind /root/daemon/d8
cd
cd /root/compil/bitcoin-liza/src/
sudo cp bitcoin-lizad /root/daemon/liza
cd

cd /root/daemon/u2
strip u2coind
sudo ./u2coind
sleep n
cd
cd /root/daemon/goo/
strip googcoind
sudo ./googcoind
sleep n
cd
cd /root/daemon/euch/
strip eurocoind
sudo ./eurocoind
sleep n
cd
cd /root/daemon/svk/
strip slovakcoind
sudo ./slovakcoind
sleep n
cd 
cd /root/daemon/vlb/
strip vlbcoind
sudo ./vlbcoind
sleep n
cd 
cd /root/daemon/d8/
strip d8coind
sudo ./d8coind
sleep n
cd
cd /root/daemon/liza/
strip bitcoin-lizad
sudo ./bitcoin-lizad
cd







