#!/bin/bash

# python PLEK_setup.py
$CXX -c svm.cpp
$CC -g -Wall svm-train.c svm.o -o svm-train -lstdc++ -lm
$CC -g -Wall svm-predict.c svm.o -o svm-predict  -lstdc++ -lm
$CC -g -Wall svm-scale.c svm.o -o svm-scale  -lstdc++ -lm
$CC -g -Wall PLEK_main.c -o PLEK -lm
$CC -g -Wall PLEK_spsn.c -o PLEK_spsn -lm

chmod +x *.py
chmod +x *.R
cp PLEK ${PREFIX}/bin
cp PLEK.model ${PREFIX}/bin
cp PLEK_spsn ${PREFIX}/bin
cp svm-predict ${PREFIX}/bin
cp svm-scale ${PREFIX}/bin
cp svm-train ${PREFIX}/bin
cp *.py ${PREFIX}/bin
cp *.R ${PREFIX}/bin
cp PLEK.range ${PREFIX}/bin
