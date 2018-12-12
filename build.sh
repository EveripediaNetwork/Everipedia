trap ctrl_c INT
function ctrl_c {
    exit 2;
}

if [ ! -e build.sh ]; then
    echo "Building from wrong directory. Must be in project root"
    exit 1;
fi

cd eparticlectr
echo "Building eparticlectr..."
/usr/local/bin/eosio-cpp -abigen eparticlectr.cpp -o eparticlectr.wasm -I eparticlectr.clauses.md -I eparticlectr.contracts.md

cd ../everipediaiq
echo "Building everipediaiq..."
/usr/local/bin/eosio-cpp -abigen everipediaiq.cpp -o everipediaiq.wasm -I everipediaiq.clauses.md -I everipediaiq.contracts.md

cd ../iqsafesendiq
echo "Building iqsafesendiq..."
/usr/local/bin/eosio-cpp iqsafesendiq.cpp -o iqsafesendiq.wasm

cd ..
