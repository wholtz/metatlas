#!/bin/bash

FILES="
/project/projectdirs/metatlas/raw_data/akuftin/20201116_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530/20201117_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530_POS_MSMS_76-PS-73_Heated-organic-soil-Oct-28y_E_Rg70to1050-CE205060-WaterExt-S1_Run258.h5 
/project/projectdirs/metatlas/raw_data/akuftin/20201116_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530/20201117_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530_POS_MSMS_80-PS-77_Heated-organic-soil-Oct-13y_D_Rg70to1050-CE205060-WaterExt-S1_Run197.h5 
/project/projectdirs/metatlas/raw_data/akuftin/20201116_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530/20201117_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530_POS_MSMS_83-PS-80_Heated-organic-soil-Oct-13y_E_Rg70to1050-CE205060-WaterExt-S1_Run264.h5 
/project/projectdirs/metatlas/raw_data/akuftin/20201116_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530/20201117_JGI-AK_LH_506489_SoilWarm_final_QE-HF_HILICZ_USHXG01530_POS_MSMS_35-PS-35_Heated-organic-soil-July-13y_E_Rg70to1050-CE205060-WaterExt-S1_Run243.h5"

for F in $FILES; do
    nersc scp dtn:$F .
done
