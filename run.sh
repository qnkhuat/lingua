# Compile
clang++ -g -O3 part.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core` -o lingua
# Run
if [ $? -eq 0 ]; then ./lingua; fi
