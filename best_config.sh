# Best Configuration for ComplSCL
#
bash run.sh train ComplSCL FB15k 0 0 1024 256 1000 24.0 1.0 0.0001 150000 16 -de
bash run.sh train ComplSCL FB15k-237 0 0 1024 256 1000 9.0 1.0 0.00005 100000 16 -de
bash run.sh train ComplSCL wn18 0 0 512 1024 500 12.0 0.5 0.0001 80000 8 -de
bash run.sh train ComplSCL wn18rr 0 0 512 1024 500 6.0 0.5 0.00005 80000 8 -de
bash run.sh train ComplSCL countries_S1 0 0 512 64 1000 0.1 1.0 0.000002 40000 8 -de --countries
bash run.sh train ComplSCL countries_S2 0 0 512 64 1000 0.1 1.0 0.000002 40000 8 -de --countries
bash run.sh train ComplSCL countries_S3 0 0 512 64 1000 0.1 1.0 0.000002 40000 8 -de --countries
bash run.sh train ComplSCL YAGO3-10 0 0 1024 400 500 24.0 1.0 0.0002 100000 4 -de
