BIN = ./bin
OUT = ./build

build: 
	@$(BIN)/build

new:
	@$(BIN)/new
 
clean:
	@rm -rf $(OUT)

install link: 
	@npm $@

all: clean install build

.PHONY: install new build clean
