all: seqack 

seqack: seqack.c
	gcc -Wall -o seqack seqack.c -lpcap -lssl -lcrypto

seqack-static: seqack.c
	gcc -static seqack.c -o seqack-static -lpcap -lssl -lcrypto -ldl -lz

clean:
	rm seqack 

