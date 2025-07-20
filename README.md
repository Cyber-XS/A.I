# Install Cyber-XS AI

## 1. Clone the Repository
git clone https://github.com/Cyber-XS/A.I
cd A.I

## 2. Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

## 3. Pull Llama 3 8B Model (4.7 GB)
ollama pull llama3:8b

## 4. Rename the Model using Modelfile
ollama create cyber -f Modelfile

## 5. Run the AI
./cyber.sh

# Optional: For Voice Output

## 6. Clone whisper.cpp inside A.I directory
git clone https://github.com/ggml-org/whisper.cpp.git

## 7. Edit cyber.sh
Uncomment these lines in `cyber.sh`:
echo "$user_input" | ollama run $MODEL_NAME | tee response.txt
espeak -s 140 -p 50 -f response.txt
