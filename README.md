# C64 v10h Text

PAL C64 text-mode demo with a custom charset, centered logo, gradient colors,
raster bars, bottom scroller, and SID arpeggio.

## Build

Requires ACME 0.97 or newer. The build is self-contained and offline:

```sh
make
```

Output: `build/c64_centered_text_raster_scroller.prg`. Run with:

```sh
x64sc -autostart build/c64_centered_text_raster_scroller.prg
```

## Repository layout

- `c64_centered_text_raster_scroller.s` — corrected source.
- `custom_charset_1bpp.bin` — recovered 2 KiB charset input.
- `Makefile` — strict ACME build and clean targets.
- `AUDIT.md` — issue-by-issue repair record.
- `SHA256SUMS.txt` — checksums for tracked files.

## Audit summary

The audit fixed centered-row state loss, the character-ROM source address,
`$D018` screen/charset selection, and CIA interrupt masking. The corrected
image retains the original `SYS 6144` contract.
## Documentation and license

Function-level documentation is in docs/FUNCTIONS.md. The project is released
under GPL-3.0; see LICENSE.
