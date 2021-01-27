#!/bin/bash
sed -i 's|##GRAPHDB##|'${GRAPHDB}'|g' /usr/src/app/dn-backend/dn/views.py
sed -i 's|#DATAVERSE#|'${DATAVERSE}'|g' /usr/src/app/dn-backend/dn/views.py
sed -i 's|#DATAVERSEEX#|'${DATAVERSEEX}'|g' /usr/src/app/dn-backend/dn/views.py
sed -i 's|#DATAVERSEKEY#|'${DATAVERSEKEY}'|g' /usr/src/app/dn-backend/dn/views.py


