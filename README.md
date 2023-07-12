# Deletando Arquivos automaticamente
## (Em Desenvolvimento) - 12/07/2023
### Este arquivo é um pequeno projeto para adicionar as rotinas e tarefas automáticas, nossa impressora salva relatórios, para evitar relatórios muito extensos vamos remover arquivos a cada 30 dias!

<p align="center">
  <a href="#-tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-projeto">Projeto</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#comentários">Comentários</a>
</p>

## 🚀 Tecnologias

Esse projeto foi desenvolvido com as seguintes tecnologias:

- CMD
- Windows

## 💻 Projeto

A ideia do app é simples, executar a cada 30 dias um script que verifica e remove arquivos mais antigos em uma pasta específica.

Este projeto foi bem interessante por trabalhar com linguagens e conceitos distantes do meu dia-a-dia. O arquivo gerado (.bat) executa uma linha que verifica e demonstra os arquivos que serão excluidos.
A função ForFiles do Windows realiza uma busca em pastas e sub-pastas, utilizamos algumas tags para ajudar na configuração desta pesquisa e execução. Os códigos comuns na internet observam os diretórios dos arquivos, isto não foi necessário no nosso escopo!

Neste momento não adicionamos a tag /Q e estamos testando o acesso a arquivos no servidor, no final do projeto iremos adicionar nas Tarefas Agendadas do Windows para execução frequente! Para entender melhor:

- /P -> Indica o caminho para a busca (muito importante tomar cuidado para não deletar arquivos importantes!);
- /S -> Perimite visualizar arquivos dentro de pastas dentro do caminho;
- /D -> Seleciona a Data de modificação do arquivo, pode ser passada no formato de MM/DD/YYYY ou número em dias, utilizando + ou -;
- /M -> Essa tag especifíca quais tipos de arquivo serão deletados, por exemplo "*.txt" significa que apenas arquivos de texto;
- /C -> Esta é a função que será executada pela busca, por exemplo  “cmd /c del @file” remove os arquivos selecionados na busca!
- /Q -> Permite pular a etapa de confirmação, deletando automaticamente os arquivos!

## Comentários
- [ ] Neste trabalho "-30" significa última modificação 30 dias atrás!
- [ ] Percebemos que normalmente /M *.* deletaria todos os tipos de arquivos, no nosso caso os arquivos não possuem uma extensão! Foi necessário utilizar o clássico *;
- [ ] Para criar um arquivo semelhante dentro do servidor, precisamos pedir acesso, neste momento o trabalho está em pausa;
- [ ] Assim que retomarmos o trabalho vamos testar a execução automática pelas Tarefas do Windows.
