#!/bin/bash

echo "#-----------------------------------------------------------------------#"
echo "Install pretty bash prompt"
echo "#-----------------------------------------------------------------------#"
cd
curl -o .bash_prompt https://gist.githubusercontent.com/mimiflynn/9144157/raw/53ba4e96b9b1e344f676dccf7d07a3f6f74cc117/.bash_prompt
curl -o .bash_profile https://gist.githubusercontent.com/mimiflynn/9144157/raw/b48cf53c35984114c94f1c9c6fa4887e82b46582/.bash_profile
source .bash_profile

