# epithelial
model of a complex epithelial cell membrane  
  
/buildITP         - notebooks for creating each new lipid species  
  XXXX.ipynb      - Jupyter notebook for generating a .itp file for a new lipid  
  XXXX.itp        - Toplogy file created for the new lipid  
  epithelial.cat  - catalogue file copntaining .itp files to be included when building the itp master file  
    
/martini.ff       - itp files from Martini  
  martini_v2_epithelial.itp             - itp master file  
  martini_v2.0_lipids_all_201506.itp    - Standard martini lipids  
  
insane+SF.py      - python2 application to build a complex membrane   
epithelial.ipynb  - Jupyter notebook for generating a complex epithelial membrane  
testlipids.ipynb  - Jupyter notebook containing utilities for testing lipids  
epithelial.gro    - complex epithelial membrane model in Gromacs format  
epithelial.pdb    - complex epithelial membrane modelin protein databank format  