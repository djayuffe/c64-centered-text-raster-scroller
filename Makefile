.PHONY: all clean

ACME ?= acme
OUTPUT := build/c64_centered_text_raster_scroller.prg
SOURCE := c64_centered_text_raster_scroller.s

all: $(OUTPUT)

$(OUTPUT): $(SOURCE) custom_charset_1bpp.bin
	@mkdir -p build
	$(ACME) --strict-segments -I . -f cbm -o $@ $(SOURCE)

clean:
	rm -rf build
