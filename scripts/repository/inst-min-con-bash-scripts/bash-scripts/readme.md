
[![Build Status](https://travis-ci.org/limelime/bash-common.svg?branch=master)](https://travis-ci.org/limelime/bash-common.svg?branch=master)

# Usage
    # Load all functions.
    . func-list.sh

# Debug
    # Get the error.
    (. func-list.sh)
    cat lib/*.sh > /tmp/mmm.tmp
    scite /tmp/mmm.tmp
    # Goto line number. 
    
# Create unit test
    
    # Create unit test
    ./func-test-create.sh lib/func_id.sh
    
    # Run
    cd tests/
    ./run.sh

# Fork
After cloning the repository, run the followings:

    chmod +x *.sh
    chmod +x lib/*.sh
    chmod +x tests/*.sh
    (cd tests/ && ./run.sh)
    
    
# Coding style
* https://google.github.io/styleguide/shell.xml    

# Best Practices for Writing Bash Scripts
* http://kvz.io/blog/2013/11/21/bash-best-practices/