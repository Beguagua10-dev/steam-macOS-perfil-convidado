# steam-macOS-perfil-convidado
# macOS Steam Guest Launcher

Este é um script em Bash extremamente minimalista desenvolvido para **macOS High Sierra (10.13.6)**. Ele resolve o problema de compartilhar jogos da Steam com uma **Conta de Convidado (Guest Profile)** sem que o usuário principal precise passar sua senha da Steam ou correr o risco de ter seus arquivos pessoais e dados de salvamento modificados.

## 📋 Para que serve?

No macOS, a conta de Convidado apaga absolutamente tudo o que foi feito assim que o usuário encerra a sessão. 

Este script permite que:
1. Os jogos fiquem armazenados de forma segura e em modo "Somente Leitura" na pasta Pública do usuário administrador.
2. O Convidado escolha um jogo através de um menu numérico simples.
3. O sistema gere automaticamente uma cópia temporária do jogo na Mesa (Desktop) do Convidado para que ele jogue.
4. Quando o Convidado deslogar, a cópia do jogo seja totalmente destruída pelo próprio macOS, deixando o computador limpo de arquivos residuais.

**Jogos configurados nativamente neste script:**
* Hacknet
* Half-Life 1
* Half-Life 2

---

## 🛠️ Como Estruturar as Pastas (Preparação)

Antes de rodar o script, o usuário administrador do Mac precisa organizar os arquivos na pasta de compartilhamento do sistema.

1. Acesse o caminho: `Macintosh HD` > `Usuários` > `Compartilhado` ou na pasta **Pública** do seu usuário (`/Users/SEU_USUARIO/Public/`).
2. Crie uma pasta chamada `SteamCompartilhada`.
3. Mova ou copie as pastas dos jogos instalados na sua Steam para dentro dela. O caminho padrão de instalação da Steam no Mac é:
   `~/Library/Application Support/Steam/steamapps/common/`
4. Garanta que a estrutura de pastas fique exatamente assim:
   ```text
   /Users/seu_usuario_mac/Public/SteamCompartilhada/
   ├── Hacknet/
   ├── Half-Life/
   └── Half-Life 2/
   ```

---

## 🚀 Como Executar

### Passo 1: Configurar o Script
Abra o arquivo do script (ex: `Jogar.command`) e altere a variável `ORIGEM` na linha 3 com o caminho exato onde você salvou a pasta `SteamCompartilhada`. Substitua `seu_user_mac` pelo nome curto do seu usuário administrador do Mac.

### Passo 2: Dar Permissão de Execução
Para que o arquivo funcione dando dois cliques através do Finder, o usuário administrador precisa dar permissão de execução via Terminal uma única vez. 

Abra o Terminal e execute:
```bash
chmod +x /Users/seu_usuario_mac/Public/SteamCompartilhada/Jogar.command
```

### Passo 3: Jogar como Convidado
1. Faça login na conta de **Convidado** do Mac.
2. Abra o Finder e navegue até a pasta pública do administrador: `Macintosh HD` > `Usuários` > `[Nome do Admin]` > `Pública` > `SteamCompartilhada`.
3. Dê **dois cliques** no arquivo `Jogar.command`.
4. Uma janela do Terminal se abrirá exibindo o menu. Digite o número correspondente ao jogo desejado (**1, 2 ou 3**) e pressione `Enter`.
5. O script fará a cópia para a Mesa e abrirá o jogo automaticamente.

---

## ⚠️ Observações Importantes

* **Saves (Progresso):** Como o perfil de convidado é temporário, qualquer progresso salvo ou configuração de jogo feita pelo convidado será apagada permanentemente assim que ele encerrar a sessão.
* **Espaço em Disco:** Certifique-se de que o Mac possui espaço livre em disco suficiente para duplicar temporariamente a pasta do jogo na Mesa do Convidado enquanto ele estiver jogando.
