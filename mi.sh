#!/bin/bash

# DO NOT TOUCH THESE CONFIG OPTIONS, EDIT THEM IN mi.conf!
KEY_DIRECTORY='./extra'
if [ -d "$KEY_DIRECTORY" ]; then
    PGP_KEYS_DOWNLOADED="1"
else
    PGP_KEYS_DOWNLOADED="0"
fi
source ./mi.conf

globalbar () {
    clear
    echo "╭───────╮ ╭────────╮"
    echo "│ mi.sh │ │ v3.0.0 │"
    echo "╰───────╯ ╰────────╯"
    echo ""
}
mainloop () {
    globalbar
    echo "╭──────────┬───────────────╮"
    echo "│   info   │        v3.0.0 │"
    echo "├──────────┼───────────────┤"
    echo "│ Ctrl + C │          quit │"
    echo "│ mi.conf  │   configurate │"
    echo "╰──────────┴───────────────╯"
    echo ""
    echo "╭──────────────────────────╮"
    echo "│     SELECT A SCRIPT!     │"
    echo "╰──────────────────────────╯"
    echo "╭───┬────────────────────┬─╮"
    echo "│ 1 │ qyint-community    │ │"
    echo "│ 2 │ qyint-pgp-keys     │ │"
    echo "│ 3 │ qyint-manifesto    │ │"
    echo "│ 4 │ installers         │ │"
    echo "│ 5 │ revolt-gradients   │ │"
    echo "╰───┴────────────────────┴─╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        qyint_community_0
    elif [ "$SELECT" == "qyint-community" ]; then
        qyint_community_0
    elif [ "$SELECT" == "2" ]; then
        qyint_pgp_keys
    elif [ "$SELECT" == "qyint-pgp-keys" ]; then
        qyint_pgp_keys
    elif [ "$SELECT" == "3" ]; then
        qyint_license
    elif [ "$SELECT" == "qyint-manifesto" ]; then
        qyint_license
    elif [ "$SELECT" == "4" ]; then
        installers
    elif [ "$SELECT" == "installers" ]; then
        installers
    elif [ "$SELECT" == "5" ]; then
        revolt_gradients
    elif [ "$SELECT" == "revolt-gradients" ]; then
        revolt_gradients
    else
        select_failed
    fi
}
select_failed () {
    globalbar
    echo "╭──────────────────────────╮"
    echo "│ Input not recognized.    │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    mainloop
}

#
#
# QYINT-COMMUNITY
#
#

