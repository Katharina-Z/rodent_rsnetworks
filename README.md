# Resting State fMRI analysis pipeline
A pipeline for rodent functional MRI analysis

The overall data structure is:

-parent_directory
--subject1
      *MT.nii*
      *RSFMRI.nii*
...
--subjectN
      *MT.nii*
      *RSFMRI.nii*
--Templates
      *rat_brain.nii.gz*
      *rat.nii.gz*
--melodic
      *melodic_output*
      *dual_regression_output*
      
The script relies on an installation of fsl (5.10 and higher) and afni. Commands should be ran from the parent directory as most loops require definition of "datanames" i.e. a variable with the names of subject folders. Preprocessing is split into loops for checking the output of each stage. 

Before structural and functional images were passed to this pipeline, the voxel size was multiplied by a factor of 10 to bring the rodent image size closer to human brain size in SPM12. Further, SPM12 "set origin" and "reorient" were used to set the origin in each image/volume to the middle of the brain.
