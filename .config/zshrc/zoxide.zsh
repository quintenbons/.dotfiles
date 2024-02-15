if command -v zoxide >/dev/null 2>&1; then
    _z_cd() {
        builtin cd "$@" || return "$?"

        if [ "$_ZO_ECHO" = "1" ]; then
            echo "$PWD"
        fi
    }

    cd() {
        if [ "$#" -eq 0 ]; then
            _z_cd ~
        elif [ "$#" -eq 1 ] && [ "$1" = '-' ]; then
            if [ -n "$OLDPWD" ]; then
                _z_cd "$OLDPWD"
            else
                echo 'zoxide: $OLDPWD is not set'
                return 1
            fi
        else
            _zoxide_result="$(zoxide query -- "$@")" && _z_cd "$_zoxide_result"
        fi
    }

    cdi() {
        _zoxide_result="$(zoxide query -i -- "$@")" && _z_cd "$_zoxide_result"
    }


    alias cda='zoxide add'

    alias cdq='zoxide query'
    alias cdqi='zoxide query -i'

    alias cdr='zoxide remove'
    cdri() {
        _zoxide_result="$(zoxide query -i -- "$@")" && zoxide remove "$_zoxide_result"
    }


    _zoxide_hook() {
        zoxide add "$(pwd -L)"
    }

    chpwd_functions=(${chpwd_functions[@]} "_zoxide_hook")
fi