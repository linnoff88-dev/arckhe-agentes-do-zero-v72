python3 --version                    # precisa ser 3.10 ou mais novo
cd ~ && [ -d agentes-do-zero-v72 ] || git clone -q https://github.com/linnoff88-dev/agentes-do-zero-v72   # o kit (em outra pasta que a sua)
mkdir -p ~/agente-do-zero/trabalho   # a pasta do seu agente
ollama list | grep -q "^llama3.2" || ollama pull llama3.2     # baixa só se ainda não tiver (2 GB)
ollama run llama3.2 "Diga oi em cinco palavras." 2>/dev/null
