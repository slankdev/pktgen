

PGM = ./app/x86_64-native-linuxapp-gcc/pktgen

bind2:
	sudo dpdk_nic_bind -b uio_pci_generic 01:00.1
	sudo dpdk_nic_bind -b uio_pci_generic 01:00.0

run:
	sudo $(PGM) \
		-- \
		-P \
		-m "[1:2-3].0,[5:6-7].1"

kill:
	sudo killall $(PROG_NAME)


