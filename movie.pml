set movie_panel, 1
mset 1 x1000

scene F1
python

f=1
cmd.frame(f)
cmd.mview("store",scene="F1")
f=f+99; print f
cmd.frame(f)
cmd.mview("store",scene="F1")

f=f+49; print f
cmd.frame(f)
cmd.mview("store",scene="F2")
f=f+99; print f
cmd.frame(f)
cmd.mview("store",scene="F2")

f=f+49; print f
cmd.frame(f)
cmd.mview("store",scene="F3")
f=f+99; print f
cmd.frame(f)
cmd.mview("store",scene="F3")

f=f+49; print f
cmd.frame(f)
cmd.mview("store",scene="F4")
f=f+99; print f
cmd.frame(f)
cmd.mview("store",scene="F4")

f=f+49; print f
cmd.frame(f)
cmd.turn('y',50)
cmd.mview("store")

f=f+99; print f
cmd.frame(f)
cmd.turn('y',-100)
cmd.mview("store")

f=f+49; print f
cmd.frame(f)
cmd.turn('y',50)
cmd.mview("store")

f=f+49; print f
cmd.frame(f)
cmd.mview("store",scene="F4")

python end

frame 1
mplay


