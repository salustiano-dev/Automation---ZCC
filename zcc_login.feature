# language: pt

@zcc
Funcionalidade: Fluxo completo de atendimento no Zenvia ZCC

  Cenário: Login com sucesso
    Dado que eu esteja na página de login
    Quando eu preencho o e-mail com "qa_user@zenvia.com"
    E eu preencho a senha com "senhaForte123"
    E clico no botão "Entrar"
    Então devo ver "Dashboard" na tela

  Cenário: Acesso aos atendimentos
    Dado que eu esteja logado no sistema
    Quando eu clico no menu "Atendimentos"
    Então devo ver "Meus Atendimentos"

  Cenário: Iniciar e encerrar atendimento
    Dado que eu esteja na tela de atendimentos
    Quando eu inicio um novo atendimento com o cliente "João da Silva" via "WhatsApp" com a mensagem "Olá João, como posso te ajudar hoje?"
    E eu envio a mensagem "Estamos verificando sua solicitação."
    E eu encerro o atendimento
    Então devo ver "Atendimento encerrado com sucesso"

  Cenário: Logout
    Dado que eu esteja logado no sistema
    Quando eu clico no avatar do usuário
    E clico em "Sair"
    Então devo estar na página de login
