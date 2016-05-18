# Teste Ruby para Candidatos

## Resumo

O objetivo da aplicação é consultar marcas e modelos de carros usando a API do WebMotors.

## Instalando

Faça um [fork](https://guides.github.com/activities/forking/) do projeto [AdtSys Test Master](https://github.com/esilvamg/adtsys-test-master)

Realize o clone do seu fork!
```console
git clone git@github.com:<your_fork>/adtsys-test-master.git
cd adtsys-test-master
bundle install
```

Copie e adicione suas configurações locais para o banco de dados.

```console
cp config/database.yml.example config/database.yml
```

Copie as configurações para as ENV VARS
```console
cp .env.sample .env
```

Instalação da Base de Dados
```console
bundle exec rake db:migrate
```

Rodando a aplicação
```console
rails server
```

Acessando a aplicação
```console
Abra o browser de sua escolha e acesse http://localhost:3000/
```
