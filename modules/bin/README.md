# Diretório de binários do usuário
Neste diretório ficarão todos os binários criados pelo usuário.

Para que este diretório seja encontrado pelo shell, é necessário incluí-lo no path adicionando o seguinte export no arquivo de configuração do shell, neste caso uso o ZSH e sendo assim posso adicionar no `.zshenv`: 

```console
export PATH="$XDG_HOME_BIN:$PATH"
```

Após isso, feche o terminal e abra-o novamente, ou execute o comando `source .zshrc` caso use o ZSH, para que carregue a variável de ambiente atualizada.

A partir disso, basta incluir os binários nesta pasta que estes irão aparecer no complete do shell. Lembre-se de dar permissão de execução ao usuário para executá-los:

```console
chmod 777 $XDG_HOME_BIN/<binario>
```