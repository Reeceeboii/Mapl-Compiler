#!/bin/bash
# compile and test any of the basic mapl tests

javac -cp ../backend/Backend.jar:. mapl/Compile.java
java -cp ../backend/Backend.jar:. mapl/Compile ../examples/basic/"$1".mapl
java -cp ../backend/Backend.jar:. ir.Compile ../examples/basic/"$1".ir
java -cp ../backend/Backend.jar:. tac.Exec ../examples/basic/"$1".tac