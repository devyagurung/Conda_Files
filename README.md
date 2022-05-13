# Conda_Files


 # Gen 811 Project 
 
 # Project: RNA seq analysis in Mouse Breast Cancer

 # Exploring various pipelines to analyze RNA seq data 
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
Links to filezilla: it offere free FTP solution
https://filezilla-project.org/

<img width="802" alt="image" src="https://user-images.githubusercontent.com/10855866/168224153-9b080209-e6e4-411e-bccb-337e7b8c9b29.png">


4. Next, performed trimming. 
5. Trimming was done via trim_scriptV2 which has trimming scripts and parameters inside
6. Then, the Fastqc were performed in trimmed files. The trimmed fastqc files were also checked in Filezilla and compared. 


<img width="745" alt="image" src="https://user-images.githubusercontent.com/10855866/168223789-67bb2527-7772-4d41-91c9-3f36e0fde43f.png">

7. Then, Genome Index were created using STAR. 
For this project, Mouse genome was used from gencode. 
Version: GRCm39
https://www.gencodegenes.org/ 
options to filter: Use GTF file of (regions: CHR) Comprehensive gene annotation and Fasta files (Genome sequence, Regions: ALL). 

STAR manual: 
https://physiology.med.cornell.edu/faculty/skrabanek/lab/angsd/lecture_notes/STARmanual.pdf

Once the fasta files and gtf files were downloaded. 
Star was performed for generating genome index. 
Star: Generating genome index

8. STAR was also used to do alignments of the sequence. Ran pair-end reads 

9. After STAR, output files such as .bam were generated which was used in next step.

10. FeatureCounts was performed on .bam files output 


11. Samtools was used on bam files to generate bam stats files, to create bam plot files. 

Samtools output files from bam files such as png files were viewed in Filezilla. 

<img width="736" alt="image" src="https://user-images.githubusercontent.com/10855866/168225581-c3420d9f-5fec-4c08-8729-dd072797a47f.png">

<img width="734" alt="image" src="https://user-images.githubusercontent.com/10855866/168225649-ccdfcef6-1681-47d1-a209-cb888628097e.png">


12. The output from featureCounts were used in R to view the files and summary. 



Future Work Goals: 
Be able to creat ggplots in R. Generate differential gene expression and do normalization. 
This plots and figures were generated from GTEX data files which contained prepackged RNA-seq data.
Different libraries in R can be installed to run your samples. 

Fig A. Ggplot from R shows different types of cancer found in male and female.   

<img width="238" alt="image" src="https://user-images.githubusercontent.com/10855866/168307202-de4f674d-e9d7-444e-b360-439948d142ab.png">

Fig B. below show boxplots.
The plot shows causes of death in male and female population.     

<img width="266" alt="image" src="https://user-images.githubusercontent.com/10855866/168308743-e8cc115e-4350-4f9c-97ef-7ee1e082105e.png">

Fig C. 
Shows Differentially expressed genes based on adjusted P. Values 

<img width="300" alt="image" src="https://user-images.githubusercontent.com/10855866/168308828-8bb704fd-146e-411e-8f78-611a6f1827ec.png">




Citations

1.	https://www.cdc.gov/cancer/breast/basic_info/index.htm

2.	Varela I, Klijn C, Stephens PJ, et al. Somatic structural rearrangements in genetically engineered mouse mammary tumors. Genome Biology. 2010 ;11(10):R100. DOI: 10.1186/gb-2010-11-10-r100. PMID: 20942901; PMCID: PMC3218656


 
 
