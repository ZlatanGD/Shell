function usage() {
    echo "Usage: $0 <pid>"
    exit 1
}
if [ $# -eq 0 ]; then
    echo needs a argument
    usage
fi

PID=$1
test=$(ps aux | awk '{print $2}' | grep -w "$PID")
if [ ! "$test" ]; then
    echo "$PID existe pas"
fi