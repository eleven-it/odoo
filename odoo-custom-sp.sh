#!/bin/bash

ODOO_VERSION=16.0
echo "Clonando repositorios ADHOC"
mkdir /mnt/extra-addons/adhoc
cd /mnt/extra-addons/adhoc
git clone https://github.com/ingadhoc/account-financial-tools -b $ODOO_VERSION
git clone https://github.com/ingadhoc/account-invoicing -b $ODOO_VERSION
git clone https://github.com/ingadhoc/account-payment -b $ODOO_VERSION
git clone https://github.com/ingadhoc/aeroo_reports -b $ODOO_VERSION
git clone https://github.com/ingadhoc/argentina-sale -b $ODOO_VERSION
git clone https://github.com/ingadhoc/odoo-argentina -b $ODOO_VERSION
git clone https://github.com/ingadhoc/sale -b $ODOO_VERSION
git clone https://github.com/ingadhoc/stock -b $ODOO_VERSION
echo
echo
echo "Clonando repositorios OCA"
mkdir /mnt/extra-addons/OCA
cd /mnt/extra-addons/OCA
git clone https://github.com/OCA/sale-workflow -b $ODOO_VERSION
git clone https://github.com/OCA/server-tools -b $ODOO_VERSION
git clone https://github.com/OCA/web -b $ODOO_VERSION
echo
echo
echo "Clonando repositorios ODOOMATES"
mkdir /mnt/extra-addons/odoomates
cd /mnt/extra-addons/odoomates
git clone https://github.com/odoomates/odooapps -b $ODOO_VERSION
echo
echo
echo "Clonando repositorios A2SYSTEMS"
mkdir /mnt/extra-addons/a2systems
cd /mnt/extra-addons/a2systems
git clone https://github.com/a2systems/odoo-argentina -b $ODOO_VERSION
cd /mnt/extra-addons/a2systems/odoo-argentina
pip install -r requirements.txt
pip install -r oca_requirements.txt

echo "Clonando repositorios aeroolib"
mkdir /mnt/extra-addons/aeroo
cd /mnt/extra-addons/aeroo/
git clone https://github.com/aeroo/aeroolib
cd /mnt/extra-addons/aeroo/aeroolib
./setup.py install

echo "Clonando repositorios currency2text"
cd /mnt/extra-addons/aeroo
git clone https://github.com/aeroo/currency2text.git
cd /mnt/extra-addons/aeroo/currency2text
./setup.py install