qyint_community_0 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭───────╮"
    echo "│ qyint │ │ v5.0.0 │ │ index │"
    echo "╰───────╯ ╰────────╯ ╰───────╯"
    echo "╭─────────┬─────────────────────────────────╮"
    echo "│ welcome │                                 │"
    echo "├─────────┴─────────────────────────────────┤"
    echo "│ Privacy and Freedom on the Internet are   │"
    echo "│ no longer taken for granted in our        │"
    echo "│ capitalistic Society, neither is          │"
    echo "│ Democracy.                                │"
    echo "│ Spying on Users, restricting their        │"
    echo "│ Freedom and making Decisions for them is  │"
    echo "│ simply more profitable for the Owners.    │"
    echo "│ But we imagine a World withouta Profit    │"
    echo "│ Incentive and with a truly democratic     │"
    echo "│ System - and we will have to build it     │"
    echo "│ ourselves.                                │"
    echo "│ This Revolution has to take place on the  │"
    echo "│ Internet aswell.                          │"
    echo "│                                           │"
    echo "│ The Version Number next to the Qyint-     │"
    echo "│ Header shows the ''Sync Number''.         │"
    echo "│ While the Website will be updated auto-   │"
    echo "│ matically, this will not. Make sure the   │"
    echo "│ Sync Number is up-to-date regularly.      │"
    echo "│ If it is not, youll have to redownload.   │"
    echo "╰───────────────────────────────────────────╯"
    echo ""
    echo "╭──────────────────────────╮"
    echo "│     SELECT A SCRIPT!     │"
    echo "╰──────────────────────────╯"
    echo "╭───┬────────────────────┬─╮"
    echo "│ 1 │ community-feed     │ │"
    echo "│ 2 │ socials            │ │"
    echo "│ 3 │ links              │ │"
    echo "│ 4 │ members            │ │"
    echo "╰───┴────────────────────┴─╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        qyint_community_1
    elif [ "$SELECT" == "community-feed" ]; then
        qyint_community_1
    elif [ "$SELECT" == "2" ]; then
        qyint_community_2
    elif [ "$SELECT" == "socials" ]; then
        qyint_community_2
    elif [ "$SELECT" == "3" ]; then
        qyint_community_3
    elif [ "$SELECT" == "links" ]; then
        qyint_community_3
    elif [ "$SELECT" == "4" ]; then
        qyint_community_4
    elif [ "$SELECT" == "members" ]; then
        qyint_community_4
    else
        qyint_community_select_failed
    fi
}
qyint_community_select_failed () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭─────╮"
    echo "│ qyint │ │ v5.0.0 │ │ err │"
    echo "╰───────╯ ╰────────╯ ╰─────╯"
    echo "╭──────────────────────────╮"
    echo "│ Input not recognized.    │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_1 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ community-feed │"
    echo "╰───────╯ ╰────────╯ ╰────────────────╯"
    echo "╭─────────────────────────────────────╮"
    echo "│ Sorry, the Community Feed is not    │"
    echo "│ available through mi.sh right now.  │"
    echo "│ Just download an RSS Reader for the │"
    echo "│ CLI and add any of the following    │"
    echo "│ Feeds:                              │"
    echo "│ Press any key to return.            │"
    echo "│ Ctrl+C to exit.                     │"
    echo "╰─────────────────────────────────────╯"
    echo "╭──────────────────────────────────────────────────────────────────────╮"
    echo "│ RSS FEED LINKS                                                       │"
    echo "│ Community Updates:                                                   │"
    echo "│ https://qyint-community.github.io/feed/qyint-community-feed/feed.xml │"
    echo "│ Project Updates:                                                     │"
    echo "│ https://qyint-community.github.io/feed/project-updates/feed.xml      │"
    echo "│ Event Notifications:                                                 │"
    echo "│ https://qyint-community.github.io/feed/project-updates/events.xml    │"
    echo "╰──────────────────────────────────────────────────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_2 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ social │"
    echo "╰───────╯ ╰────────╯ ╰────────╯"
    echo "╭─────────┬────────────────────────────────────┬─╮" 
    echo "│ Revolt  │ https://rvlt.gg/j1hKjCw3           │ │"
    echo "│ Github  │ https://github.com/Qyint-Community │ │"
    echo "│ YouTube │ https://www.youtube.com/@qyint     │ │"
    echo "│ Odysee  │ https://odysee.com/@qyint:c        │ │"
    echo "╰─────────┴────────────────────────────────────┴─╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with these   │"
    echo "│ socials through mi.sh.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_3 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭───────╮"
    echo "│ qyint │ │ v5.0.0 │ │ links │"
    echo "╰───────╯ ╰────────╯ ╰───────╯"
    echo "╭──────────────────────────────╮"
    echo "│       SELECT A SCRIPT!       │"
    echo "╰──────────────────────────────╯"
    echo "╭───┬────────────────────────┬─╮"
    echo "│ 1 │ MANIFESTO              │ │"
    echo "│ 2 │ GENERAL ASSEMBLY       │ │"
    echo "│ 3 │ world of war           │ │"
    echo "│ 4 │ minetest mods          │ │"
    echo "│ 5 │ discord bot            │ │"
    echo "│ 6 │ warcraft ressources    │ │"
    echo "╰───┴────────────────────────┴─╯"
    echo "╭──────────────────────────────╮"
    echo "│ Not the kind of links        │"
    echo "│ youre looking for?           │"
    echo "│ Go back and open the         │"
    echo "│ 'socials' page for the       │"
    echo "│ links to our socials and     │"
    echo "│ contacts!                    │"
    echo "╰──────────────────────────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        qyint_community_3_1
    elif [ "$SELECT" == "manifesto" ]; then
        qyint_community_3_1
    elif [ "$SELECT" == "2" ]; then
        qyint_community_3_2
    elif [ "$SELECT" == "general assembly" ]; then
        qyint_community_3_2
    elif [ "$SELECT" == "3" ]; then
        qyint_community_3_3
    elif [ "$SELECT" == "world of war" ]; then
        qyint_community_3_3
    elif [ "$SELECT" == "4" ]; then
        qyint_community_3_4
    elif [ "$SELECT" == "minetest mods" ]; then
        qyint_community_3_4
    elif [ "$SELECT" == "5" ]; then
        qyint_community_3_5
    elif [ "$SELECT" == "revolt bot" ]; then
        qyint_community_3_5
    elif [ "$SELECT" == "6" ]; then
        qyint_community_3_6
    elif [ "$SELECT" == "warcraft ressources" ]; then
        qyint_community_3_6
    else
        qyint_community_select_failed
    fi
}
qyint_community_3_1 () {
    clear
    curl https://raw.githubusercontent.com/Qyint-Community/manifesto/main/qyint-manifesto.txt
    echo "╭──────────────────────────╮"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_3_2 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭────────────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ links/general assembly │"
    echo "╰───────╯ ╰────────╯ ╰────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ https://rvlt.gg/VEd5De7t │"
    echo "╰──────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_3_2 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭────────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ links/world of war │"
    echo "╰───────╯ ╰────────╯ ╰────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ This isnt copied here.   │"
    echo "│ See our Website for it.  │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_3_2 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭─────────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ links/minetest mods │"
    echo "╰───────╯ ╰────────╯ ╰─────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ This isnt copied here.   │"
    echo "│ See our Website for it.  │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_3_2 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭──────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ links/revolt bot │"
    echo "╰───────╯ ╰────────╯ ╰──────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ This isnt copied here.   │"
    echo "│ See our Website for it.  │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_3_2 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭───────────────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ links/warcraft ressources │"
    echo "╰───────╯ ╰────────╯ ╰───────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ This isnt copied here.   │"
    echo "│ See our Website for it.  │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_4 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭─────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ members │"
    echo "╰───────╯ ╰────────╯ ╰─────────╯"
    echo "╭──────────────────────────╮"
    echo "│     SELECT A SCRIPT!     │"
    echo "╰──────────────────────────╯"
    echo "╭────┬───────────────┬─────────╮"
    echo "│  1 │ mish          │ founder │"
    echo "│  2 │ mini          │  admin  │"
    echo "│  3 │ slake         │  admin  │"
    echo "├────┼───────────────┼─────────┤"
    echo "│  4 │ lanina        │ commang │"
    echo "│  5 │ eulenmensch   │   mod   │"
    echo "│  6 │ linmax        │   mod   │"
    echo "│  7 │ lord_flo      │   mod   │"
    echo "├────┼───────────────┼─────────┤"
    echo "│  8 │ dr4c0         │  nesmc. │"
    echo "│  9 │ mjf           │  member │"
    echo "│ 10 │ laudix        │  member │"
    echo "│ 11 │ nm            │  member │"
    echo "╰────┴───────────────┴─────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        qyint_community_mish
    elif [ "$SELECT" == "mish" ]; then
        qyint_community_mish
    elif [ "$SELECT" == "2" ]; then
        qyint_community_mini
    elif [ "$SELECT" == "mini" ]; then
        qyint_community_mini
    elif [ "$SELECT" == "3" ]; then
        qyint_community_slake
    elif [ "$SELECT" == "slake" ]; then
        qyint_community_slake
    elif [ "$SELECT" == "4" ]; then
        qyint_community_lanina
    elif [ "$SELECT" == "lanina" ]; then
        qyint_community_lanina
    elif [ "$SELECT" == "5" ]; then
        qyint_community_eulenmensch
    elif [ "$SELECT" == "eulenmensch" ]; then
        qyint_community_eulenmensch
    elif [ "$SELECT" == "6" ]; then
        qyint_community_linmax
    elif [ "$SELECT" == "linmax" ]; then
        qyint_community_linmax
    elif [ "$SELECT" == "7" ]; then
        qyint_community_lord_flo
    elif [ "$SELECT" == "lord_flo" ]; then
        qyint_community_lord_flo
    elif [ "$SELECT" == "8" ]; then
        qyint_community_dr4c0
    elif [ "$SELECT" == "dr4c0" ]; then
        qyint_community_dr4c0
    elif [ "$SELECT" == "9" ]; then
        qyint_community_mjf
    elif [ "$SELECT" == "mjf" ]; then
        qyint_community_mjf
    elif [ "$SELECT" == "10" ]; then
        qyint_community_laudix
    elif [ "$SELECT" == "laudix" ]; then
        qyint_community_laudix
    elif [ "$SELECT" == "11" ]; then
        qyint_community_nm
    elif [ "$SELECT" == "nm" ]; then
        qyint_community_nm
    else
        qyint_community_select_failed
    fi
}
qyint_community_mish () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭──────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / mish │"
    echo "╰───────╯ ╰────────╯ ╰──────────────╯"
    echo "╭──────┬────────────────────────────────────────╮"
    echo "│ mish │                                        │"
    echo "├──────┴────────────────────────────────────────┤"
    echo "│ There will me more Information in the Future. │"
    echo "│ I'm currently in the Process of setting my    │"
    echo "│ accounts up again from ''scratch'' -          │"
    echo "│ If you want any other Information,            │"
    echo "│ Message me!                                   │"
    echo "╰───────────────────────────────────────────────╯"
    echo "╭─────────┬─────────────────────────────────────╮"
    echo "│ socials │                                     │"
    echo "├─────────┼─────────────────────────────────────┤"
    echo "│ Revolt  │ mi.sh#2326                          │"
    echo "│ E-Mail  │ mi-dot-sh@proton.me                 │"
    echo "│ Matrix  │ @mi-dot-sh:matrix.org               │"
    echo "│ Session │ 05c5e12229ac6b428571bbdefedd5275443 │"
    echo "│         │ 296547c53048f19bf803c131775015e     │"
    echo "│ Github  │ @mi-dot-sh                          │"
    echo "│ Twitch  │ @mi_dot_sh                          │"
    echo "╰─────────┴─────────────────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│     SELECT A SCRIPT!     │"
    echo "╰──────────────────────────╯"
    echo "╭───┬─────────╮"
    echo "│ 1 │ pgp-key │"
    echo "├───┼─────────┤"
    echo "│ 0 │ back    │"
    echo "╰───┴─────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        if [ "$PGP_KEYS_DOWNLOADED" == "1" ]; then
            clear && cat ./extra/mish-pgp-public-key
        else
            clear && echo "You have not downloaded the keys Repository."
        fi
    elif [ "$SELECT" == "pgp-key" ]; then
        if [ "$PGP_KEYS_DOWNLOADED" == "1" ]; then
            clear && cat ./extra/mish-pgp-public-key
        else
            clear && echo "You have not downloaded the keys Repository."
        fi
    elif [ "$SELECT" == "2" ]; then
        qyint_community_0
    elif [ "$SELECT" == "back" ]; then
        qyint_community_0
    else
        qyint_community_select_failed
    fi
}
qyint_community_mini () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭──────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / mini │"
    echo "╰───────╯ ╰────────╯ ╰──────────────╯"
    echo "╭──────┬────────────────────────────────────────╮"
    echo "│ mini │                                        │"
    echo "├──────┴────────────────────────────────────────┤"
    echo "│ Hello, my name is Mina and I'm from Germany.  │"
    echo "│ Everybody calls me 'Mini' because I'm small.  │"
    echo "│                                               │"
    echo "│ ''And why is she in the Admin team?           │"
    echo "│                  Thighs, obviously.''         │"
    echo "│ ~Slake                                        │"
    echo "╰───────────────────────────────────────────────╯"
    echo "╭─────────┬─────────────────────────────────────╮"
    echo "│ socials │                                     │"
    echo "├─────────┼─────────────────────────────────────┤"
    echo "│ Revolt  │ MiniMina#0730                       │"
    echo "│ Matrix  │ @mini-mina:matrix.org               │"
    echo "╰─────────┴─────────────────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│     SELECT A SCRIPT!     │"
    echo "╰──────────────────────────╯"
    echo "╭───┬─────────╮"
    echo "│ 1 │ pgp-key │"
    echo "├───┼─────────┤"
    echo "│ 0 │ back    │"
    echo "╰───┴─────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        if [ "$PGP_KEYS_DOWNLOADED" == "1" ]; then
            clear && cat ./extra/mini-pgp-public-key
        else
            clear && echo "You have not downloaded the keys Repository."
        fi
    elif [ "$SELECT" == "pgp-key" ]; then
        if [ "$PGP_KEYS_DOWNLOADED" == "1" ]; then
            clear && cat ./extra/mini-pgp-public-key
        else
            clear && echo "You have not downloaded the keys Repository."
        fi
    elif [ "$SELECT" == "2" ]; then
        qyint_community_0
    elif [ "$SELECT" == "back" ]; then
        qyint_community_0
    else
        qyint_community_select_failed
    fi
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_slake () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭───────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / slake │"
    echo "╰───────╯ ╰────────╯ ╰───────────────╯"
    echo "╭───────┬───────────╮"
    echo "│ slake │           │"
    echo "├───────┴───────────┤"
    echo "│ Thighs, obviously │"
    echo "╰───────────────────╯"
    echo "╭─────────┬────────────╮"
    echo "│ socials │            │"
    echo "├─────────┼────────────┤"
    echo "│ Revolt  │ Slake#9515 │"
    echo "╰─────────┴────────────╯"
    echo "╭──────────────────────────╮"
    echo "│     SELECT A SCRIPT!     │"
    echo "╰──────────────────────────╯"
    echo "╭───┬─────────╮"
    echo "│ 1 │ pgp-key │"
    echo "├───┼─────────┤"
    echo "│ 0 │ back    │"
    echo "╰───┴─────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        if [ "$PGP_KEYS_DOWNLOADED" == "1" ]; then
            clear && cat ./extra/slake-pgp-public-key
        else
            clear && echo "You have not downloaded the keys Repository."
        fi
    elif [ "$SELECT" == "pgp-key" ]; then
        if [ "$PGP_KEYS_DOWNLOADED" == "1" ]; then
            clear && cat ./extra/slake-pgp-public-key
        else
            clear && echo "You have not downloaded the keys Repository."
        fi
    elif [ "$SELECT" == "2" ]; then
        qyint_community_0
    elif [ "$SELECT" == "back" ]; then
        qyint_community_0
    else
        qyint_community_select_failed
    fi
}
qyint_community_lanina () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / lanina │"
    echo "╰───────╯ ╰────────╯ ╰────────────────╯"
    echo "╭────────┬───────────────────────────────────────╮"
    echo "│ lanina │                       [ she / they ]  │"
    echo "├────────┴───────────────────────────────────────┤"
    echo "│ Brandenburg, Germany                           │"
    echo "│ Full-time Kreml-instituted Conspiracy Theorist │"
    echo "│ Socialist in an Anarchist Federation           │"
    echo "│ Tux is my Lord and Savior                      │"
    echo "│ Not-Sexist-Certification (bi)                  │"
    echo "│ autistic (very)                                │"
    echo "╰────────────────────────────────────────────────╯"
    echo "╭─────────┬──────────────────────────────────────╮"
    echo "│ socials │                                      │"
    echo "├─────────┼──────────────────────────────────────┤"
    echo "│ Revolt  │ Lanina#1421                          │"
    echo "│ Fedi    │ @lanina@calckey.social               │"
    echo "╰─────────┴──────────────────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with this.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_eulenmensch () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭─────────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / eulenmensch │"
    echo "╰───────╯ ╰────────╯ ╰─────────────────────╯"
    echo "╭─────────────┬─────────────────────────────────╮"
    echo "│ eulenmensch │                                 │"
    echo "├─────────────┴─────────────────────────────────┤"
    echo "│ Emma doesnt answer me                         │"
    echo "│ so you get an empty page. have fun. ~mish     │"
    echo "╰───────────────────────────────────────────────╯"
    echo "╭─────────┬─────────────────────────────────────╮"
    echo "│ socials │                                     │"
    echo "├─────────┼─────────────────────────────────────┤"
    echo "│ Revolt  │ EulenMensch#8461                    │"
    echo "╰─────────┴─────────────────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with this.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_linmax () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / linmax │"
    echo "╰───────╯ ╰────────╯ ╰────────────────╯"
    echo "╭────────┬──────────────────────────────────────╮"
    echo "│ linmax │                                      │"
    echo "├────────┴──────────────────────────────────────┤"
    echo "│ Max doesnt answer me either.                  │"
    echo "│ Have fun with your empty page. ~mish          │"
    echo "╰───────────────────────────────────────────────╯"
    echo "╭─────────┬─────────────────────────────────────╮"
    echo "│ socials │                                     │"
    echo "├─────────┼─────────────────────────────────────┤"
    echo "│ Revolt  │ LinMax#5600                         │"
    echo "╰─────────┴─────────────────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with this.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_lord_flo () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭──────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / lord_flo │"
    echo "╰───────╯ ╰────────╯ ╰──────────────────╯"
    echo "╭──────────┬────────────────────────────────────╮"
    echo "│ lord_flo │                                    │"
    echo "├──────────┴────────────────────────────────────┤"
    echo "│ hi                                            │"
    echo "│ ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓ │"
    echo "│ ┃ Buy Warcraft 3 Reforged Now!              ┃ │"
    echo "│ ┃ Click here: https://playwarcraft3.com/    ┃ │"
    echo "│ ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛ │"
    echo "╰───────────────────────────────────────────────╯"
    echo "╭─────────┬─────────────────────────────────────╮"
    echo "│ socials │                                     │"
    echo "├─────────┼─────────────────────────────────────┤"
    echo "│ Revolt  │ Lord_Flo#2455                       │"
    echo "│ Matrix  │ @lord_flo:matrix.org                │"
    echo "│ Discord │ Lord Flo#9204                       │"
    echo "╰─────────┴─────────────────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with this.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_dr4c0 () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭───────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / dr4c0 │"
    echo "╰───────╯ ╰────────╯ ╰───────────────╯"
    echo "╭───────┬────────────────────╮"
    echo "│ DR4C0 │                    │"
    echo "├───────┴────────────────────┤"
    echo "│ Never gonna give you up!   │"
    echo "│ Never gonna let you down!  │"
    echo "│ Never gonna run around and │"
    echo "│  desert you!               │"
    echo "╰────────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with this.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_mjf () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭─────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / mjf │"
    echo "╰───────╯ ╰────────╯ ╰─────────────╯"
    echo "╭─────┬────╮"
    echo "│ MJF │    │"
    echo "├─────┴────┤"
    echo "│ femboyTM │"
    echo "╰──────────╯"
    echo "╭─────────┬──────────╮"
    echo "│ socials │          │"
    echo "├─────────┼──────────┤"
    echo "│ Revolt  │ MJF#2185 │"
    echo "╰─────────┴──────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with this.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_laudix () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭────────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / laudix │"
    echo "╰───────╯ ╰────────╯ ╰────────────────╯"
    echo "╭────────┬──────────────────────╮"
    echo "│ laudix │                      │"
    echo "├────────┴──────────────────────┤"
    echo "│ This Page is currently empty. │"
    echo "╰───────────────────────────────╯"
    echo "╭─────────┬────────────────────────────╮"
    echo "│ socials │                            │"
    echo "├─────────┼────────────────────────────┤"
    echo "│ Revolt  │ LAUDIX#9347                │"
    echo "│ Matrix  │ @laudixderechte:matrix.org │"
    echo "│ DC Com. │ https://dsc.gg/laudix      │"
    echo "│ Discord │ LAUDIX2010#8296            │"
    echo "│ TikTok  │ @laudixyt                  │"
    echo "│ Twitch  │ @laudix20                  │"
    echo "│ YouTube │ @laudix0                   │"
    echo "│ YT2     │ @teamlaudix902             │"
    echo "╰─────────┴────────────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with this.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}
