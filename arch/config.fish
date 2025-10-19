function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive # Commands to run in interactive sessions can go here

    # No greeting
    set fish_greeting

    # Use starship
    starship init fish | source
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    alias pamcan pacman
    alias ls 'eza --icons'
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    alias q 'qs -c ii'
    alias syu 'sudo pacman -Syu'
    alias syyu 'sudo pacman -Syyu'
    alias syy 'sudo pacman -Syy'    
    alias fish 'nano /home/purvsama/.config/fish/config.fish'
    alias source-fish 'source /home/purvsama/.config/fish/config.fish'``
    alias d "docker"
    alias dc "docker compose"
    alias ds "docker ps"
    alias ns "npm run start"
    alias nd "npm run dev"
    alias nv "npm create vite@latest"
    alias ndh "npm run dev -- --host"
    alias nit "npm install -d typescript"
    alias nt "npx tsc --init"
    alias nx "npx create-next-app@latest"
    alias bi "bun install"
    alias bx "bunx --bun vite"
    alias bv "bun create vite"
    alias ba "bun add"
    alias bini "bun init"
    alias bxh "bunx --bun vite -- --host"
    alias bnext "bun create next-app"
    alias bd "bun run dev"
end
