all:
	cd tex; make;
	cp -f tex/*.pdf .

clean:
	cd tex; make clean;

cleanall:
	cd tex; make cleanall;
