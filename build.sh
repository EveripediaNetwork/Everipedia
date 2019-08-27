trap ctrl_c INT
function ctrl_c {
    exit 2;
}

if [ ! -e build.sh ]; then
    echo "Building from wrong directory. Must be in project root"
    exit 1;
fi

cd everipediaiq
echo "Building everipediaiq..."
/usr/bin/eosio-cpp -g everipediaiq.cpp -o everipediaiq.wasm -I everipediaiq.clauses.md -I everipediaiq.contracts.md

cd ../eparticlectr
echo "Building eparticlectr..."
/usr/bin/eosio-cpp -g eparticlectr.cpp -o eparticlectr.wasm -I eparticlectr.clauses.md -I eparticlectr.contracts.md

cd ..


