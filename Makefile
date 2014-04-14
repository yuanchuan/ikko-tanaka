BIN = ./bin
OUT = ./build

build: 
	@$(BIN)/build

new:
	@$(BIN)/new

dep:
	@$(BIN)/deploy
 
clean:
	@rm -rf $(OUT)

install link: 
	@npm $@

all: clean install build dep

.PHONY: install new build clean
