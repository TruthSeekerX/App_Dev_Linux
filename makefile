OBJ = score.o getscore.o eval.o classify.o output.o
APPNAME = scoreApp
$(APPNAME) : $(OBJ)	#linking rule
	gcc -o $(APPNAME) $(OBJ)
%.o: %.c score.h	#for each .c file in the folder will be complied
	gcc -g -c -o $@ $<
clean:
	rm $(OBJ) $(APPNAME)
