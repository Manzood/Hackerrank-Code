for ((i=1;;i++)) do
	echo $i
	./gen $i > in
	diff -w <(./F < in) <(./F_brute < in) || break
done
