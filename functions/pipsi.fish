function pipsi -d "A simpel wrapper to use the pipsi"
    set -l OLD_PATH $PATH
    set -lx PATH $PIPSI_PY_VERSION $PATH
    $HOME/.local/bin/pipsi $argv
    set -lx PATH $OLD_PATH
end
