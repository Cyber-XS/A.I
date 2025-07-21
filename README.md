AI for Local Cybersecurity 🔒

This repository houses an AI-powered solution designed for enhancing cybersecurity on local systems.

  * Offline Threat Detection: Leverages AI models to identify and flag potential cyber threats without requiring an internet connection. 📡

  * Real-time Monitoring: Continuously observes system activities for suspicious behavior. ⏱️

  * Anomaly Detection: Utilizes machine learning to pinpoint deviations from normal system operations, indicating potential attacks. 🔍

  * Lightweight & Efficient: Optimized for minimal resource consumption to ensure smooth local operation. ⚡

  * Customizable Rules: Allows users to define and adapt security rules to specific needs. ⚙️


🔧 Installation Steps for Cyber-XS AI

## 📺 Video Guide for Setup

[![Watch on YouTube](https://img.youtube.com/vi/6tTPVkHpxRw/maxresdefault.jpg)](https://www.youtube.com/watch?v=6tTPVkHpxRw)

Follow the steps below to set up and run the AI locally on your Linux machine:

1️⃣ Clone the Repository

Open a terminal and run:

    git clone https://github.com/Cyber-XS/A.I.git

2️⃣ Install Ollama

Ollama is required to run the Llama 3 model locally. Install it using the following command:

    curl -fsSL https://ollama.com/install.sh | sh

3️⃣ Pull the Llama 3 8B AI Model

Download the Llama 3 8B model (approx 4.7 GB):

    ollama pull llama3:8b

4️⃣ Rename the Model

Create a custom name for your model (for example, cyber) using your Modelfile:

    ollama create cyber -f Modelfile

5️⃣ Run the AI

Navigate into the cloned directory and start the AI:

    cd A.I
    chmod +x cyber.sh
    ./cyber.sh

🔊 Optional: Enable Voice Output

If you want voice output, do the following:

6️⃣ Clone Whisper.cpp for Voice Functionality Inside the A.I directory, run:

    git clone https://github.com/ggml-org/whisper.cpp.git

7️⃣ Edit cyber.sh

Uncomment the following line in the cyber.sh file to enable text-to-speech output via espeak:

    # espeak -s 140 -p 50 -f response.txt

After uncommenting:

    espeak -s 140 -p 50 -f response.txt

✅ Done!

Your AI is now ready to run with or without voice output.


