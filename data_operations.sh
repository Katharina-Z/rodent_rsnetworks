#!/bin/bash/
#running everything from the parent folder of all subjects
datanames="1001
1002
1003
1004
1005
1006
1007
1009
1010"

datanames="
1011
1012
2001
2002
2003
2005
2006
2007
2008
"

#converting the structurals => need average_script
for i in $datanames
do 
cd $i
/home/brain/Downloads/average_script PD T1 MT
cd ../
done



#organising everything into folders
for i in $datanames
do 
cd $i
mkdir struc
mv combined_MT.nii ./struc
mv combined_PD.nii ./struc
mv combined_T1.nii ./struc
mkdir func
mv RSFMRI.nii ./func
mkdir dwi
mv DWI.nii ./dwi
mkdir old_files
mv *nii.gz old_files
cd ../
done

for i in $datanames
do 
cd $i/func
fslsplit RSFMRI.nii

fslmerge -t rest_e1.nii.gz vol0000.nii.gz vol0003.nii.gz vol0006.nii.gz vol0009.nii.gz vol0012.nii.gz vol0015.nii.gz vol0018.nii.gz vol0021.nii.gz vol0024.nii.gz vol0027.nii.gz vol0030.nii.gz vol0033.nii.gz vol0036.nii.gz vol0039.nii.gz vol0042.nii.gz vol0045.nii.gz vol0048.nii.gz vol0051.nii.gz vol0054.nii.gz vol0057.nii.gz vol0060.nii.gz vol0063.nii.gz vol0066.nii.gz vol0069.nii.gz vol0072.nii.gz vol0075.nii.gz vol0078.nii.gz vol0081.nii.gz vol0084.nii.gz vol0087.nii.gz vol0090.nii.gz vol0093.nii.gz vol0096.nii.gz vol0099.nii.gz vol0102.nii.gz vol0105.nii.gz vol0108.nii.gz vol0111.nii.gz vol0114.nii.gz vol0117.nii.gz vol0120.nii.gz vol0123.nii.gz vol0126.nii.gz vol0129.nii.gz vol0132.nii.gz vol0135.nii.gz vol0138.nii.gz vol0141.nii.gz vol0144.nii.gz vol0147.nii.gz vol0150.nii.gz vol0153.nii.gz vol0156.nii.gz vol0159.nii.gz vol0162.nii.gz vol0165.nii.gz vol0168.nii.gz vol0171.nii.gz vol0174.nii.gz vol0177.nii.gz vol0180.nii.gz vol0183.nii.gz vol0186.nii.gz vol0189.nii.gz vol0192.nii.gz vol0195.nii.gz vol0198.nii.gz vol0201.nii.gz vol0204.nii.gz vol0207.nii.gz vol0210.nii.gz vol0213.nii.gz vol0216.nii.gz vol0219.nii.gz vol0222.nii.gz vol0225.nii.gz vol0228.nii.gz vol0231.nii.gz vol0234.nii.gz vol0237.nii.gz vol0240.nii.gz vol0243.nii.gz vol0246.nii.gz vol0249.nii.gz vol0252.nii.gz vol0255.nii.gz vol0258.nii.gz vol0261.nii.gz vol0264.nii.gz vol0267.nii.gz vol0270.nii.gz vol0273.nii.gz vol0276.nii.gz vol0279.nii.gz vol0282.nii.gz vol0285.nii.gz vol0288.nii.gz vol0291.nii.gz vol0294.nii.gz vol0297.nii.gz 

fslmerge -t rest_e2.nii.gz vol0001.nii.gz vol0004.nii.gz vol0007.nii.gz vol0010.nii.gz vol0013.nii.gz vol0016.nii.gz vol0019.nii.gz vol0022.nii.gz vol0025.nii.gz vol0028.nii.gz vol0031.nii.gz vol0034.nii.gz vol0037.nii.gz vol0040.nii.gz vol0043.nii.gz vol0046.nii.gz vol0049.nii.gz vol0052.nii.gz vol0055.nii.gz vol0058.nii.gz vol0061.nii.gz vol0064.nii.gz vol0067.nii.gz vol0070.nii.gz vol0073.nii.gz vol0076.nii.gz vol0079.nii.gz vol0082.nii.gz vol0085.nii.gz vol0088.nii.gz vol0091.nii.gz vol0094.nii.gz vol0097.nii.gz vol0100.nii.gz vol0103.nii.gz vol0106.nii.gz vol0109.nii.gz vol0112.nii.gz vol0115.nii.gz vol0118.nii.gz vol0121.nii.gz vol0124.nii.gz vol0127.nii.gz vol0130.nii.gz vol0133.nii.gz vol0136.nii.gz vol0139.nii.gz vol0142.nii.gz vol0145.nii.gz vol0148.nii.gz vol0151.nii.gz vol0154.nii.gz vol0157.nii.gz vol0160.nii.gz vol0163.nii.gz vol0166.nii.gz vol0169.nii.gz vol0172.nii.gz vol0175.nii.gz vol0178.nii.gz vol0181.nii.gz vol0184.nii.gz vol0187.nii.gz vol0190.nii.gz vol0193.nii.gz vol0196.nii.gz vol0199.nii.gz vol0202.nii.gz vol0205.nii.gz vol0208.nii.gz vol0211.nii.gz vol0214.nii.gz vol0217.nii.gz vol0220.nii.gz vol0223.nii.gz vol0226.nii.gz vol0229.nii.gz vol0232.nii.gz vol0235.nii.gz vol0238.nii.gz vol0241.nii.gz vol0244.nii.gz vol0247.nii.gz vol0250.nii.gz vol0253.nii.gz vol0256.nii.gz vol0259.nii.gz vol0262.nii.gz vol0265.nii.gz vol0268.nii.gz vol0271.nii.gz vol0274.nii.gz vol0277.nii.gz vol0280.nii.gz vol0283.nii.gz vol0286.nii.gz vol0289.nii.gz vol0292.nii.gz vol0295.nii.gz vol0298.nii.gz 

