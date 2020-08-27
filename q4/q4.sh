FILE1="generated_output.txt"
FILE2="actual_output.txt"
N=`wc -l<$FILE2`
VAR=`diff $FILE1 $FILE2 | grep "^>" | wc -l`
#echo $VAR
#echo $N
MARKS=$((N-VAR))
#echo $MARKS
printf 'Secured %d marks out of %d\n' "$MARKS" "$N"
