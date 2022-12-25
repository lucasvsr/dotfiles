
# dotfiles
Repositório de arquivos de configuração do meu ambiente de trabalho

## Preparação do ambiente
Utilize o comando abaixo para instalar as dependências da instalação:

```console

bash -c "$(curl -fsSL https://raw.githubusercontent.com/lucasvsr/dotfiles/main/scripts/install)"

```

## Baixe as configurações
O comando abaixo iniciará uma interação com o GitHub via CLI, logue e o repositório será baixado automaticamente:

```console

clone

```

### Ajustes para utilização
É preciso alterar o arquivo **home.nix** para que o script funcione corretamente. Nele existem as opções `home.username` e `home.homeDirectory` onde devem ser alteradas com o seu nome do usuário e o diretório local respectivamente..

## Execução do script inicial
O comando abaixo irá iniciar a instalação das principais aplicações usadas neste ambiente e aplicará as configurações predefinidas:

```console

setup

```
