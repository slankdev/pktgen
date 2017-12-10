

PGM = ./app/x86_64-native-linuxapp-gcc/pktgen

run:
	sudo $(PGM) \
		-- \
		-P \
		-m "[1:2-3].0,[5:6-7].1"

kill:
	sudo killall $(PROG_NAME)


