# Sistema de agentes do zero

[![Sistema de agentes do zero](assets/img/capa.jpg)](https://linnoff88-dev.github.io/agentes-do-zero-v72/)

**Curso grátis (7 aulas):** https://linnoff88-dev.github.io/agentes-do-zero-v72/

Você monta um agente de IA peça por peça, seguindo 10 passos (objetivo, harness, modelo, ferramentas, instruções,
memória, limites, testes, medição e iteração). Python puro, nenhuma biblioteca para instalar e IA grátis no seu
computador (Ollama + `llama3.2`). No fim, o agente lê e grava arquivos numa pasta só, lembra de você, pede o seu OK e
se mede sozinho.

## O kit (`kit/`)

| Arquivo | O que é |
|---|---|
| `aula2/agente.py` | 19 linhas: leva o pedido ao modelo e imprime a resposta |
| `aula3/agente.py` | 52 linhas: + ferramenta `ler_arquivo` e o loop (até 5 rodadas) |
| `aula4/agente.py` | 67 linhas: + instruções em `instrucoes.md` e memória em `memoria.json` |
| `aula5/agente.py` (= `agente.py`) | 87 linhas: + pasta única, OK antes de substituir, ferramenta `escrever_arquivo` |
| `medir.py` | 6 tarefas fixas, cada uma numa pasta limpa: acerto, tempo, rodadas e "caiu" à parte |
| `instrucoes.md`, `objetivo.md` | modelos que o aluno copia e edita |
| `blocos/*.sh`, `saidas/*.txt` | os comandos de cada aula e a saída real capturada (14/11/2026) |

## O processo, do início ao fim

| # | Passo | Comando | Quem |
|---|---|---|---|
| 1 | Preparar o computador (Windows: WSL + Ubuntu) | `python3 --version` · ollama.com · `ollama pull llama3.2` | você |
| 2 | Baixar o kit | `cd ~ && git clone https://github.com/linnoff88-dev/agentes-do-zero-v72` | você |
| 3 | Seguir as aulas 2 a 5 | em `~/agente-do-zero`: `cp ~/agentes-do-zero-v72/kit/aulaN/agente.py .` e `python3 agente.py "pedido"` | você |
| 4 | Medir | `cp ~/agentes-do-zero-v72/kit/medir.py . && python3 medir.py` | ⚙️ script |
| 5 | Iterar | `git commit` → mudar uma coisa → `python3 medir.py` → manter ou `git restore` | você |
| 6 | Ir além | [INTELECTO v2](https://linnoff88-dev.github.io/intelecto-v2/guia/) e `python3 -m intelecto avaliar` | você |
| 7 | (Manutenção do curso) editar `conteudo/pt/aulas/*.json` com marcadores `@@bloco/@@arquivo/@@saida`, capturar e gerar | `bash kit/capturar.sh` (cada bloco pega a própria vaga gpu; nunca embrulhar o lote) → `resolver-kit.py .` → `python3 gerar.py && python3 validar.py --links` | 🧠 sessão |

## Mais no ARCKHé AI.CLUB

- [Ficha completa deste curso](https://www.linnoff88-dev.github.io/cursos/392-sistema-de-agentes-do-zero-monte-o-seu-agente-de-ia-nos-10-passos-com-ia-gratis-no-computador/)
- [Guia: como aprender inteligência artificial](https://www.linnoff88-dev.github.io/aprender-inteligencia-artificial/)
- [Todos os cursos](https://www.linnoff88-dev.github.io/cursos/)

Formato ARCKHé AI Learning v7.2 · conteúdo aberto e gratuito · [linnoff88-dev.github.io](https://linnoff88-dev.github.io)
