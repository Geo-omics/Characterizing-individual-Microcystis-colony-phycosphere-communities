#This is a bash script that will perform quality trimming and filtering of Illumina MiSeq data for a 16S V4 analysis:
#Written by DJS on 17-Feb-2020
#Originally written for MiSeq data for Lake Erie H2O2 bottle experiments.

#This is a user defined variable. Should be the "stability file" created by make.file command in mothur:
stability_file=LE_H2O2.files

for i in `awk -F '\t' '{print $1}' LE_H2O2.files`; do
	file1=$(awk -F '\t' '{if($1=="'$i'") print $2}' LE_H2O2.files)
	file2=$(awk -F '\t' '{if($1=="'$i'") print $3}' LE_H2O2.files)
	#Noticed that some samples have reads below the target read length of 250 bp, remove these sequences:
	bbduk in1=${file1} in2=${file2} out1=${i}_R1.len_trim.fastq out2=${i}_R2.len_trim.fastq minlen=250 ftm=5
	#Trim the right end of the reads so that the average quality becomes Q20 (99% accuracy), then remove any reads where more than half of the read length was trimmed:
	bbduk in1=${i}_R1.len_trim.fastq in2=${i}_R2.len_trim.fastq out1=${i}_R1.len_trim.qtrim.fastq out2=${i}_R2.len_trim.qtrim.fastq qtrim=r trimq=20 minlen=125
done

#Remove the intermediate len_trim.fastq files:
rm *.len_trim.fastq
