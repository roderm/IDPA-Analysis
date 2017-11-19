# example:
# files = ['./None-H.txt'; './Pamir-H.txt'; './BoseOn-H.txt'];
# colors = ['b'; 'k'; 'g'];
# dbcorrection = 123;
# SmaartAsciiPlot(files, colors, dbcorrection);

function figure=SmaartAsciiPlot(files, dbcorrection)
  figure = figure()

  for i=1:rows(files)
    Array=dlmread(deblank(files{i,1}), '', 3, 0);
    frequency=Array(:,1);
    altitude=Array(:,2);
    altitude=addDb(altitude, dbcorrection);
    
    semilogx(frequency, altitude, deblank(files{i,2}));
    hold on
  endfor
  
  hold on
  xscales=[16 220 1000 4000 10000 20000];
  xlabels=["16Hz";"220Hz";"1kHz"; "4kHz"; "10kHz";"20kHz"];
  set(gca,'xtick',xscales);
  set(gca, 'xticklabel', xlabels);

  ylabel("Laustärke [dB(A)]");
  xlabel("Frequenz");
  h = legend(files{:,3});
  grid minor on
  
  hold off
endfunction

function saveDiagramm(hf, hname)
  set (hf, "visible", "off");
  setSize(hf);
  saveas (hf, [pwd '/' hname '.png'], "png");
endfunction

function retval = addDb (col, db)
  retval = col;
  for i = 1:rows(col)
      retval(i) = col(i)+db;
  endfor
endfunction

