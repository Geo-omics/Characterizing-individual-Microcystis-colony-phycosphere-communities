# Characterizing-individual-Microcystis-colony-phycosphere-communities
This repository holds all metadata tables, scripts, and R code for the bioinformatic and statistical analysis associated with the manuscript: Individual Microcystis colonies harbor distinct bacterial communities that differ by Microcystis oligotype and with time.

The raw sequence data can be found in NCBI SRA under the following BioProjects:  
For the Microcystis colony sequences: PRJNA645738  
For whole water and <100 um community sequences from 2017-2019: PRJNA646259  
Note that the 2014 whole water community sequences were published as part of a later study. See the citation in the manuscript. The script used to download these sequences is available in this repository in the Berry2017_sra_explorer_fastq_download.sh file.  

Information on files:  
*.files.QCd = mapping file for mothur to assemble paired sequences  
*.shared = OTU abundance tables for colony and/or whole water community samples  
*.taxonomy = The taxonomy assigned to each OTU. Note that Silvia does not have conventional assignments for Proteobacteria classes (for example many Betaproteobacteria are listed as Gammaprotoebacteria), so some of the higher level taxonomies of genus/families were changed to reflect the taxonomies listed in NCBI.  
*.metadata = Metadata and water chemistry data associated with each DNA sample  

Note these scripts require a shell/linux computing environment and R version 4.0.1

Major third party software used here (outside of the R packages listed in the respective markdown files) are:
FastQC v. 0.11.8
BBDuk v. 38.84
MOTHUR v. 1.43.0
Minimum Entropy Decomposition v. 2.1

Please address all questions or requests to:  
Derek Smith (smitdere@umich.edu)  
Gregory Dick (gdick@umich.edu)  