fslmerge -t rest_e3.nii.gz vol0002.nii.gz vol0005.nii.gz vol0008.nii.gz vol0011.nii.gz vol0014.nii.gz vol0017.nii.gz vol0020.nii.gz vol0023.nii.gz vol0026.nii.gz vol0029.nii.gz vol0032.nii.gz vol0035.nii.gz vol0038.nii.gz vol0041.nii.gz vol0044.nii.gz vol0047.nii.gz vol0050.nii.gz vol0053.nii.gz vol0056.nii.gz vol0059.nii.gz vol0062.nii.gz vol0065.nii.gz vol0068.nii.gz vol0071.nii.gz vol0074.nii.gz vol0077.nii.gz vol0080.nii.gz vol0083.nii.gz vol0086.nii.gz vol0089.nii.gz vol0092.nii.gz vol0095.nii.gz vol0098.nii.gz vol0101.nii.gz vol0104.nii.gz vol0107.nii.gz vol0110.nii.gz vol0113.nii.gz vol0116.nii.gz vol0119.nii.gz vol0122.nii.gz vol0125.nii.gz vol0128.nii.gz vol0131.nii.gz vol0134.nii.gz vol0137.nii.gz vol0140.nii.gz vol0143.nii.gz vol0146.nii.gz vol0149.nii.gz vol0152.nii.gz vol0155.nii.gz vol0158.nii.gz vol0161.nii.gz vol0164.nii.gz vol0167.nii.gz vol0170.nii.gz vol0173.nii.gz vol0176.nii.gz vol0179.nii.gz vol0182.nii.gz vol0185.nii.gz vol0188.nii.gz vol0191.nii.gz vol0194.nii.gz vol0197.nii.gz vol0200.nii.gz vol0203.nii.gz vol0206.nii.gz vol0209.nii.gz vol0212.nii.gz vol0215.nii.gz vol0218.nii.gz vol0221.nii.gz vol0224.nii.gz vol0227.nii.gz vol0230.nii.gz vol0233.nii.gz vol0236.nii.gz vol0239.nii.gz vol0242.nii.gz vol0245.nii.gz vol0248.nii.gz vol0251.nii.gz vol0254.nii.gz vol0257.nii.gz vol0260.nii.gz vol0263.nii.gz vol0266.nii.gz vol0269.nii.gz vol0272.nii.gz vol0275.nii.gz vol0278.nii.gz vol0281.nii.gz vol0284.nii.gz vol0287.nii.gz vol0290.nii.gz vol0293.nii.gz vol0296.nii.gz vol0299.nii.gz 
rm vol*

3dcalc -a rest_e1.nii.gz -b rest_e2.nii.gz -c rest_e3.nii.gz -expr 'a+b+c' -prefix combined

3dAFNItoNIFTI combined+tlrc.BRIK
rm combined+tlrc.BRIK combined+tlrc.HEAD
cd ../../
done

#next cd into subject folder
for i in $datanames
do
cd ./${i}/struc/
#bet struc
#fast -I 40 -B -n 3 -t 3 -b -f 0.003 -O 7 -l 13 -o MT 

bet combined_MT.nii bet_MT -f 0.65 -R
bet bet_MT.nii.gz bet2_MT.nii.gz -f 0.55 -g 0.15 
bet bet2_MT.nii.gz MT_brain -f 0.4

cd ../func
#bet func
bet combined.nii bet_func -f 0.6 -R
bet bet_func.nii.gz bet2_func -f 0.6

robustfov -i bet2_func -r robust_func_bet
#fov results
#0.000000 64.000000 14.000000 49.000000 0.000000 48.000000 
#flirt -in combined.nii -applyxfm -init /usr/share/fsl/5.0/etc/flirtsch/ident.mat -out combined_roi -paddingsize 0.0 -interp trilinear -ref robust_func_bet #doesnt work


