echo "Enter a number"
read num
temp=$num
sum=0

while [ $temp -gt 0 ]; do
    digit=$(( temp % 10 ))
    sum=$(( sum + digit ))
    temp=$(( temp / 10 ))
done

echo "Sum of digits: $sum"
