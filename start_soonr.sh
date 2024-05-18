#!/bin/bash
cd /Auto
S="soonr.jar"
if [ ! -f ${S} ] ; then
   curl -o soonr.jar -L https://us.workplace.datto.com/filelink/6813-79cc5be9-b5c9d2ad2e-2
fi
T=`date '+%Y-%m-%d_%H-%M-%S'`
L="log/awp.log"
BK="log/${T}.log"
echo log/${T}awp.log 
if [ ! -f log ] ; then
   mkdir log 
fi
if [ -f ${L} ] ; then
   mv ${L} ${BK}
fi
java -jar soonr.jar 2>1 | tee ${L}

