#!/usr/bin/bash


./random_forest.py cross-validate --classifier random-forest -t cbb-train.csv -l POSTSEASON --max-depth 4 --max-leaf-nodes 32 --min-impurity-decrease 0.0 --min-samples-split 2 --min-samples-leaf 1 --criterion entropy --n_estimators 60 
./random_forest.py score --classifier random-forest -t cbb-train.csv -l POSTSEASON 
