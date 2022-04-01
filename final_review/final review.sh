read word
place=$word

firstCharacter=${place:0:1}
str=$place
length=$(expr length "$str")
echo "Length of my string is $length"

echo $firstCharacter
declare -a var
declare -a freq
for((i=0;i<$length;i++))
do
var[i]=${place:i:1}
echo "done"
done

for((i=0;i<$length;i++))
do
freq[i]=1
for((j=i+1;j<$length;j++))
do
if [ ${var[i]} == ${var[j]} ];
then

    freq[i]=$((freq[i] + 1))
    var[j]="VISITED"
fi
done
done

echo  "char and corresponding frequencies"

for((i=0;i<$length;i++))
do
if [ ${var[i]}="VISITED" ]
then
echo ${var[i]} , ${freq[i]}
else
echo "working"
fi
done


