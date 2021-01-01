# Compile
clang++ -g -O3 lingua.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core` -o lingua.out
# Run
if [ $? -eq 0 ]; then ./lingua.out; fi
