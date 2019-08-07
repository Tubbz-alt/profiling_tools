#!/bin/bash
#BSUB -P gen130
#BSUB -J MINIW_MPI_OPENACC_TAU
#BSUB -o miniw_mpi_openacc_tau.o%J
#BSUB -e miniw_mpi_openacc_tau.e%J
#BSUB -W 10
#BSUB -nnodes 2
 

time jsrun -n 6 -r 3 --smpiargs="-gpu" -g 1  ./miniWeather_mpi_openacc
