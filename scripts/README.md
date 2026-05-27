# Scripts

This directory contains Python and batch scripts used throughout the DeepFRI viral protein annotation workflow.

## Main workflow scripts

- `split_fasta.py` — splits large FASTA files into smaller subsets
- `predict.py` — runs DeepFRI functional predictions
- `run_predictions_35-40.bat` — batch execution of DeepFRI predictions
- `train_DeepFRI.py` — DeepFRI training workflow
- `train_DeepCNN.py` — CNN training workflow
- `viz_gradCAM.py` — GradCAM visualization utility for DeepFRI saliency analysis

Some scripts are adapted from the original DeepFRI framework and modified for thesis-specific analyses.
