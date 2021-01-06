# Chapter 1
- Parser read the code and return token type. Token identify : is this a number, a command or eof?

# Chapter 2
Abstract Syntax Tree ( AST ) is a tree representation of the code's structure

The syntax is "abstract" in the sense that it does not represent every detail appearing in the real syntax, but rather just the structural or content-related details.

AST is used as data structure for compilers to represent the structure of program code

Outcome of this Chapter is we able to take user input and parse it into AST

# Chapter 3
Focus: Transform AST to LLVM IR

`codegen()` is used to emit IR(intermediate representation of source code)

`Value` and `Function` are llvm objects. in llvm design IR are Static Single Assignment Form (SSA) which requires that each variable be assigned exactly once, and every variable be defined before it is used


# Chapter 4
Learn about Passes. It helps optimizing our parsing. For example it does the constant folding or group multiple expressions with same operations into one.(x + 3) and ((x+1) + 2) will be assigned to be one variable

Check this tut out https://llvm.org/docs/WritingAnLLVMPass.html#what-passmanager-doesr


### JIT Just In Time Compilation
is often compared to AOT ( ahead of time compilation ). JIT meaing it compile then interpret code at run time. AOT mean it is already compiled before running.
JIT is better because when the program is compiled at run time, and it knows the platform it is running on, it can make optimizations based on it. Rather than a fixed source code being produced by AOT.


# Journey of a code
We can write Lexing in any langauge we want
Parser is Powered by LLVM, it'll help us to convert it to AST and codegen will do it part

Code 
-> (Lexing) => Token
-> (Parser) => AST
-> (CodeGen) => IR
-> () => 

This tutorial stop at IR. need to dive in later on .
More on AST https://www.youtube.com/watch?v=VqCkCDFLSsc

























