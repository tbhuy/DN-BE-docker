#!/bin/bash
sed -i 's|#GRAPHDB#|'${GRAPHDB}'|g' /usr/src/app/dn-backend/dn/utils.py
sed -i 's|#GRAPHDBUSER#|'${GRAPHDBUSER}'|g' /usr/src/app/dn-backend/dn/utils.py
sed -i 's|#GRAPHDBPWD#|'${GRAPHDBPWD}'|g' /usr/src/app/dn-backend/dn/utils.py
sed -i 's|#DATAVERSE#|'${DATAVERSE}'|g' /usr/src/app/dn-backend/dn/utils.py
sed -i 's|#DATAVERSEEX#|'${DATAVERSEEX}'|g' /usr/src/app/dn-backend/dn/utils.py
sed -i 's|#DATAVERSEKEY#|'${DATAVERSEKEY}'|g' /usr/src/app/dn-backend/dn/utils.py
cd /usr/src/app/dn-backend
python3 manage.py runserver 0.0.0.0:8000
