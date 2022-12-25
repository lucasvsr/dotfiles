function fish_title
    
    set -l git ""
    set -l dir ""
    set -gx HIDDEN_FILES ""

    if test -f $PWD/.hidden

        set -l oldIFS $IFS # mantém o separador de campo
        set IFS '\n' # novo separador de campo, o caractere de fim de linha

        for hide in $(cat $PWD/.hidden)

            set HIDDEN_FILES "$HIDDEN_FILES$hide|"
            
        end

        set IFS $oldIFS
        
    end

    if test -d $PWD/.git; or begin git -C $PWD rev-parse 2>/dev/null; end

        set git " |  $(__git.current_branch)"

    end

    switch $PWD
        
        case $HOME

            set dir "🏠"
        
        case '*'

            set dir "$(basename $PWD)"
        
    end

    echo -ne "$dir$git"

end