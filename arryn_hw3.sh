
me=`basename "$0"`

help() { printf "Usage: $me -s sedsrc -a awksrc -i inputFile\n"; exit 0; }

# parse arguments
awkFile=""
sedFile=""
inputFile=""

# check for --help
if [ "$1" == "--help" ]; then
	help
fi

while getopts "a:s:i:" o; do
	case "${o}" in
		a)
			awkFile=${OPTARG}
			;;
		s)
			sedFile=${OPTARG}
			;;
		i)
			inputFile=${OPTARG}
			;;
		*)
			help
			;;
	esac
done

# check that all arguments were given
if [ -z "${awkFile}" ] || [ -z "${sedFile}" ] || [ -z "${inputFile}" ]; then
	help
fi

`sed -f $sedFile $inputFile | awk -f $awkFile > arryn_hw3.out`
cat "arryn_hw3.out"

exit 0
