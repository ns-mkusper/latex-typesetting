for i in */*tex;do
    pdflatex $i
    wait
    convert ${i/tex/pdf} -resize $((1684 / 4))x$((2380 / 4))\> ${i/tex/png}
done
