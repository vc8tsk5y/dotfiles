import os
from libqtile import bar, widget
from libqtile.lazy import lazy
from libqtile.config import Screen

from keys import mic_mute, vol_mute, raise_volume, lower_volume


def get_mic_icon():
    command = "pactl get-source-mute @DEFAULT_SOURCE@"
    output = os.popen(command).read()
    if "Mute: no" in output:
        return "󰍬 "
    elif "Mute: yes" in output:
        return "󰍭 "
    else:
        return "Unable to determine mute status"

def get_volume_percent():
    command = "pactl get-sink-volume @DEFAULT_SINK@ | sed -n '1{s/[^/]*\///; s/\/.*//p}'"
    return os.popen(command).read()

widget_defaults = dict(
    font="FiraCode Nerd Font",
    fontsize=12,
    padding=0,
    margin=0,
    # background="#000000",
    # foreground"ffffff",
)

screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.TextBox(
                    text="🐧",
                    padding=8,
                    mouse_callbacks={"Button1": lazy.spawn("/home/tim/dotfiles/.config/rofi/scripts/scripts.sh"),},
                ),
                widget.GroupBox(
                    active="#a7c080", # farbe der font wenn windo in group
                    borderwidth=4,
                    disable_drag=True,
                    hide_unused=True,
                    rounded=False,
                    use_mouse_wheel=False,
                    highlight_method="block"
                ),

                widget.GenPollText(
                    name="mic_mute_icon",
                    func=get_mic_icon,
                    update_interval=0.2,
                    mouse_callbacks={"Button1": lazy.function(mic_mute),},
                    fontsize=24,
                ),

                widget.Volume(
                    emoji=True,
                    emoji_list=["󰝟 ", "󰕿 ", "󰖀 ", "󰕾 "],
                    fontsize=24,
                    check_mute_command="pactl get-sink-mute @DEFAULT_SINK@",
                    check_mute_string="Mute: yes",
                    get_volume_command="pactl get-sink-volume @DEFAULT_SINK@ | sed -n '1{s/[^/]*\///; s/\/.*//p}'",
                    mute_command="pactl set-sink-mute @DEFAULT_SINK@ toggle & /home/tim/dotfiles/.config/qtile/scripts/notify-vol-mute.sh",
                    volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +5% & /home/tim/dotfiles/.config/qtile/scripts/notify-volume.sh",
                    volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -5% & /home/tim/dotfiles/.config/qtile/scripts/notify-volume.sh",
                    volume_app="pavucontrol",
                ),

                widget.GenPollText(
                    name="volume_percent",
                    func=get_volume_percent,
                    update_interval=0.2,
                    mouse_callbacks={
                        "Button1": lazy.function(vol_mute),
                        "Button3": lazy.spawn("pavucontrol"),
                        "Button4": lazy.function(raise_volume),
                        "Button5": lazy.function(lower_volume),
                    },
                ),

                widget.Spacer(
                ),

                widget.Sep(
                ),

                widget.Spacer(
                ),

                widget.Chord(
                    background = "#1e1e2e",
                    chords_colors={
                        "launch": ("#00ff00", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),

                # NB Systray is incompatible with Wayland, consider using StatusNotifier instead
                # widget.StatusNotifier(),
                widget.Systray(
                ),

                widget.Clock(
                    format="%Y.%m.%d %H:%M:%S"
                ),

                widget.QuickExit(
                ),

                widget.TextBox(
                    " X",
                    mouse_callbacks={"Button1": lazy.window.kill(),},
                ),
            ],
            size=24,
            margin=0,
            border_width=2,
            border_color="a7c080",
            background="#2d353b",
            opacity=0.8,
            name="bar1",
        ),
    ),

    Screen(
        bottom=bar.Bar(
            [
                widget.Clock(
                    format="%Y.%m.%d %H:%M:%S"
                ),

                widget.Spacer(
                ),

                widget.Sep(
                ),

                widget.Spacer(
                ),

                widget.GenPollText(
                    name="mic_mute_icon",
                    func=get_mic_icon,
                    update_interval=0.2,
                    mouse_callbacks={"Button1": lazy.function(mic_mute),},
                    fontsize=24,
                ),

                widget.Volume(
                    emoji=True,
                    emoji_list=["󰝟 ", "󰕿 ", "󰖀 ", "󰕾 "],
                    fontsize=24,
                    check_mute_command="pactl get-sink-mute @DEFAULT_SINK@",
                    check_mute_string="Mute: yes",
                    get_volume_command="pactl get-sink-volume @DEFAULT_SINK@ | sed -n '1{s/[^/]*\///; s/\/.*//p}'",
                    mute_command="pactl set-sink-mute @DEFAULT_SINK@ toggle & /home/tim/dotfiles/.config/qtile/scripts/notify-vol-mute.sh",
                    volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +5% & /home/tim/dotfiles/.config/qtile/scripts/notify-volume.sh",
                    volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -5% & /home/tim/dotfiles/.config/qtile/scripts/notify-volume.sh",
                    volume_app="pavucontrol",
                ),

                widget.GenPollText(
                    name="volume_percent",
                    func=get_volume_percent,
                    update_interval=0.2,
                    mouse_callbacks={
                        "Button1": lazy.function(vol_mute),
                        "Button3": lazy.spawn("pavucontrol"),
                        "Button4": lazy.function(raise_volume),
                        "Button5": lazy.function(lower_volume),
                    },
                ),
            ],
            size=24,
            margin=0,
            border_width=2,
            border_color="a7c080",
            background="#2d353b",
            opacity=0.8,
            name="bar2",
        ),
    ),
]
