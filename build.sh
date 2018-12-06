if [ ! -e build.sh ]; then
    echo "Building from wrong directory. Must be in project root"
    exit 1;
fi

cd eparticlectr
echo "Building eparticlectr..."
eosio-cpp eparticlectr.cpp -o eparticlectr.wasm

cd ../everipediaiq
echo "Building everipediaiq..."
eosio-cpp everipediaiq.cpp -o everipediaiq.wasm

cd ../iqsafesendiq
echo "Building iqsafesendiq..."
eosio-cpp iqsafesendiq.cpp -o iqsafesendiq.wasm

cd ..
