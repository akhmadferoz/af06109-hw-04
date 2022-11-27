build:
	@echo $(shell pwd)
	@echo "Compiling..."
	gcc -Wall -lpthread ./**/*.c -o main.out -v
	@echo "Done compiling."

rebuild:
	@echo "Rebuilding..."
	rm -rf main.out
	gcc -Wall -lpthread ./**/*.c -o main.out -v
	@echo "Done rebuilding."

clean:
	@echo "Cleaning..."
	rm -rf main.out
	@echo "Done cleaning."

run:
	@echo "Initializing..."
	./main.out
	@echo "Terminating."