dims=`robustfov -i bet2_func -r robust_func_bet | sed -n '2 p'`
fslroi combined.nii combined_roi $dims

bet robust_func_bet bet_func_robust -f 0.55 -m 
fslmaths combined_roi.nii -mas bet_func_robust_mask.nii.gz betted_func 
#done
#discard first 4 volumes
fslroi betted_func d4_betted_func 3 99
#slice timing + detrending
slicetimer -i d4_betted_func -o func_tshift --ocustom=../../slice_timing
fslmaths func_tshift -bptf 16.5 -1 -mas bet_func_robust_mask func_tfilter

#smoothing FWHM = 2.355 * sigma
# sigma 1.27 for 3mm FWHM, sigma 2.54 for 6mm
fslmaths func_tfilter -kernel gauss 1.27 -fmean func_smooth

cd ../
#registration ( cd into $i )
flirt -in ./func/betted_func.nii.gz -ref ./struc/MT_brain.nii -omat ./func/func2struc.mat -dof 6 
#rigid registration of func 2 struc
flirt -in ./struc/MT_brain.nii.gz -ref ../Templates/rat_brain.nii.gz -omat ./struc/struc2temp.mat -dof 12
#initial guess for struc 2 temp
fnirt --ref=../Templates/rat.nii --in=./struc/combined_MT.nii --aff=./struc/struc2temp.mat  --refmask=../Templates/rat_brain_mask.nii.gz --subsamp=4,2,1,1 --infwhm=2,1,0,0 --reffwhm=1,0,0,0 -v --lambda=200,75,40,20
#high quality non linear registration for struc 2 temp
applywarp --ref=../Templates/rat.nii --in=./func/func_smooth.nii --out=./func/funcInTemp.nii --warp=./struc/combined_MT_warpcoef.nii.gz --premat=./func/func2struc.mat
#applying both rigid and nonlinear reg to the func to get func in Temp space
cd ../
done



#prep a file list that includes all preprocessed func images (cded into New_folder or subjects parent dir)
find `pwd` -name *funcInTemp.nii.gz > melodic/input_files.txt
#and run melodic
melodic -i input_files.txt -o groupICA30_all --nobet -a concat --tr=3 -m ../Templates/rat_brain_mask.nii.gz --report --Oall -d 30

#and run dual regression
dual_regression groupICA30_all/melodic_IC.nii.gz 1 melodic_all.mat melodic_all.con 500 dual_regression_ttest `cat input_files.txt`



#########run dual regression on both groups
find `pwd` -name *funcInTemp.nii.gz #delete the func2 images
melodic -i both_groups.txt -o both_groupsICA20 --nobet -a concat --tr=3 -m ../Templates/rat_brain_mask.nii.gz --report --Oall -d 20
	#next dual reg
dual_regression both_groupsICA20/melodic_IC.nii.gz 1 young_vs_old.mat young_vs_old.con 500 both_groupsICA20/dual_reg_Young_vs_Old `cat both_groups.txt`









#dealing with motion
fsl_motion_outliers -i combined.nii --dvars -s dvars_motion -o motion_confound
fsl_glm -i filtered_func_data.nii.gz -d design_with_nuisance.mat --out_res=filtered_func_data_new.nii.gz

mcflirt -in combined.nii 

#run melodic - cd into the folder where the ICA should be run
melodic -i input_files.txt -o groupICA40 --nobet -a concat --tr=3 -m ../Templates/rat_brain_mask.nii.gz --report --Oall -d 40
melodic -i input_files.txt -o groupICA20 --nobet -a concat --tr=3 -m ../Templates/rat_brain_mask.nii.gz --report --Oall -d 20

# >>> output from both d40 and d20 ICA is v smooth, whole cortex included
# >>> try ICA with no smoothing at all
for i in $datanames; do
cd $i
applywarp --ref=../Templates/rat.nii --in=./func/func_tfilter.nii --out=./func/funcInTemp.nii --warp=./struc/combined_MT_warpcoef.nii.gz --premat=./func/func2struc.mat
cd ../
done
#and ICA with no smoothing
melodic -i input_files.txt -o groupICA20_nosmooth --nobet -a concat --tr=3 -m ../Templates/rat_brain_mask.nii.gz --report --Oall -d 20
#dual regression
dual_regression groupICA20_nosmooth/melodic_IC.nii.gz 1 melodic.mat melodic.con 500 dual_regression_ttest `cat input_files.txt`


# >>> some smoothing should really be done!
for i in $datanames; do
cd $i
fslmaths ./func/func_tfilter -kernel gauss 1.27 -fmean ./func/func_smooth
applywarp --ref=../Templates/rat.nii --in=./func/func_smooth.nii --out=./func/funcInTemp.nii --warp=./struc/combined_MT_warpcoef.nii.gz --premat=./func/func2struc.mat
cd ../
done


