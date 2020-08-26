VAR1=`pwd`
VAR2=$1
VAR3="$VAR1$VAR2"
COUNT=0
touch output.txt
find $VAR3 -type f -name "*.txt">output.txt
while IFS= read -r line
do
	num=$(wc -l<$line)
	COUNT=$((COUNT+num))
done < output.txt
rm output.txt
echo $COUNT

