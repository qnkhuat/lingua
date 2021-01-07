# Run
#clang++ -g -O3 part.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core` -o lingua 
clang++ -g part.cpp `llvm-config --cxxflags --ldflags --system-libs --libs core mcjit native` -O3 -o lingua -v
#clang++ -g part.cpp  \
#    -I/Users/earther/fun/1_lingua/llvm-project/llvm/include -I/Users/earther/fun/1_lingua/llvm-project/build/include -std=c++14   -fno-exceptions -fno-rtti -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS \
#    -L/Users/earther/fun/1_lingua/llvm-project/build/Debug/lib -Wl,-search_paths_first -Wl,-headerpad_max_install_names \
#    -lLLVMCore -lLLVMRemarks -lLLVMBitstreamReader -lLLVMBinaryFormat -lLLVMSupport -lLLVMDemangle \
#    -lm -lz -lcurses -lxml2 \
#    -o lingua -v

if [ $? -eq 0 ]; then ./lingua; fi

