# HOW TO
* Open Octave Programm
* navigate to this path (use "cd" or file browser)
* enter "source scripts/SmaartAsciiPlot.m"
* enter "source scripts/setSize.m"
* to use devices type: "source scripts/devices.m"
Now you're ready to plot, create an array with devices:
```devices = [None_H; SonyMdr_H; SonyMdrOff_H; Pamir_H];```
And send to Plot-command:
```figure = SmaartAsciiPlot(devices, 123);```

If you want to save this as a png type (XXX for filename):
```saveDiagramm(figure, "XXX");```
