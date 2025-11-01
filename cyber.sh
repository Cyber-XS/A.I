#!/bin/bash
# File: cyber.sh

MODEL_NAME="cyber"

clear
echo "=================================="
echo "   🛡️  CYBER - Local AI Assistant   "
echo "=================================="
echo "
_________        ___.                     _____       .___
\_   ___ \___.__.\_ |__   ___________    /  _  \      |   |
/    \  \<   |  | | __ \_/ __ \_  __ \  /  /_\  \     |   |
\     \___\___  | | \_\ \  ___/|  | \/ /    |    \    |   |
 \______  / ____| |___  /\___  >__|    \____|__  / /\ |___|
        \/\/          \/     \/                \/  \/
"
echo "Type your cybersecurity questions below."
echo "Type 'exit' to quit."
echo ""

while true; do
    read -p "Cyber ⮕⮞ " user_input
    if [[ "$user_input" == "exit" ]]; then
        echo "Goodbye. Stay safe. 🛡️"
        break
    fi

    # Run the AI model, capture and speak the response
    echo "$user_input" | ollama run $MODEL_NAME | tee /home/cyber/Cyber\ A.I/response.txt
    # espeak -s 140 -p 50 -f response.txt
done
