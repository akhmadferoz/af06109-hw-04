build:
	@echo $(shell pwd)
	@echo "Compiling..."
	gcc -Wall -lpthread ./traffic.c -o main.out -v
	@echo "\nDone compiling.\n"
	@echo "Generating traffic simulation file...\n"
	cp main.out traffic
	@echo "\nDone generating traffic simulation file.\n"
	@echo "Run the following command to start the simulation:\n\n./traffic <input_file_name>"
	@echo "Example: ./traffic input.txt\n"
	@echo "Or run the following command to start the simulation with default input file:\n"
	@echo "make run\n\n"

rebuild:
	@echo "Rebuilding..."
	rm -rf *.out traffic
	gcc -Wall -lpthread ./traffic.c -o main.out -v
	@echo "Done rebuilding."
	@echo "Regenerating traffic simulation file."
	cp main.out traffic
	@echo "Done regenerating traffic simulation file.\n"
	@echo "Run the following command to start the simulation:\n\n./traffic <input_file_name>"
	@echo "Example: ./traffic input.txt\n"
	@echo "Or run the following command to start the simulation with default input file:\n"
	@echo "make run\n\n"

clean:
	@echo "Cleaning..."
	rm -rf *.out traffic
	@echo "Done cleaning.\n"

run:
	@echo "Initializing..."
	./traffic sample_input.txt
	@echo "Terminating program.\n"