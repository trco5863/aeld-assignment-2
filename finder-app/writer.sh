writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
	echo "missing search parameter"
	exit 1
fi	

x=$(dirname "$writefile")

mkdir -p "$x"

echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
	echo "file could not be created"
	exit 1
fi	

exit 0
