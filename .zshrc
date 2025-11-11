eval "$(starship init zsh)"

if [[ "$OSTYPE" == "darwin"* ]]; then
    CONDA_BASE="/opt/homebrew/Caskroom/miniconda/base"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    CONDA_BASE="$HOME/miniconda3"
fi

if [ -d "$CONDA_BASE" ]; then
    __conda_setup="$("$CONDA_BASE/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    elif [ -f "$CONDA_BASE/etc/profile.d/conda.sh" ]; then
        . "$CONDA_BASE/etc/profile.d/conda.sh"
    else
        export PATH="$CONDA_BASE/bin:$PATH"
    fi
    unset __conda_setup
else
    echo "Conda base directory not found: $CONDA_BASE"
fi
