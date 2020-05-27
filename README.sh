# Generation of epithelial membrane

echo "Build epithelial membrane 35x35x15"
echo "=================================="

python2 ./insane+SF.py -o epithelial.gro -p epithelial.top -d 0 -x 35 -y 35 -z 15 -sol PW -salt 0.15 -center -charge 0 -orient -u PBSM:0.007 -u PXSM:0.004 -u DPSM:0.017 -u PNSM:0.008 -u DPMC:0.007 -u POMC:0.043 -u DOMC:0.009 -u PIMC:0.009 -u OIMC:0.004 -u OEMC:0.005 -u PAMC:0.012 -u PUMC:0.029 -u POME:0.001 -u DOME:0.006 -u OIME:0.001 -u OQME:0.002 -u OAME:0.014 -u OUME:0.006 -u IAME:0.007 -u IQME:0.001 -u LPPC:0.008 -u DPPC:0.003 -u POPC:0.147 -u DOPC:0.011 -u PIPC:0.088 -u OIPC:0.05 -u PAPC:0.052 -u PUPC:0.05 -u POPE:0.007 -u OPPE:0.002 -u DOPE:0.007 -u PAPE:0.006 -u PUPE:0.002 -u OIPE:0.002 -u PQPE:0.002 -u OQPE:0.001 -u OAPE:0.002 -u OUPE:0.001 -u POPG:0.004 -u DOPG:0.003 -u DODG:0.004 -u PODG:0.007 -u CHOL:0.35 -l OGPS:0.004 -l DPPS:0.001 -l POPS:0.094 -l DOPS:0.006 -l PAPI:0.028 -l PAP1:0.014 -l PAP2:0.014 -l PQPI:0.019 -l PQP1:0.01 -l PQP2:0.01 -l POPI:0.013 -l POP1:0.006 -l POP2:0.006 -l PUPI:0.008 -l DOPI:0.008 -l PIPI:0.006 -l PEPI:0.004 -l PBSM:0.003 -l PXSM:0.002 -l DPSM:0.007 -l PNSM:0.003 -l DPMC:0.003 -l POMC:0.016 -l DOMC:0.003 -l PIMC:0.003 -l OIMC:0.002 -l OEMC:0.002 -l PAMC:0.004 -l PUMC:0.011 -l POME:0.005 -l DOME:0.02 -l OIME:0.003 -l OQME:0.006 -l OAME:0.052 -l OUME:0.023 -l IAME:0.024 -l IQME:0.003 -l LPPC:0.003 -l DPPC:0.001 -l POPC:0.056 -l DOPC:0.004 -l PIPC:0.034 -l OIPC:0.019 -l PAPC:0.02 -l PUPC:0.019 -l POPA:0.01 -l DOPA:0.005 -l POPE:0.025 -l OPPE:0.008 -l DOPE:0.026 -l PAPE:0.02 -l PUPE:0.007 -l OIPE:0.008 -l PQPE:0.006 -l OQPE:0.004 -l OAPE:0.009 -l OUPE:0.005 -l POPG:0.003 -l DOPG:0.002 -l DODG:0.002 -l PODG:0.004 -l CHOL:0.253 

echo
echo "epithelial.gro created"
echo "======================"
echo

echo
echo "add a box"
echo "========="
echo
gmx editconf -f epithelial.pdb -o epithelial_box.pdb -box 35 35 15


#Minimize the system
gmx grompp -f emin.mdp -c epithelial.gro -p epithelial.top -o epithelial_EM.tpr
export GMX_MAXCONSTRWARN=-1
export GMX_SUPPRESS_DUMP=1
gmx mdrun -v -deffnm epithelial_EM
