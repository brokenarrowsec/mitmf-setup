# Made specifically for Kali Linux 2.0
# Built by Sebastian Campos (https://github.com/brokenarrowsec)
# MIT License -- https://github.com/brokenarrowsec/mitmf-setup/blob/master/LICENSE
#!/bin/bash

git clone https://github.com/byt3bl33d3r/MITMf
pip install virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv MITMf -p /usr/bin/python2.7
pip install requests[security]
git clone https://github.com/byt3bl33d3r/MITMf
cd MITMf && git submodule init && git submodule update --recursive
pip install -r requirements.txt
python mitmf.py --help



