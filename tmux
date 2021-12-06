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

# Set easier window split keys
bind-key v split-window -h
bind-key h split-window -v

# Easy config reload
bind-key r source-file ~/.tmux.conf \; display-message "tmux config reloaded!"

# Trying to tmux to render 256 colors
set -g default-terminal "screen-256color"

# Styles
set-option -g status-style bg="#1d3b53",fg=white
set-option -g status-left "#[fg=color235,bg="#a1cd5e"]Session:#{session_name} "
set-option -g status-left-length 20
set-option -g status-right "#[bg="#82aaff",fg=color235] #(date +'%Y/%m/%d | %I:%M%p') #[bg="#ecc48d",fg=color235] #(nmcli | head -1| awk '{print ($2==\"disconnected\") ? \"no wifi\" : $4}') #[bg="#ae81ff"] #(sudo tlp-stat|grep Charge|head -1|awk '{print $3}'|cut -d "." -f 1)% "
set-option -g window-status-format " #{window_index}:#{window_name}#{window_flags} " 
set-option -g window-status-current-format "#[bg="#f9ca24",fg=color235] #{window_index}:#{window_name}#{window_flags} "

# set windows and panes 1 indexed and not zero indexed
set -g base-index 1
setw -g pane-base-index 1
