# Function reference

This build is the centered-text/raster/scroller variant.

| Function | Responsibility |
|---|---|
| Start / IRQ_Init | Initializes the VIC/CIA state and raster handler. |
| CopyROMLowerTo2800 | Copies character ROM data from the correct $D000 source. |
| CenterPrintRow | Measures, centers, and colors a text row without losing row state. |
| ColorizeLogo / ColorizeRowGrad | Applies gradient colors to text rows. |
| InitScroller / Scroller_Tick | Initializes and advances the message. |
| SID_Init / SID_Tick | Starts and advances the SID arpeggio. |

The checked-in charset makes the build deterministic and offline.
