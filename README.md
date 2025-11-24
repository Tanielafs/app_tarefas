📱 App de Gerenciamento de Tarefas
Aplicativo mobile desenvolvido em Flutter/Dart para organização pessoal e gerenciamento de tarefas diárias.

Funcionalidades
Sistema de login e cadastro de usuários
Calendário interativo para visualização temporal das tarefas
Lista de tarefas com operações completas (CRUD)
Adicionar novas tarefas com título, descrição e data
Remover tarefas da lista
Marcar tarefas como concluídas/pendentes
Persistência local de dados
Interface seguindo Material Design

 Arquitetura do Projeto
lib/
<br>
├── main.dart              # Arquivo principal e configuração de rotas
<br>
├── login_screen.dart      # Tela de autenticação
<br>
├── calendar_screen.dart   # Tela do calendário interativo
<br>
└── task_model.dart        # Modelo de dados das tarefas

 Tecnologias Utilizadas
Flutter - Framework para desenvolvimento mobile
Dart - Linguagem de programação
table_calendar - Package para implementação do calendário
Material Design - Design system para interface

 Pré-requisitos
Flutter SDK 3.0+
Dart 3.0+
Android SDK (API 28+)
Java JDK 17+

Como Executar
1. Clone o repositório
bashgit clone https://github.com/Tanielafs/app_tarefas.git
cd app_tarefas
2. Instale as dependências
bashflutter pub get
3. Execute o aplicativo
bash# No emulador Android
flutter run

# Gerar APK
flutter build apk --release
Conceitos Aplicados

StatefulWidget - Gerenciamento de estados dinâmicos
StatelessWidget - Componentes estáticos
setState() - Atualização da UI em tempo real
Navigator - Navegação entre telas
Persistência de dados - Armazenamento local

Contexto Acadêmico
Este projeto foi desenvolvido como atividade acadêmica, com foco em:

Aplicação prática de conceitos de desenvolvimento mobile
Implementação de funcionalidades CRUD
Gerenciamento de estado em Flutter
Integração de bibliotecas externas
Resolução de desafios técnicos

Desafios Superados
Durante o desenvolvimento, foram enfrentados e resolvidos:

Configuração do ambiente Android SDK
Migração Java 8 → Java 17
Otimização para hardware limitado (4GB RAM)
Gestão de dependências e conflitos
Compilação de APK em ambiente com recursos limitados

Screenshots
(As capturas de tela demonstram as principais funcionalidades do aplicativo)



Este projeto foi desenvolvido para fins acadêmicos.

⭐Desenvolvido com Flutter e dedicação!
