 Repósitório para armazenar resumos e informações relevantes ao trabalhar com Git e GitHub 
  ## Configurando o git 
  Para salvar as alteações de um mesmo usuario utilize --global   
  Primeiro nome de usuario. 
  ```git config --global user.name "nome" ```.  
  Email ```git config --global user.email "email"```.  
 Para visualizar as alterações ```git config --global --list```

  ## Criando um repositório Git
  Para criar um repositório git utilizaremos os seguintes comandos   
  
 - Primeiro crie um novo diretório digitando no terminal  ```mkdir nome-da-pasta```    
 - Seguinte entre na pasta utilizando ```cd nome-da-pasta```. 
 - Digite ```Git init```para inicializar seu repositório Git. 
## Vinculando um repositório local com repositório remoto
 - Para passar seu  **repositório local para Github** utilize o comando  ```git remote add origin urlg | git branch -M main |git push -u origin main ```
 - Para atualizar as mudanças que formam feitas no github utilize ```git pull origin main```
 - Para enviar as mudanças do repositório local para o remoto utilize ```git push -u origin main```
-  Para clonar um repositório git ao seu repositório local utilize ```git clone url```
-  Parara salvar o token utilize ``` git config --global credential.helper store ```

## Salvando alterações no repositório local  
- Utilize o comando ```git status```para visualizar a area de preparação 
- Para add arquivos vazios utilize ```touch "nome arquivo" ```. 
- Pra fazer os commits use ``` git add "nome arquivo"```ou ```git add.``` isso adicionara os arquivos para area de preparacao 
- use ```git commit -m "mensagem"```ou ```git commit -a```
## Desfazendo as alterações no repositório local
-Utilize ```git checkout arquivo```para descartar as mudanças feitas e o arquivo voltera para o estado do ultimo commit.
git restore --hard
 ## 📝Cheatsheet comandos git    
 ### git init:
Inicializa um novo repositório Git localmente em um diretório existente.   
### git clone [URL]:
Clona um repositório Git remoto para o seu diretório local.
### git add [arquivo(s)]:
Adiciona arquivos ao índice (área de preparação) para prepará-los para o commit.
### git commit -m "mensagem":
Registra as mudanças feitas nos arquivos adicionados ao índice como um novo commit.
### git status:
Exibe o estado atual do seu repositório, incluindo arquivos não rastreados, alterações e arquivos prontos para commit.
### git push [remote] [branch]:
Envia os commits locais para o repositório remoto especificado.
### git pull [remote] [branch]:
Atualiza o repositório local com as alterações do repositório remoto.
### git branch:
Lista todas as branches no repositório local.
### git checkout [branch]:
Muda para a branch especificada.
### git merge [branch]:
Mescla a branch especificada na branch atual.
### git remote -v:
Lista os repositórios remotos configurados.
### git fetch [remote]:
Busca as alterações do repositório remoto, mas não as mescla automaticamente na branch local. 