#!/bin/bash
#
# # leia failid kataloogid ja lingid
echo -n "Sisesta kataloogi nimi: " # peab sisestama kataloogi
read kataloog # loeb sisetataut
find * -type f -exec echo fail: {} \; # otsib kõik failid soovitud kaustast ja lisab nende ette fail:
a=$( find * -type f -exec echo fail: {} \; | wc -l ) # a võrdub ridade arv otsitust failidest
find * -type d -exec echo kataloog: {} \; # otsib soovitud kataloogist kõik kataloogid
b=$( find * -type d -exec echo kataloog: {} \; | wc -l ) # b võrdub ridade arv otsitud kataloogidest
find * -type l -exec echo link: {} \; # otsib soovitud kaustast kõik lingid
c=$( find * -type l -exec echo link: {} \; | wc -l ) # c võrdub ridade arv otsitud linkidest
echo "selles kaustas on $a faili, $b kataloogi ja $c linki" # väljastab mitu faili, kataloogi ja linki
# skripti lõpp
