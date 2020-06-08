#!/bin/bash

echo "Szia! Kérlek, add meg a neved!"
read nev
echo "Köszöntelek programban " $nev"!"
echo "Kérlek, add meg, hogy ilyen matematikai feladatot szeretnél megoldani!"
echo "A feladat elvegzesehez add meg a kovetkezo felsorolt matematikai muveletek sorszamat!"
echo "1. Kor terulete, kerulete"
echo "2. Negyzet terulete, kerulete"
echo "3. Teglalap terulete, kerulete"
echo "4. Haromszog megszerkeszthetoseg"
echo "5. Pitagorasz-tetel"
echo "6. Trapez terulete, kerulete"
echo "7. Negyzetalapu hasab felszin, terfogat"
echo "8. Henger felszin, terfogat"
echo "9. Gomb felszine, terfogata"
echo
echo "A feladatod sorszama: "
read feladat
echo
if [ $feladat == "1" ] ; then
echo "Kerlek, add meg csak szamokkal, hogy mennyi a sugar erteke!"

read SUGAR
PI=$(echo "scale=6; 22/7" | bc)
echo "A pi erteke: $PI"

KER=$(echo "scale=6; $PI * $SUGAR * 2" | bc) 
TER=$(echo "scale=5; $PI * ($SUGAR * $SUGAR)" | bc)

echo "A kor kerulete: $KER"
echo "A kor terulete: $TER"

elif [ $feladat == "2" ]; then
echo "Kerlek, add meg csak szamokkal, hogy mennyi a negyzet oldala!"

read A
KERN=$(echo "scale=3; $A * 4" | bc)
TERN=$(echo "scale=3; $A * $A" | bc)

echo "A negyzet kerulete $KERN"
echo "A negyzet terulete $TERN"

elif [ $feladat == "3" ]; then
echo "Kerlek, add meg csak szamokkal, hogy mennyi a teglalap ket oldala!"
echo "Az A oldal hossza:" 
read AT
echo "A B oldal hossza:" 
read BT

KERT=$(echo "scale=3; ($AT + $BT) * 2" | bc)
TERT=$(echo "scale=3; $AT * $BT" | bc)

echo "A teglalap kerulete $KERT"
echo "A teglalap terulete $TERT"

elif [ $feladat == "4" ]; then
echo "Kerlek, add meg csak szamokkal, hogy mennyi a haromszog oladalainak a hossza!"
echo "Az  A oldal hossza:"
read AH
echo "A B oldal hossza:"
read BH
echo "A C oldal hossza:"
read CH

AB=$(echo "scale=3; $AH + $BH" | bc)
AC=$(echo "scale=3; $AH + $CH" | bc)
BC=$(echo "scale=3; $BH + $CH" | bc)

if [ $AB -gt $CH -a  $AC -gt $BH -a  $BC -gt $AH ]; then
echo "A haromszog megszerkesztheto!"

else 
echo "A haromszog nem szerkesztheto meg!"
fi

elif [ $feladat == "5" ]; then
echo "Kerlek, add meg csak szamokkal, hogy mik a rendelkezésesre allo adatok!"
echo "A keresett oldal (also befogo = AP, oldalso befogo = BP, atfogo = CP):"
read oldal

if [ $oldal == "AP" -o  $oldal == "ap" ]; then
echo "A B oldal hossza: "
read BP1
echo "A C oldal hossza: "
read CP1

AP1=$(echo "scale=3; sqrt(($CP1 * $CP1) - ($BP1 * $BP1))" | bc)
echo "Az A oldal hossza: $AP1"

elif [ $oldal == "BP" -o  $oldal == "bp" ]; then
echo "Az A oldal hossza: "
read AP2
echo "A C oldal hossza: "
read CP2

BP2=$(echo "scale=3; sqrt(($CP2 * $CP2) - ($AP2 * $AP2))" | bc)
echo "A B oldal hossza: $BP2"

elif [ $oldal == "CP" -o  $oldal == "cp" ]; then
echo "Az A oldal hossza: "
read AP3
echo "A B oldal hossza: "
read BP3

CP3=$(echo "scale=3; sqrt(($AP3 * $AP3) + ($BP3 * $BP3))" | bc)
echo "A C oldal hossza: $CP3"

else 
echo "Hibás érték!"

fi

elif [ $feladat == "6" ]; then 
echo "Kerlek, add meg csak szamokkal, hogy milyen hosszuak a trapez oldalai es magassaga!"
echo "Also alap (a):"
read TA

echo "Szár (b):"
read TB

echo "Szár (d):"
read TD

echo "Felso alap (c):"
read TC

echo "Magassag (m):"
read TM

if [ $TB -eq $TD ]; then
echo "A trapezod hurtrapez!"

else
echo "A trapezod nem hurtapez!"
fi

TKER=$(echo "scale=3; $TA + $TB + $TC + $TD" | bc)
TTER=$(echo "scale=3; (($TA + $TC) * $TM) / 2" | bc)

echo "A trapezod kerulete: $TKER"
echo "A trapezod terulete: $TTER"

elif [ $feladat == "7" ]; then
echo "Kerlek, add meg csak szamokkal a negyzet alapu hasab adatait!"
echo "Alap oldalanak hossza:"
read alap

echo "Magassag:"
read mag

HASFEL=$(echo "scale=3; (2 * ($alap * $alap)) + 4 * $mag" | bc)
HASTER=$(echo "scale=3; (2 * ($alap * $alap) * $mag)" |  bc)

echo "A negyzet alapu hasabod felszine: $HASFEL"
echo "A negyzet alapu hasabod terfogata: $HASTER"

elif [ $feladat == "8" ]; then
echo "Kerlek, add meg csak szamokkal a hengered magassagat, majd alapjanak sugarat!"
echo "Magassag:"
read hengm

echo "Sugar:"
read hengs

PI=$(echo "scale=6; 22/7" | bc)
echo "A pi erteke: $PI"

HENGF=$(echo "scale=3; 2 * $PI * $hengs * ($hengs + $hengm)" | bc)
HENGT=$(echo "scale=3; $PI * $hengs * $hengs * $hengm" | bc)

echo "A hengered felszine: $HENGF"
echo "A hengered terfogata: $HENGT"

elif [ $feladat == "9" ]; then
echo "Kerlek, add meg csak szamokkal a gombod sugarat!"
echo "Sugar:"
read gombs

PI=$(echo "scale=6; 22/7" | bc)
echo "A pi erteke: $PI"

GF=$(echo "scale=3; 4 * $PI * ($gombs * $gombs)" | bc)
GT=$(echo "scale=3; (4/3) * $PI * ($gombs * $gombs * $gombs)" | bc)

echo "A gombod felszine: $GF"
echo "A gombod terfogata: $GT"

fi
