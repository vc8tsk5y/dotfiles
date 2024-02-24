from libqtile.config import Group, Match, ScratchPad, DropDown

# groups = [Group(i) for i in "1234567890"]
# groups = [Group(f"{i+1}", label="") for i in range(9)]


groups = [
    Group("1"),
    Group("2"),
    Group("3"),
    Group("4"),
    Group("5"),

    ScratchPad("0", [
        DropDown(
            "term",
            "kitty",
            width=0.5,
            height=0.5,
            x=0.25,
            y=0.25,
            on_focus_lost_hide=False,
            opacity=1.0,
            warp_pointer=False,
        ),
        DropDown(
            "pavucontrol",
            "pavucontrol",
            width=0.4,
            height=1.,
            x=0.3,
            y=0.0,
            on_focus_lost_hide=False,
            opacity=1.0,
            warp_pointer=False,
        ),

    ]),
]
