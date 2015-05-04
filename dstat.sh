export DSTAT_TIMEFMT="%Y-%m-%d %H:%M:%S"
out=".dstat/$(date '+%G%m%d-%H')"
: >$out
dstat -tcmdnp --output "$out" 10 359
