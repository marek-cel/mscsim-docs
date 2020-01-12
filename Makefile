all:
	cd latex; make;
	cp -f latex/*.pdf .

clean:
	cd latex; make clean;

cleanall:
	cd latex; make cleanall;
