Dado('que eu esteja na página de login') do
  visit('/login')
end

Quando('eu preencho o e-mail com {string}') do |email|
  fill_in 'email', with: email
end

Quando('eu preencho a senha com {string}') do |senha|
  fill_in 'password', with: senha
end

Quando('clico no botão {string}') do |botao|
  click_button botao
end

Então('devo ver {string} na tela') do |texto|
  expect(page).to have_content texto
end

Dado('que eu esteja logado no sistema') do
  visit('/login')
  fill_in 'email', with: 'qa_user@zenvia.com'
  fill_in 'password', with: 'senhaForte123'
  click_button 'Entrar'
  expect(page).to have_content('Dashboard')
end

Quando('eu clico no menu {string}') do |menu|
  click_link menu
end

Dado('que eu esteja na tela de atendimentos') do
  step 'que eu esteja logado no sistema'
  step 'eu clico no menu "Atendimentos"'
  expect(page).to have_content('Meus Atendimentos')
end

Quando('eu inicio um novo atendimento com o cliente {string} via {string} com a mensagem {string}') do |nome, canal, mensagem|
  click_button 'Novo Atendimento'
  fill_in 'cliente_nome', with: nome
  select canal, from: 'canal'
  fill_in 'mensagem_inicial', with: mensagem
  click_button 'Iniciar Atendimento'
end

Quando('eu envio a mensagem {string}') do |mensagem|
  fill_in 'mensagem', with: mensagem
  click_button 'Enviar'
  expect(page).to have_content mensagem
end

Quando('eu encerro o atendimento') do
  click_button 'Encerrar Atendimento'
end

Quando('eu clico no avatar do usuário') do
  find('#avatar_usuario').click
end

Quando('clico em {string}') do |link|
  click_link link
end

Então('devo estar na página de login') do
  expect(page).to have_current_path('/login')
end
