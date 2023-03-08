if status is-interactive
    # Commands to run in interactive sessions can go here

    function fish_prompt -d "Write out the prompt"
        printf '%s%s%s > ' (set_color $fish_color_cwd) (prompt_pwd) (set_color $fish_color_cwd)
    end
end

function gd
    git checkout development && git pull origin development
end

set -x TERM xterm-256color

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/simon/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

