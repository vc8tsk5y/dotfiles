from libqtile.lazy import lazy
from libqtile.config import Key, KeyChord, Drag, Click

from groups import groups


mod = "mod4"
terminal = "kitty"

# move floating  and tiled windows
def move_h(qtile):
    if qtile.current_window.floating:
        qtile.current_window.move_floating(-100, 0),
    else:
        qtile.current_layout.shuffle_left(),

def move_j(qtile):
    if qtile.current_window.floating:
        qtile.current_window.move_floating(0, 100),
    else:
        qtile.current_layout.shuffle_down(),

def move_k(qtile):
    if qtile.current_window.floating:
        qtile.current_window.move_floating(0, -100),
    else:
        qtile.current_layout.shuffle_up(),

def move_l(qtile):
    if qtile.current_window.floating:
        qtile.current_window.move_floating(100, 0),
    else:
        qtile.current_layout.shuffle_right(),

# resize floating and tiled windows
def resize_h(qtile):
    if qtile.current_window.floating:
        qtile.current_window.resize_floating(-100, 0),
    else:
        qtile.current_layout.grow_left(),

def resize_j(qtile):
    if qtile.current_window.floating:
        qtile.current_window.resize_floating(0, 100),
    else:
        qtile.current_layout.grow_down(),

def resize_k(qtile):
    if qtile.current_window.floating:
        qtile.current_window.resize_floating(0, -100),
    else:
        qtile.current_layout.grow_up(),

def resize_l(qtile):
    if qtile.current_window.floating:
        qtile.current_window.resize_floating(100, 0),
    else:
        qtile.current_layout.grow_right(),

def normalize(qtile):
    if qtile.current_window.floating:
        qtile.current_window.set_size_floating(1000, 1000),
        qtile.current_window.center(),
    else:
        qtile.current_layout.normalize(),

def mic_mute(qtile):
    qtile.spawn("pactl set-source-mute @DEFAULT_SOURCE@ toggle"),
    qtile.spawn("/home/tim/dotfiles/.config/qtile/scripts/notify-mic-mute.sh"),

def vol_mute(qtile):
    qtile.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle"),
    qtile.spawn("/home/tim/dotfiles/.config/qtile/scripts/notify-vol-mute.sh"),

def raise_volume(qtile):
    qtile.spawn("pactl set-sink-volume @DEFAULT_SINK@ +1%"),
    qtile.spawn("/home/tim/dotfiles/.config/qtile/scripts/notify-volume.sh"),

def lower_volume(qtile):
    qtile.spawn("pactl set-sink-volume @DEFAULT_SINK@ -1%"),
    qtile.spawn("/home/tim/dotfiles/.config/qtile/scripts/notify-volume.sh"),

def do_not_disturb_toggle(qtile):
    qtile.spawn("dunstctl set-paused toggle"),

keys = [
    Key([mod], "j",
        lazy.group.next_window(),
        desc="[Layout] Focus next window",
    ),

    Key([mod], "k",
        lazy.group.prev_window(), 
        desc="[Layout] Focus previous window",
    ),

    Key([mod], "l", lazy.next_screen(), desc="focus next screen",),
    Key([mod], "h", lazy.prev_screen(), desc="focus previous screen",),

    # move window
    Key([mod, "shift"], "h",
        lazy.function(move_h),
        desc="Move window to the left",
    ),

    Key([mod, "shift"], "j",
        lazy.function(move_j),
        desc="Move window down",
    ),

    Key([mod, "shift"], "k",
        lazy.function(move_k),
        desc="Move window up",
    ),

    Key([mod, "shift"], "l",
        lazy.function(move_l),
        desc="Move window to the right",
    ),

    # resize window
    Key([mod, "control"], "h",
        lazy.function(resize_h),
        desc="Grow window to the left",
    ),

    Key([mod, "control"], "j",
        lazy.function(resize_j),
        desc="Grow window down",
    ),

    Key([mod, "control"], "k",
        lazy.function(resize_k),
        desc="Grow window up",
    ),

    Key([mod, "control"], "l",
        lazy.function(resize_l),
        desc="Grow window to the right",
    ),

    Key([mod], "n",
        lazy.function(normalize),
        desc="Reset all window sizes or center floating",
    ),

    Key([mod], "m", lazy.window.bring_to_front(), desc="bring window to front",),
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen",),
    Key([mod, "shift"], "f", lazy.window.toggle_floating(), desc="Toggle floating",),
    Key([mod, "control"], "f", lazy.next_layout(), desc="layout next (columns, max)",),
    Key([mod], "y", lazy.hide_show_bar("top"), desc="Toggle bar",),
    Key([mod, "shift", "control"], "j", lazy.window.down_opacity(), desc="decrease opacity by 10%",),
    Key([mod, "shift", "control"], "k", lazy.window.up_opacity(), desc="increase opacity by 10%",),

    # float toggle
    # fullscreen nextlayout

    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),

    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal",),

    Key([mod], "w", lazy.window.kill(), desc="Kill focused window",),

    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config",),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile",),

    Key([mod], "semicolon", lazy.spawn('/home/tim/dotfiles/.config/rofi/scripts/scripts.sh'), desc="rofi script selector",),
    Key([mod], "r", lazy.spawn('rofi -show drun'), desc="rofi drun",),
    Key([mod], "v", lazy.spawn('/home/tim/dotfiles/.config/rofi/scripts/greenclip.sh'), desc="rofi clipboard manager",),

    Key([mod], "p", lazy.spawn('flameshot gui'), desc="screenshot gui",),
    Key([mod, "shift"], "p", lazy.spawn('flameshot full'), desc="screenshot fullscreen",),

    # Sound 
    Key([], "KP_Insert",
        lazy.function(mic_mute),
        desc="toggle mute default input",
        ),

    # multimediakeys
    Key([], "XF86AudioRaiseVolume",
        lazy.function(raise_volume),
        desc="increase volume by 1%",
    ),
    Key([], "XF86AudioLowerVolume",
        lazy.function(lower_volume),
        desc="decrease volume by 1%",
    ),
    Key([], "XF86AudioMute",
        lazy.function(vol_mute),
        desc="toggle mute default output",
    ),
    Key([], "XF86AudioMicMute",
        lazy.function(mic_mute),
        desc="toggle mute default input",
    ),

    # ScratchPad
    Key([mod], "x",
        lazy.spawn('/home/tim/dotfiles/.config/rofi/scripts/scratchpads.sh'),
        desc="rofi menu for scratchpads",
    ),
]



mouse = [
    Drag([mod], "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),                                                          # left click
    Drag([mod], "Button3",
        lazy.window.set_size_floating(),
        start=lazy.window.get_size(),
    ),                                                          # middle click
    Click([mod], "Button2", lazy.window.bring_to_front()),      # right click
    Click([mod], "Button4", lazy.window.up_opacity()),          # wheel up
    Click([mod], "Button5", lazy.window.down_opacity()),        # wheel down
    # Click([mod], "Button6"),                                  # wheel left
    # Click([mod], "Button7"),                                  # wheel right
    # Click([mod], "Button8"),                                  # previous mb
    # Click([mod], "Button9"),                                  # next mb
]



for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=False), # set to true if you also want to move to this group
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
        ]
    )
