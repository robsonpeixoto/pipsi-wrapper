set -gx PIPSI_PY_VERSION 2.7.12

if not test -d (pyenv prefix $PIPSI_PY_VERSION);
    pyenv install $PIPSI_PY_VERSION
end 

if not test -f $HOME/.local/bin/pipsi;
    set -l old_path $PATH
    set -lx PATH (pyenv prefix $PIPSI_PY_VERSION)/bin $PATH

    curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | \
        eval (pyenv prefix $PIPSI_PY_VERSION)/bin/python
    set -lx PATH $old_path
end

set -gx fish_user_paths $HOME/.local/bin $fish_user_paths