qyint_community_nm () {
    globalbar
    echo "╭───────╮ ╭────────╮ ╭────────────╮"
    echo "│ qyint │ │ v5.0.0 │ │ staff / nm │"
    echo "╰───────╯ ╰────────╯ ╰────────────╯"
    echo "╭────┬──────────────────────────╮"
    echo "│ nm │                          │"
    echo "├────┴──────────────────────────┤"
    echo "│ This Page is currently empty. │"
    echo "╰───────────────────────────────╯"
    echo "╭─────────┬─────────────────────╮"
    echo "│ socials │                     │"
    echo "├─────────┼─────────────────────┤"
    echo "│ Revolt  │ nm#2805             │"
    echo "╰─────────┴─────────────────────╯"
    echo "╭──────────────────────────╮"
    echo "│ Sorry, there are no ways │"
    echo "│ to interact with this.   │"
    echo "│ Press any key to return. │"
    echo "│ Ctrl+C to exit.          │"
    echo "╰──────────────────────────╯"
    read -n 1 -r -p " "
    qyint_community_0
}

#
#
# QYINT-PGP-KEYS
#
#

qyint_pgp_keys () {
    globalbar
    echo "╭──────────────────────────╮"
    echo "│     PGP-KEYS // MENU     │"
    echo "╰──────────────────────────╯"
    echo "╭───┬────────────────────┬─╮"
    echo "│ 1 │ download-keys      │ │"
    echo "│ 2 │ update-keys        │ │"
    echo "╰───┴────────────────────┴─╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        mkdir -p ./extra
        cd extra
        git clone https://github.com/Qyint-Community/keys .
    elif [ "$SELECT" == "download-keys" ]; then
        mkdir -p ./extra
        cd extra
        git clone https://github.com/Qyint-Community/keys .
    elif [ "$SELECT" == "2" ]; then
        cd extra
        git pull
    elif [ "$SELECT" == "update-keys" ]; then
        cd extra
        git pull
    else
        select_failed
    fi
    mainloop
}

