#!/bin/bash
# compile and test any of the method tests

javac -cp ../backend/Backend.jar:. mapl/Compile.java
java -cp ../backend/Backend.jar:. mapl/Compile ../examples/methods/"$1".mapl
java -cp ../backend/Backend.jar:. ir.Compile ../examples/methods/"$1".ir
java -cp ../backend/Backend.jar:. tac.Exec ../examples/methods/"$1".tac "$2" "$3"