#! /bin/bash

#Roll a dice using bash

dice=$1
numRolls=$2
bonusPt=$3

# sum=$(( sum + ($RANDOM % 4) + ($RANDOM % 4) + bonusPt + 1 ))
# echo $(( sum + ($RANDOM % 4) + ($RANDOM % 4) + bonusPt + 1 ))

for ((i=1; i<=numRolls; i++ ))
do
    sum=0
    case $dice in
    3d4)
        roll=$(( ($RANDOM % 4) + ($RANDOM % 4) + ($RANDOM % 4) + bonusPt + 1 ))
        sum=$(( sum + roll ))
        ;;
    2d4)
        roll=$(( ($RANDOM % 4) + ($RANDOM % 4) + bonusPt + 1 ))
        sum=$(( sum + roll ))
        ;;
    1d4)
        roll=$(( ($RANDOM % 4) + bonusPt + 1 ))
        sum=$(( sum + roll ))
        ;;
    1d6)
        roll=$(( ($RANDOM % 6) + bonusPt + 1 ))
        sum=$(( sum + roll ))
        ;;
    2d6)
        roll=$(( ($RANDOM % 6) + ($RANDOM % 6) + bonusPt + 1 ))
        sum=$(( sum + roll ))
        ;;
    1d8)
        roll=$(( ($RANDOM % 8) + bonusPt + 1 ))
        sum=$(( sum + roll ))
        ;;
    1d10)
        roll=$(( ($RANDOM % 10) + bonusPt + 1 ))
        sum=$(( sum + roll ))
        ;;
    *)
        echo "GAY"
        ;;
    esac
done

echo $sum

#./a.sh 2d4 7 4