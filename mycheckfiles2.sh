#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"

echo "==> rs1-slurm.queue1-dy-z1d-2xlarge-1.2.out <=="
tail -n 5 rs1*.out

echo "==> rs2-slurm.queue1-dy-z1d-2xlarge-2.3.out <=="
tail -n 5 rs2*.out

echo "==> rs3-slurm.queue1-dy-z1d-2xlarge-3.4.out <=="
tail -n 5 rs3*.out

echo "==> rs4-slurm.queue1-dy-z1d-2xlarge-4.5.out <=="
tail -n 5 rs4*.out

echo "==> rplpl-slurm.queue1-dy-z1d-2xlarge-1.1.out <=="
tail -n 5 rplpl*.out
 
