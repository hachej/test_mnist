FROM axomtech/ml:axvisionpy

WORKDIR /usr/src/app

COPY .dbconfig.json ./

ENTRYPOINT [ "train" ]
