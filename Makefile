.PHONY: all clean

ACME ?= acme
OUTPUT := build/v10h_text_only.prg
SOURCE := deepseek_asm_20251009_v10h_text_only_stable_nowarn_v2.s

all: $(OUTPUT)

$(OUTPUT): $(SOURCE) custom_charset_1bpp.bin
	@mkdir -p build
	$(ACME) --strict-segments -I . -f cbm -o $@ $(SOURCE)

clean:
	rm -rf build
