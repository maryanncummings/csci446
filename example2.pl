happy(john).
listensToMusic(ben).
listensToMusic(john):-happy(john).
playsAirGuitar(ben):-listensToMusic(ben).
playsAirGuitar(john):-listensToMusic(john).
