reinitialize

fetch 1k4c, type=pdb1, multiplex=1,async=0

# So we get buttons for scenes
set scene_buttons, 1
#viewport 320,200
bg_color white
set fog_start, 0.60

#### Scene 1, publication ####
group 1k4c, 1k4c_* 
preset.publication(selection='1k4c')

# See http://pymolwiki.org/index.php/Single-word_Selectors
extract substrates, organic
util.cbac('substrates')
extract ions, inorganic
show spheres, ions
disable ions

extract water, solvent
show nonbonded, water
color grey, water
disable water
# See http://pymolwiki.org/index.php/Selection_Macros
# Select organic molecules
# Hide organic
hide everything, substrates

# Save scene 1
zoom 1k4c
scene F1, store, Publication

#### Scene 2, show cysteines ####
# Select sulfurs, since they play a role
util.cbag('1k4c_0001')
util.cbao('1k4c_0002')
util.cbas('1k4c_0003')
util.cbaw('1k4c_0004')

select sulf_cys, resn cys and not (name O or name N or name C)
disable sulf_cys
show sticks, sulf_cys
color sulfur, sulf_cys and elem S
color red, sulf_cys and not elem S
set_view (\
     0.443872631,   -0.125126541,    0.887310863,\
     0.892753899,   -0.023616746,   -0.449926227,\
     0.077252157,    0.991857469,    0.101223812,\
     0.000020482,   -0.000164529, -253.516693115,\
   164.839996338,  190.414398193,   -7.539838314,\
   168.313964844,  338.728668213,  -20.000000000 )
scene F2, store, Cysteines

#### Scene 3, show organis ####
show sticks, substrates
set_view (\
    -0.975404024,    0.029795930,   -0.218399704,\
    -0.214692041,    0.096028417,    0.971945703,\
     0.049933217,    0.994929075,   -0.087270327,\
     0.000279146,   -0.000071049, -226.327316284,\
   160.358612061,  152.090927124,  -33.061843872,\
   141.134780884,  311.549621582,  -20.000000000 )
scene F3, store, substrates

#### Scene 4, polar contacts ####
select prot_cont, byres 1k4c_* within 3.5 of (substrates or ions)
util.cbay('prot_cont') 
distance subs_bond, substrates, prot_cont, mode=2
show sticks, prot_cont
enable ions
set_view (\
    -0.961359501,   -0.272781283,   -0.037127689,\
    -0.273679018,    0.961574137,    0.021663748,\
     0.029792555,    0.030986462,   -0.999071598,\
     0.000279146,   -0.000071049, -226.327316284,\
   160.358612061,  152.090927124,  -33.061843872,\
   141.134780884,  311.549621582,  -20.000000000 )
scene F4, store, polar contacts

#@movie.pml

