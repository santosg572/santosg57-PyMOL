# Best to restart PyMOL every time from fresh
reinitialize
#cd C:\Users\DIG\pymol

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
select mn, name MN # OR: select mn, symbol Mn # OR: select mn, inorganic
show spheres, mn

label act_site and name CB, resn+resi

zoom pol_cont
viewport 1024,768
bg_color white
ray
png 1lev.png

