trap ctrl_c INT
function ctrl_c {
    exit 2;
}

if [ ! -e build.sh ]; then
    echo "Building from wrong directory. Must be in project root"
    exit 1;
fi

echo "Deleting old everipediaiq files..."
cd everipediaiq
rm -f everipediaiq.abi everipediaiq.wasm everipediaiq.wast
cd ..

echo "Deleting old eparticlectr files..."
cd eparticlectr
rm -f eparticlectr.abi eparticlectr.wasm eparticlectr.wast
cd ..

echo "Deleting old iqdelegation files..."
cd iqdelegation
rm -f iqdelegation.abi iqdelegation.wasm iqdelegation.wast
cd ..

cd everipediaiq
echo "Building everipediaiq..."
/usr/bin/eosio-cpp everipediaiq.cpp -O=3 -lto-opt=O3 -stack-size=16384 -abigen -o everipediaiq.wasm -I everipediaiq.clauses.md -I everipediaiq.contracts.md -I ../eparticlectr
cd ..

cd eparticlectr
echo "Building eparticlectr..."
/usr/bin/eosio-cpp eparticlectr.cpp -O=3 -lto-opt=O3 -stack-size=16384 -abigen -o eparticlectr.wasm -I eparticlectr.clauses.md -I eparticlectr.contracts.md
cd ..

cd iqdelegation
echo "Building iqdelegation..."
/usr/bin/eosio-cpp iqdelegation.cpp -O=3 -lto-opt=O3 -stack-size=16384 -abigen -o iqdelegation.wasm -I iqdelegation.clauses.md -I iqdelegation.contracts.md
cd ..

cleos set contract everipediaiq ./everipediaiq/
cleos set contract eparticlectr ./eparticlectr/
cleos set contract iqdelegation ./iqdelegation/