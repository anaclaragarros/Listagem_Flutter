# 📋 Listagem_Flutter

Este projeto foi realizado utilizando **Flutter**. O objetivo foi adaptar um exemplo de listagem de tarefas a partir de uma **API online real** (`https://jsonplaceholder.typicode.com/todos`), com funcionalidades de busca, visualização de detalhes e controle de conclusão, seguindo boas práticas de desenvolvimento frontend com Flutter.

---

## 📺 Preparando o ambiente

Antes de iniciar o projeto, o ambiente foi configurado com base na documentação oficial do Flutter:

🔗 [Documentação Flutter - Instalação](https://docs.flutter.dev/get-started/install)

Certifique-se de ter o Flutter e um editor como o VS Code ou Android Studio instalados.

---

## 📚 Base do Projeto

A base foi construída com Flutter utilizando os seguintes recursos:

- Consumo de dados diretamente do endpoint:

🔗 [https://jsonplaceholder.typicode.com/todos](https://jsonplaceholder.typicode.com/todos)

- Organização do projeto seguindo o padrão MVC simplificado.

---

## ✅ Funcionalidades implementadas

✔️ **Listagem de Tarefas (Todos)**  
- Consumo da API pública `jsonplaceholder` usando `http`.

✔️ **Pesquisa por Título da Tarefa**  
- Campo de busca com filtro dinâmico aplicado sobre a lista de tarefas.

✔️ **Visualização de Detalhes em Outra Tela**  
- Ao clicar em uma tarefa, o usuário é redirecionado para uma nova tela com os detalhes.

✔️ **Campo “completed” com Controle Visual**  
- O campo `completed` é representado por um `Checkbox` refletindo o status da tarefa.

---

## 🛠️ Tecnologias utilizadas

- **Flutter** (Framework para desenvolvimento multiplataforma)
- **Dart** (Linguagem principal do Flutter)
- **http** (Para consumo da API)
- **Stateful Widgets e ListView** para exibição de dados
- **Navigator** para navegação entre telas
- **VS Code** ou **Android Studio** como ambiente de desenvolvimento

---

## 🚀 Como executar

1. Clone este repositório:

```bash
git clone https://github.com/anaclaragarros/Listagem_Flutter.git
cd Listagem_Flutter

Instale as dependências:
flutter pub get
Execute o app: flutter run

📄 Licença
Este projeto é de uso livre para fins de estudo.


