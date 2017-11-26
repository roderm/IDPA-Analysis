function setSize(hf)
  %# centimeters units
  X = 30;                  %# A4 paper size
  Y = 20;                  %# A4 paper size
  X = 21;
  Y = 14;
  xMargin = 1;               %# left/right margins from page borders
  yMargin = 1;               %# bottom/top margins from page borders
  xSize = X - 2*xMargin;     %# figure size on paper (widht & hieght)
  ySize = Y - 2*yMargin;     %# figure size on paper (widht & hieght)

  set(hf, 'PaperUnits','centimeters')
  set(hf, 'PaperSize',[Y X])
  set(hf, 'PaperPosition',[xMargin yMargin xSize ySize])
  set(hf, 'PaperOrientation','portrait')
endfunction