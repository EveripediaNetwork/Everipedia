# trap ctrl_c INT
# function ctrl_c {
#     exit 2;
# }

if [ ! -e build.sh ]; then
    echo "Building from wrong directory. Must be in project root"
    exit 1;
fi

cd epnewsletter
echo "Building epnewsletter..."
eosio-cpp epnewsletter.cpp -O=3 -lto-opt=O3 -stack-size=16384 -abigen -o epnewsletter.wasm -I epnewsletter.clauses.md -I epnewsletter.contracts.md 
cd ..
