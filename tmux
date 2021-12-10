#           ____       _     __     __  _____ _   ____  
#          |  _ \     / \    \ \   / / | ____( ) / ___| 
#          | | | |   / _ \    \ \ / /  |  _| |/  \___ \ 
#          | |_| |  / ___ \    \ V /   | |___     ___) |
#          |____/  /_/   \_\    \_/    |_____|   |____/#           
#                                                      
#           ____    ___   ____    _____  __   __
#          |  _ \  |_ _| |  _ \  |_   _| \ \ / /
#          | | | |  | |  | |_) |   | |    \ V / 
#          | |_| |  | |  |  _ <    | |     | |  
#          |____/  |___| |_| \_\   |_|     |_|            
#                                              
#           _____   __  __   _   _  __  __  ____     ____ 
#          |_   _| |  \/  | | | | | \ \/ / |  _ \   / ___|
#            | |   | |\/| | | | | |  \  /  | |_) | | |    
#            | |   | |  | | | |_| |  /  \  |  _ <  | |___ 
#            |_|   |_|  |_|  \___/  /_/\_\ |_| \_\  \____|


# Send prefix
set-option -g prefix C-n
unbind-key C-n
bind-key C-n send-prefix

# Use Alt-arrow keys to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Shift arrow to switch windows
bind -n S-Left previous-window
bind -n S-Right next-window

# Mouse mode
setw -g mouse on

# Set easier window split keys/Open splits in the same dir
bind-key v split-window -h -c '#{pane_current_path}'
bind-key h split-window -v -c '#{pane_current_path}'

# Open new window in the same dir
bind c new-window -c"#{pane_current_path}"

# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "tmux config reloaded!"

# Trying to tmux to render 256 colors
set -g default-terminal "screen-256color"

# Styles
set-option -g status-style bg="#1d3b53"

# Left
set-option -g status-left "#[fg=color235,bg="#a1cd5e"]Session:#{session_name} "
set-option -g status-left-length 20

# Right
set-option -g status-right "#[bg="#82aaff",fg=color235] #(date +'%Y/%m/%d | %a | %I:%M%p') #[bg="#ecc48d",fg=color235] #(nmcli | head -1| awk '{print ($2==\"disconnected\") ? \"no wifi\" : $4}') #[bg="#ae81ff"] #(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk ' /state/ { PERCENTAGE=($2==\"discharging\")? \"-\" : \"+\" } /percentage/ { print PERCENTAGE $2 }') "
set-option -g status-right-length 50

# Window/Middle
set-option -g window-status-format " #{window_index}:#{window_name}#{window_flags} " 
set-option -g window-status-current-format "#[bg="#f9ca24",fg=color235] #{window_index}:#{window_name}#{window_flags} "

# set windows and panes 1 indexed and not zero indexed
set -g base-index 1
setw -g pane-base-index 1
