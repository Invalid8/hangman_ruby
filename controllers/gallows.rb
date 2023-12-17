# draw a gallow and parts of the hangman
# depending on the number of errors

def draw_gallow errors

    roof   = "  ____ "
    top    = " |/  | "
    head   = " |     "
    trunk  = " |     "
    hips   = " |     "
    legs   = " |     "
    bottom = " |     "
    foot   = "...    "

    head[5] = "O" if errors > 0

    trunk[4] = "/" if errors > 1
    trunk[5] = "|" if errors > 2
    trunk[6] = "\\" if errors > 3

    hips[5] = "|" if errors > 4

    legs[4] = "/" if errors > 5
    legs[6] = "\\" if errors > 6

    puts(roof, top, head, trunk, hips, legs, bottom, foot)

end

def escape_gallow()
    puts(
    """
     ____
    |/  |
    |   O
    |
    |   0 <o(*￣▽￣*)o> - Thanks! the Save 😉
    |  /|\\
    |   |
    |  / \\
    ....
    """)
end
