

PGM = ./app/x86_64-native-linuxapp-gcc/pktgen

bind2:
	sudo dpdk_nic_bind -b uio_pci_generic 01:00.1
	sudo dpdk_nic_bind -b uio_pci_generic 01:00.0

run2:
	sudo $(PGM) \
		-- \
		-P \
		-m "[1-4].0,[16-19].1" -f range.conf

run4:
	sudo $(PGM) \
		-- \
		-P \
		-m "[1-4].0,[16-19].1,[8-11].2,[24-29].3" -f range.conf

script:
	sudo $(PGM) \
		-- \
		-P \
		-m "[1-4].0,[16-19].1,[8-11].2,[24-27].3" -f traf.lua

kill:
	sudo killall $(PROG_NAME)


