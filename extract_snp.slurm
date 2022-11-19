#!/bin/bash
#SBATCH --partition=physical
#SBATCH --time=0-3:00:00
#SBATCH --cpus-per-task 3
#SBATCH --output=./output/sample-%x.%j.out
#SBATCH --error=./output/sample-%x.%j.err
#SBATCH --mail-user=sdighe@student.unimelb.edu.au
#SBATCH --mail-type=ALL
module purge

cat sample_chr2.csv | sed -n -e '1p;/rs7578597/p;/rs243021/p;/rs7593730/p;/rs552976/p;/rs7578326/p' > ./selected_SNPs/selected_snp_chr2.csv
cat sample_chr1.csv | sed -n -e '1p;/rs10923931/p;/rs2779116/p;/rs340874/p' > ./selected_SNPs/selected_snp_chr1.csv
cat sample_chr3.csv | sed -n -e '1p;/rs1801282/p;/rs4607103/p;/rs11708067/p;/rs1470579/p' > ./selected_SNPs/selected_snp_chr3.csv
cat sample_chr4.csv | sed -n -e '1p;/rs10010131/p' > ./selected_SNPs/selected_snp_chr4.csv
cat sample_chr6.csv | sed -n -e '1p;/rs7754840/p;/rs1800562/p;/rs9472138/p' > ./selected_SNPs/selected_snp_chr6.csv
cat sample_chr7.csv | sed -n -e '1p;/rs2191349/p;/rs864745/p;/rs4607517/p;/rs4607517/p;/rs972283/p' > ./selected_SNPs/selected_snp_chr7.csv
cat sample_chr8.csv | sed -n -e '1p;/rs4737009/p;/rs896854/p;/rs13266634/p' > ./selected_SNPs/selected_snp_chr8.csv
cat sample_chr9.csv | sed -n -e '1p;/rs10811661/p;/rs13292136/p' > ./selected_SNPs/selected_snp_chr9.csv
cat sample_chr10.csv | sed -n -e '1p;/rs12779790/p;/rs1111875/p' > ./selected_SNPs/selected_snp_chr10.csv
cat sample_chr11.csv | sed -n -e '1p;/rs2334499/p;/rs231362/p;/rs2237892/p;/rs5215/p;/rs1552224/p;/rs1387153/p;/rs10830963/p;' > ./selected_SNPs/selected_snp_chr11.csv
cat sample_chr12.csv | sed -n -e '1p;/rs1153188/p;/rs1531343/p;/rs7961581/p;/rs7957197/p' > ./selected_SNPs/selected_snp_chr12.csv
cat sample_chr13.csv | sed -n -e '1p;/rs7998202/p;' > ./selected_SNPs/selected_snp_chr13.csv
cat sample_chr15.csv | sed -n -e '1p;/rs11634397/p;/rs8042680/p' > ./selected_SNPs/selected_snp_chr15.csv
cat sample_chr16.csv | sed -n -e '1p;/rs9939609/p' > ./selected_SNPs/selected_snp_chr16.csv
cat sample_chr17.csv | sed -n -e '1p;/rs1046896/p' > ./selected_SNPs/selected_snp_chr17.csv
cat sample_chr22.csv | sed -n -e '1p;/rs855791/p' > ./selected_SNPs/selected_snp_chr22.csv

my-job-stats -a -n -s

