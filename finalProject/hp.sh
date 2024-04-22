#!/usr/bin/bash

n=100
modelname='random-forest-hyperparameter'

for i in {10..100..10}; do
     echo="Random Search using $i n_estimators"
    ./random_forest.py random-search --classifier random-forest -t cbb-train.csv -l POSTSEASON --big-params 1 --n-search-iterations $n --n_estimators $i

    ./random_forest.py show-best-params --classifier random-forest -t cbb-train.csv -l POSTSEASON 
done
#./random_forest.py grid-search --classifier random-forest -t cbb-train.csv -l POSTSEASON --big-params 1 
#./random_forest.py show-best-params --classifier random-forest -t cbb-train.csv -l POSTSEASON 
