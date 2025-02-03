# .cpp ファイルをコンパイルして実行し、削除する関数
function runcpp() {
    if [ $# -eq 0 ]; then
        echo "Usage: cpp <filename.cpp>"
        return 1
    fi

    FILE="$1"
    OUT="${FILE%.cpp}.out"

    if [ ! -f "$FILE" ]; then
        echo "Error: File '$FILE' not found"
        return 1
    fi

    g++ -std=c++20 "$FILE" -o "$OUT" && ./"$OUT"
    rm -f "$OUT"
}
