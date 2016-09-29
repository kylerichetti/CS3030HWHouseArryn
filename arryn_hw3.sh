
me=`basename "$0"`

help() { printf "Usage: $me -s sedsrc -a awksrc -i inputFile\n"; exit 0; }

# parse arguments
awkFile=""
sedFile=""
inputFile=""

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
			echo "invalid arg"
			help
			;;
	esac
done

# check that all arguments were given
if [ -z "${awkFile}" ] || [ -z "${sedFile}" ] || [ -z "${inputFile}" ]; then
	help
fi


exit 0
