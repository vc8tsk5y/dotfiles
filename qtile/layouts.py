from libqtile import layout
from libqtile.config import Match

layouts = [
    layout.Columns(
        border_focus="#b4befe",
        border_focus_stack="#7fbbb3",
        border_normal="#a6e3a1",
        border_normal_stack="#a6e3a1",
        border_width=4,
        margin=4,
        margin_on_single=0,
        num_columns=1,
    ),
    layout.Max(
        border_focus="#ff00ff",
        border_normal="#ff00ff",
        border_width=0,
        margin=0,
        only_focused=True,
    ),
]


floating_layout = layout.Floating(
    border_focus = ["#b4befe"],
    border_normal = ["#a6e3a1"],
    border_width = 4,
    fullscreen_border_width = 0,
    max_border_width = 0,
    float_rules=[
        # Run "xprop" to find wm class or title etc
        *layout.Floating.default_float_rules,
        # Match(wm_class="xprop | grep WM_class"),
    ]
)
