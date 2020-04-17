mol modselect 0 0 resid 1
rotate x by 0
rotate y by 120
rotate z by 90
translate by 1 -1.1 0
display projection Orthographic
rotate x by 30
rotate y by 20
mol modstyle 0 0 VDW 0.25 12
axes location Off
color Display Background white
scale by 3.5
set sel [atomselect 0 all]
set atomlist [$sel list]
foreach {atom} $atomlist {
    set atomlabel [format "%d/%d" 0 $atom]
    label add Atoms $atomlabel
}
color Labels Atoms blue
label textthickness 2
label textsize 2
rotate z by 30
render snapshot image.tga {convert image.tga jpg:image.jpg; rm image.tga}
exit