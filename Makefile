.PHONY: all clean

ACME ?= acme
OUTPUT := build/deepseek_c64_v10h_text.prg
SOURCE := deepseek_c64_v10h_text.s

all: $(OUTPUT)

$(OUTPUT): $(SOURCE) custom_charset_1bpp.bin
	@mkdir -p build
	$(ACME) --strict-segments -I . -f cbm -o $@ $(SOURCE)

clean:
	rm -rf build
