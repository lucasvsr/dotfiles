# Seção de módulos do ambiente

Aqui devem ficar os pacotes que devem ser instalados ou posicionados na `$HOME`.

Caso o pacote seja gerenciado pelo **Nix**, criar diretório, copiar o arquivo `nix` disponível em `$DOTIFILES/templates` e criar a lógica de instalação ou posicionamento do pacote.

Caso o pacote seja gerenciado pelo script **`$DOTFILES/init`**, criar diretório, copiar o arquivo `sh` disponível em `$DOTIFILES/templates` e criar a lógica de instalação ou posicionamento do pacote.

Se já rodou a montagem do ambiente, é possível executar o comando `module` para criar estes diretórios.

Para um módulo controlado pelo Nix:
```console

module --nix <pacote>

```

Para um módulo controlado pelo `$DOTFILES/init`:
```console

module --sh <pacote>

```