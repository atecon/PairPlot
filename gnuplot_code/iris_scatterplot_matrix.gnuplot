set size square

unset key
unset xtics
unset ytics

binwidth=0.1
bin(x,width)=width*floor(x/width) + binwidth/2.0

set boxwidth 0.9*binwidth

set terminal pdfcairo enhanced font "League Spartan,8" size 10cm,10cm;
set output "Iris_scatterplot_matrix.pdf";
set multiplot layout 4,4\
              margins 0.05,0.95,0.05,0.95\
              spacing screen 0.0

set offsets 0.25,0.25,0.25,0.25
set pointsize 0.5

do for [i=1:4] {
  do for [j=1:4] {

    if (i == 1) {
      if (j == 1) {
        set x2label "Sepal length";
        set  ylabel "Sepal length";
      }
      if (j == 2) {
        set x2label "Sepal width";
        set  ylabel "";
      }
      if (j == 3) {
        set x2label "Petal length";
        set  ylabel "";
      }
      if (j == 4) {
        set x2label "Petal width";
        set  ylabel "";
      }
    }
    else {
      if (j == 1) {
        if (i == 2) {
            set x2label "";
            set  ylabel "Sepal width";
        }
        if (i == 3) {
            set x2label "";
            set  ylabel "Petal length";
        }
        if (i == 4) {
            set x2label "";
            set  ylabel "Petal width";
        }
      }
      else {
        set x2label "";
        set  ylabel "";
      }
    }

    if (i != j) {
      plot "iris.txt" index 0 using i:j with points pt 7 lc rgb '#C41E3A',\
           ""                 index 1 using i:j with points pt 7 lc rgb '#4682B4',\
           ""                 index 2 using i:j with points pt 7 lc rgb '#FFBF00';
    }
    else {
      plot "iris.txt" using (bin(column(i),binwidth)):(1.0) smooth freq with boxes fs solid 0.5 lc '#999999';
    }
  }
}