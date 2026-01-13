fetch 1lev, async=0
preset.publication(selection='all')
remove chain F
select substrates, organic
select f6p, resn F6P
zoom f6p
util.cbac('f6p')
 
select act_site, byres f6p around 3.5
show sticks, act_site
 
distance pol_cont, f6p, act_site, mode=2
 
select cli, /1lev//A/CLI # OR: select cli, resn CLI
select mn, name MN 
# OR: select mn, symbol Mn # OR: select mn, inorganic
show spheres, mn
 
label act_site and name CB, resn+resi
 
zoom pol_cont
viewport 1024,768
bg_color white

###### Movie
# Reset
hide sticks, act_site
disable pol_cont
disable cli
hide spheres, mn
disable mn

zoom 1lev
scene F1, store, Publication

zoom substrates
scene F2, store, substrates
 
zoom f6p
scene F3, store, f6p
 
show sticks, act_site
enable pol_cont
show spheres, mn

zoom pol_cont
scene F4, store, polar contacts

@movie.pml
#ray
#png 1lev.png


