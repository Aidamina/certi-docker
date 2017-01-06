CERTI_VERSION=3.5.1
INSTALL_DIR=$PWD/bin
docker build -f Build --build-arg CERTI_VERSION=$CERTI_VERSION -t aidamina/certi-builder:latest . 
docker run -it -v $INSTALL_DIR:/install aidamina/certi-builder:latest
docker build -t aidamina/certi:$CERTI_VERSION .

