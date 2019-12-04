#ifndef CONFIG_H
#define CONFIG_H

#define MOD Mod4Mask
#define ROUND_CORNERS 7.5
#define WSK(K,N) \
    {MOD,           K, ws_go,     {.i = N}}, \
    {MOD|ShiftMask, K, win_to_ws, {.i = N}},

const char* menu[] = {"dmenu_run",
                      "-i", \
                      "-m",  "0", \
                      "-fn", "Consolas:size=9", \
                      "-nb", "#303030", \
                      "-nf", "#c5c8c6", \
                      "-sb", "#c5c8c6", \
                      "-sf", "#303030", 0};
const char* term[] = {"st",             0};
const char* shtc[] = {"sht", "c",       0};
const char* shts[] = {"sht", "s",       0};
const char* brid[] = {"bri", "10", "-", 0};
const char* briu[] = {"bri", "10", "+", 0};
const char* micm[] = {"pactl", "set-source-mute", "@DEFAULT_SOURCE@", "toggle", 0};
const char* vold[] = {"pactl", "set-sink-volume", "@DEFAULT_SINK@",   "-5%",    0};
const char* volm[] = {"pactl", "set-sink-mute",   "@DEFAULT_SINK@",   "toggle", 0};
const char* volu[] = {"pactl", "set-sink-volume", "@DEFAULT_SINK@",   "+5%",    0};

static struct key keys[] = {
    {MOD, XK_q,                     win_kill,   {0}},
    {MOD, XK_c,                     win_center, {0}},
    {MOD, XK_f,                     win_fs,     {0}},
    {MOD, XK_Tab,                   win_next,   {0}},

    {MOD, XK_d,                     run,        {.com = menu}},
    {MOD, XK_Return,                run,        {.com = term}},
    {0,   XK_Print,                 run,        {.com = shtc}},
    {MOD, XK_Print,                 run,        {.com = shts}},

    {0,   XF86XK_MonBrightnessDown, run,        {.com = brid}},
    {0,   XF86XK_MonBrightnessUp,   run,        {.com = briu}},
    {0,   XF86XK_AudioMicMute,      run,        {.com = micm}},
    {0,   XF86XK_AudioLowerVolume,  run,        {.com = vold}},
    {0,   XF86XK_AudioMute,         run,        {.com = volm}},
    {0,   XF86XK_AudioRaiseVolume,  run,        {.com = volu}},

    WSK(  XK_1,                                 1)
    WSK(  XK_2,                                 2)
    WSK(  XK_3,                                 3)
    WSK(  XK_4,                                 4)
    WSK(  XK_5,                                 5)
    WSK(  XK_6,                                 6)
    WSK(  XK_7,                                 7)
    WSK(  XK_8,                                 8)
    WSK(  XK_9,                                 9)
};

#endif
