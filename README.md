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

<img width="764" alt="image" src="https://user-images.githubusercontent.com/10855866/168224101-31e016ac-b237-4eee-a5a6-e3032add2d09.png">

<img width="802" alt="image" src="https://user-images.githubusercontent.com/10855866/168224153-9b080209-e6e4-411e-bccb-337e7b8c9b29.png">


4. Next, perform trimming. 
5. Trimming was done via trim_scriptV2 which has trimming scripts and parameters inside
6. Next, Fastqc were performed in trimming files. The trimmed fastqc files were checked in Filezilla

<img width="766" alt="image" src="https://user-images.githubusercontent.com/10855866/168223667-e4559ce9-f889-4655-a825-2470c45c5243.png">

<img width="745" alt="image" src="https://user-images.githubusercontent.com/10855866/168223789-67bb2527-7772-4d41-91c9-3f36e0fde43f.png">

7. Then, Genome Index were created using STAR. 
For this project, Mouse genome was used from gencode. 
Version: GRCm39
https://www.gencodegenes.org/ 
options to filter: Use GTF file of (regions: CHR) Comprehensive gene annotation and Fasta files (Genome sequence, Regions: ALL). 

<img width="349" alt="image" src="https://user-images.githubusercontent.com/10855866/168224508-200f2fe5-07d7-4acc-a2f8-1e1661746c16.png">
STAR manual: 
https://physiology.med.cornell.edu/faculty/skrabanek/lab/angsd/lecture_notes/STARmanual.pdf

Once the fasta files and gtf files were downloaded. 
Star was performed for generating genome index. 
Star: Generating genome index

<img width="468" alt="image" src="https://user-images.githubusercontent.com/10855866/168225018-2c71ca05-0f3f-43f5-bf23-75570cc8d896.png">

8. STAR was also used to do alignments of the sequence. Ran pair-end reads 
~ Alignment Output files: 1st Pair!

<img width="360" alt="image" src="https://user-images.githubusercontent.com/10855866/168225131-77b30376-878c-4909-b4a3-37c627db14d7.png">


Alignment Output files: 2nd Pair!

<img width="360" alt="image" src="https://user-images.githubusercontent.com/10855866/168225201-2e4b08b3-cca4-49b6-9288-345ff42cf85d.png">

9. After STAR, output files such as .bam were generated which was used in next step.

10. FeatureCounts was performed on .bam files output 

Output of FeatureCounts!
<img width="372" alt="image" src="https://user-images.githubusercontent.com/10855866/168225465-fc6f04a5-2035-47c5-8471-247ee5491a19.png">

<img width="344" alt="image" src="https://user-images.githubusercontent.com/10855866/168225489-1d4f1ad1-e216-4e13-81e6-df05ee809eeb.png">


11. Samtools was used on bam files to generate bam stats files, to create bam plot files. 

Samtools output files from bam files such as png files were viewed in Filezilla. 

<img width="736" alt="image" src="https://user-images.githubusercontent.com/10855866/168225581-c3420d9f-5fec-4c08-8729-dd072797a47f.png">

<img width="734" alt="image" src="https://user-images.githubusercontent.com/10855866/168225649-ccdfcef6-1681-47d1-a209-cb888628097e.png">

<img width="454" alt="image" src="https://user-images.githubusercontent.com/10855866/168225713-4a5c41e3-44e2-4d1a-9669-2ce2718f598f.png">


12. The output from featureCounts were used in R to see files. 

<img width="448" alt="image" src="https://user-images.githubusercontent.com/10855866/168225842-3759c2c0-2320-466e-bc56-011a944eda63.png">

<img width="466" alt="image" src="https://user-images.githubusercontent.com/10855866/168225934-b01cb43b-ff0d-48b6-ba2c-8f8d0a908d5f.png">






Citations

1.	https://www.cdc.gov/cancer/breast/basic_info/index.htm

2.	Varela I, Klijn C, Stephens PJ, et al. Somatic structural rearrangements in genetically engineered mouse mammary tumors. Genome Biology. 2010 ;11(10):R100. DOI: 10.1186/gb-2010-11-10-r100. PMID: 20942901; PMCID: PMC3218656


 
 
