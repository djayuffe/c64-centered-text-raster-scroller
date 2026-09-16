# Audit record

The supplied source could not assemble because its charset input was absent.
Static review also found that centered text was written using the text length
as its row, the character-ROM copy read from `$D800` instead of `$D000`, and
`$D018=$1A` moved the screen away from `$0400`.

Repairs:

- recovered and checked in the exact 2 KiB charset from the supplied PRG;
- preserved row state and wrote the requested color span;
- copied character ROM from `$D000`;
- selected screen `$0400`/charset `$1000` with `$D018=$14`;
- masked CIA IRQ sources before installing the raster handler.

Validation: ACME `--strict-segments` succeeds and emits a deterministic PRG.
Corrected build SHA-256: `dd2b7a716f4f7f2c7c700cdf76832ef5cf91deaba52cce3c51e615163d64d967`.
