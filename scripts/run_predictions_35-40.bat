@echo off
REM Batch script to run DeepFRI predictions on parts 35–40

SET ont=mf
for %%f in (
    IMGVR5_UViG_part_35.faa
    IMGVR5_UViG_part_36.faa
    IMGVR5_UViG_part_37.faa
    IMGVR5_UViG_part_38.faa
    IMGVR5_UViG_part_39.faa
    IMGVR5_UViG_part_40.faa
) do (
    echo ------------------------------
    echo Running prediction for %%f
    python predict.py --fasta_fn "%%f" -ont %ont% --verbose

    REM Rename output files so they don’t overwrite each other
    IF EXIST DeepFRI_%ont%_pred_scores.json (
        ren DeepFRI_%ont%_pred_scores.json "%%~nf_pred_scores.json"
    )
    IF EXIST DeepFRI_%ont%_predictions.csv (
        ren DeepFRI_%ont%_predictions.csv "%%~nf_predictions.csv"
    )
    echo Finished %%f
    echo ------------------------------
)
echo Test predictions completed!
pause