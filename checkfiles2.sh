#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
echo "<== rplpl-slurm.queue1-dy-z1d-xlarge-1.1.out ==>"
head -n 1 rplpl*.out
echo "<== rs1a-slurm.queue1-dy-z1d-2xlarge-1.3.out ==>"
head -n 1 rs1a*.out
echo "<== rs2a-slurm.queue1-dy-z1d-2xlarge-2.4.out ==>"
head -n 1 rs2a*.out
echo "<== rs3a-slurm.queue1-dy-z1d-2xlarge-3.5.out ==>"
head -n 1 rs3a*.out
echo "<== rs4a-slurm.queue1-dy-z1d-2xlarge-4.6.out ==>"
head -n 1 rs4a*out
echo "<== rse-slurm.queue1-dy-z1d-xlarge-1.2.out ==>"
head -n 1 rse*.out

echo "End Times"
echo "<== rplpl-slurm.queue1-dy-z1d-xlarge-1.1.out ==>"
tail -n 5 rplpl*.out
echo "<== rs1a-slurm.queue1-dy-z1d-2xlarge-1.3.out ==>"
tail -n 5 rs1a*.out
echo "<== rs2a-slurm.queue1-dy-z1d-2xlarge-2.4.out ==>"
tail -n 5 rs2a*.out
echo "<== rs3a-slurm.queue1-dy-z1d-2xlarge-3.5.out ==>"
tail -n 5 rs3a*.out
echo "<== rs4a-slurm.queue1-dy-z1d-2xlarge-4.6.out ==>"
tail -n 5 rs4a*.out
echo "<== rse-slurm.queue1-dy-z1d-xlarge-1.2.out ==>"
tail -n 5 rse*.out
