echo "Enter a number"
read num
numdigits=${#num}
temp=$num
sum=0

while [ $temp -gt 0 ]; do
    digit=$(( temp % 10 ))
    sum=$(echo "$sum + $digit^$numdigits" | bc)
    temp=$(( temp / 10 ))
done

if [ $num -eq $sum ]; then
    echo "$num is an armstrong number"
else
    echo "$num is not an armstrong number"
fi
