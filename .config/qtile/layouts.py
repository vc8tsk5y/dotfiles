from libqtile import layout
from libqtile.config import Match

layouts = [
    layout.Columns(
        border_focus="#a7c080",
        border_focus_stack="#7fbbb3",
        border_normal="#425047",
        border_normal_stack="#3a515d",
        border_width=2,
        insert_position=1,
        border_on_single=True,
        margin=8,
        margin_on_single=8,
        num_columns=1,
    ),
    layout.Max(
        border_focus="#a7c080",
        border_normal="#425047",
        border_width=2,
        margin=8,
        only_focused=True,
    ),
]


floating_layout = layout.Floating(
    border_focus = ["#a7c080"],
    border_normal = ["#425047"],
    border_width = 2,
    fullscreen_border_width = 0,
    max_border_width = 0,
    float_rules=[
        # Run "xprop" to find wm class or title etc
        *layout.Floating.default_float_rules,
        # Match(wm_class="xprop | grep WM_class"),
    ]
)
