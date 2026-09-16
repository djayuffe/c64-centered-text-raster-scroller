# DeepSeek v10h text-only source

PAL C64 text-mode demo with custom charset, centered logo, gradient colors,
raster bars, bottom scroller, and SID arpeggio.

## Build and run

```sh
acme --strict-segments -I . -f cbm -o v10h_text_only.prg \
  deepseek_asm_20251009_v10h_text_only_stable_nowarn_v2.s
x64sc -autostart v10h_text_only.prg
```

The charset extracted from the supplied PRG is checked in. The audit repairs
the centered-row routine, character-ROM source address, `$D018` screen/charset
selection, and CIA interrupt masking.
