BIN = ./bin
LIB = ./node_modules
OUT = ./release

build: $(OUT)

$(OUT): $(LIB) 
	@$(BIN)/build

$(LIB): 
	@npm install
 
new: $(LIB)
	@$(BIN)/new

deploy: $(OUT)
	@$(BIN)/deploy
 
clean:
	@rm -rf $(OUT)

install link: 
	@npm $@

all: clean install build deploy

.PHONY: build install clean
