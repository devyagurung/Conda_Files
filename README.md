# Conda_Files


 # Gen 811 Project 
 
 # Project: RNA seq analysis in Mouse Breast Cancer

 # Exploring various pipelines to analyze the RNA seq data 
 # Used Pair-wise raw fastq data. 
 
 Overview of the Workflow 
 
 <img width="894" alt="image" src="https://user-images.githubusercontent.com/10855866/168222173-f7f996f6-1767-40b1-aa8c-34b7e72a2407.png">

Table of Contents 
~ Getting Started 

I. Background: 

Cancer is a byproduct of many dysregulations, both within the cell and in the tumor microenvironment. It can occur due to mutations, or environmental factors. Breast cancer is one of the most common cancers found in women. In the United States alone, 255,000 cases of breast cancer are diagnosed in women and 2300 in men (CDC). Breast cancer is caused when cells in breast grow uncontrollably. In the study where I gathered raw fastq data from studied the breast cancer in genetically engineered mouse models. The mouse models carried Trp53-mutated breast cancer, along with Brca1 and Brca2 associated breast cancer and E-cadherin (Cdh1) mutated lobular breast cancer. 

This study was done in mice model to further understand the mechanism in human breast cancer. Cancer compromises the functions of the immune system, therefore understanding how it regulates cells and the microenvironment is vital in developing cancer immunotherapy. 

Methods: 
Steps in details 
II. Raw Sequencing Reads Analysis
   Fastq file data format 
1. 1st get the fastq raw data (RNA seq) from public databases.
   ~ The fastq raw data (RNA seq) from public databases
     Website link of data collection: https://www.ebi.ac.uk/ena/browser/view/PRJEB2203?show=reads    
2. Then run fastqc to check the quality of your reads. 
3. Fastqc files were checked in Filezilla. Filezilla was installed in computer. 

<img width="764" alt="image" src="https://user-images.githubusercontent.com/10855866/168224101-31e016ac-b237-4eee-a5a6-e3032add2d09.png">

<img width="802" alt="image" src="https://user-images.githubusercontent.com/10855866/168224153-9b080209-e6e4-411e-bccb-337e7b8c9b29.png">


5. Next, perform trimming. 
6. Trimming was done via trim_scriptV2 which has trimming scripts and parameters inside
7. Next, Fastqc were performed in trimming files. The trimmed fastqc files were checked in Filezilla

<img width="766" alt="image" src="https://user-images.githubusercontent.com/10855866/168223667-e4559ce9-f889-4655-a825-2470c45c5243.png">

<img width="745" alt="image" src="https://user-images.githubusercontent.com/10855866/168223789-67bb2527-7772-4d41-91c9-3f36e0fde43f.png">

10. Then, Genome Index were created using STAR
11. STAR was also used to do alignments of the sequence. Ran pair-end reads 
12. After STAR, output files such as .bam were generated which was used in next step.
13. FeatureCounts was performed on .bam files output 
14. Samtools was used on bam files to generate bam stats files, to create bam plot files. 
15. The output from featureCounts were used in R to see files. 





Citations

1.	https://www.cdc.gov/cancer/breast/basic_info/index.htm

2.	Varela I, Klijn C, Stephens PJ, et al. Somatic structural rearrangements in genetically engineered mouse mammary tumors. Genome Biology. 2010 ;11(10):R100. DOI: 10.1186/gb-2010-11-10-r100. PMID: 20942901; PMCID: PMC3218656


 
 
