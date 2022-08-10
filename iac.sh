#!/bin/bash

echo "CRIANDO DIRETORIOS..."
mkdir /publico /adm /ven /sec

echo "CRIANDO GRUPOS..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "CRIANDO USUARIOS..."
useradd iuri -m -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123)
useradd bruna -m -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123)
useradd renata -m -G GRP_ADM -s /bin/bash -p $(openssl passwd senha123)

useradd gabi -m -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123)
useradd ana -m -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123)
useradd taina -m -G GRP_VEN -s /bin/bash -p $(openssl passwd senha123)

useradd fernanda  -m -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123)
useradd vini -m -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123)
useradd camille -m -G GRP_SEC -s /bin/bash -p $(openssl passwd senha123)

echo "MODIFICANDO PERMISSOES..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm 
chmod 770 /ven
chmod 770 /sec

echo "CONCLUIDO....."
