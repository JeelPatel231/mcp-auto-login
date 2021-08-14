while true
do
    user="$( tr -dc A-Za-z0-9 </dev/urandom | head -c 5 )"
    mono MinecraftClient.exe $user "-" HyperOt.aternos.me /ping > /dev/null &
    sleep $(( RANDOM % 10 ))
    kill %1
    sleep $(( $RANDOM))
done