#
#
# QYINT-LICENSE
#
#

qyint_license () {
    clear
    curl https://raw.githubusercontent.com/Qyint-Community/manifesto/main/qyint-manifesto.txt
    read -n 1 -r -p " "
    mainloop
}

#
#
# INSTALLERS
#
#

installers () {
    globalbar
    echo "╭─────────────────────────╮"
    echo "│ installers              │"
    echo "├─────────────────────────┤"
    echo "│ made by mish - for mish │"
    echo "╰─────────────────────────╯"
    echo ""
    echo "╭──────────────────────────╮"
    echo "│     SELECT A SCRIPT!     │"
    echo "╰──────────────────────────╯"
    echo "╭───┬──────────────────────╮"
    echo "│ 1 │ mimux-termux-setup   │"
    echo "│ 2 │ miastools-installer  │"
    echo "│ 3 │ miarch               │"
    echo "│ 4 │ waydroid-installer   │"
    echo "╰───┴──────────────────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "1" ]; then
        installer_mimux
    elif [ "$SELECT" == "mimux-termux-setup" ]; then
        installer_mimux
    elif [ "$SELECT" == "2" ]; then
        installer_miastools
    elif [ "$SELECT" == "maistools-installer" ]; then
        installer_miastools
    elif [ "$SELECT" == "3" ]; then
        installer_miarch
    elif [ "$SELECT" == "miarch" ]; then
        installer_miarch
    elif [ "$SELECT" == "4" ]; then
        installer_waydroid
    elif [ "$SELECT" == "waydroid-installer" ]; then
        installer_waydroid
    else
        select_failed
    fi
}
installer_mimux () {
    globalbar
    echo "╭───────────────────────────────╮"
    echo "│ mimux-termux-setup            │"
    echo "├───────────────────────────────┤"
    echo "│ This Installer will install   │"
    echo "│ a set of Packages and will    │"
    echo "│ configure your Termux Install │"
    echo "│ Note:                         │"
    echo "│ You might not want this setup │"
    echo "│ This Setup was made by mish,  │"
    echo "│ it is primarily used to:      │"
    echo "│ - host a miastools instance   │"
    echo "│ - edit files in vim           │"
    echo "│ Note:                         │"
    echo "│ Run the miastools-installer   │"
    echo "│ afterwards to install the bot │"
    echo "╰───────────────────────────────╯"
    echo "╭────────────────────────╮"
    echo "│ Enter 'install' to run │"
    echo "╰────────────────────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "install" ]; then
        clear
        cd installer
        chmod +x mimux-setup-termux.sh
        ./mimux-setup-termux.sh
    else
        select_failed
    fi
}
installer_miastools () {
    globalbar
    echo "╭───────────────────────────────╮"
    echo "│ miastools-installer           │"
    echo "├───────────────────────────────┤"
    echo "│ This Installer will install   │"
    echo "│ the miastools Discord Bot and │"
    echo "│ its dependencies.             │"
    echo "│ python3 is reqired.           │"
    echo "╰───────────────────────────────╯"
    echo "╭────────────────────────╮"
    echo "│ Enter 'install' to run │"
    echo "╰────────────────────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "install" ]; then
        clear
        cd installer
        chmod +x miastools-installer.sh
        ./miastools-installer.sh
    else
        select_failed
    fi
}
installer_miarch () {
    globalbar
    echo "╭───────────────────────────────╮"
    echo "│ miarch                        │"
    echo "├───────────────────────────────┤"
    echo "│ You probably dont want to use │"
    echo "│ this.                         │"
    echo "╰───────────────────────────────╯"
    echo "╭────────────────────────╮"
    echo "│ Enter 'install' to run │"
    echo "╰────────────────────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "install" ]; then
        clear
        cd installer
        chmod +x miarch.sh
        ./miarch.sh
    else
        select_failed
    fi
}
installer_waydroid () {
    globalbar
    echo "╭───────────────────────────────╮"
    echo "│ waydroid-installer            │"
    echo "├───────────────────────────────┤"
    echo "╰───────────────────────────────╯"
    echo "╭────────────────────────╮"
    echo "│ Enter 'install' to run │"
    echo "╰────────────────────────╯"
    read -r -p " → " SELECT
    if [ "$SELECT" == "install" ]; then
        clear
        cd installer
        chmod +x waydroid-installer.sh
        ./waydroid-installer.sh
    else
        select_failed
    fi
}

revolt_gradients () {
    ./unimportant-other-scripts/revolt-gradients/base.sh
}

mainloop
