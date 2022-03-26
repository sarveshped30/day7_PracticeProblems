for (( i=0; i<=9; i++ ))
do
	array[$i]=$((RANDOM%900 + 100));
done

echo "Printing array...."
echo ${array[@]}

secondgreatest=$(printf '%s\n' "${array[@]}" | sort -nu | tail -2 | head -1 )
echo "second greatest:- "$secondgreatest
secondsmallest=$(printf '%s\n' "${array[@]}" | sort -nr | tail -2 | head -1 )
echo "second smallest:- "$secondsmallest
