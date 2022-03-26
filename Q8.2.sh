for (( i=0; i<=9; i++ ))
do
	array[$i]=$((RANDOM%900 + 100 ));
done

echo "printing aray...."
echo ${array[@]}

length=${#array[@]};

for (( i=0; i<length; i++ ))
do
        for (( j=$i; j<length; j++ ))
        do
                if [ ${array[$i]} -lt ${array[$j]} ];
                then
                        t=${array[$i]}
                        array[$i]=${array[$j]}
                        array[$j]=$t
                fi
        done
done

echo "Sorting array in descending order..."
echo ${array[@]}

echo "2nd largest element is ${array[1]}"
echo "2nd smallest element is ${array[length-2]}"
