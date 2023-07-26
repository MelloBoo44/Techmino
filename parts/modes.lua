return {
    {name='sprint_10l',    x=0,         y=0,        size=40,shape=1,icon="sprint1",         unlock={'sprint_40l','lockout','stack_WTF','scanner_l'}},
	
	{name='sprint_40l',    x=0,         y=-300,     size=40,shape=1,icon="sprint2",         unlock={'sprintAtk'}},
	{name='sprintAtk',     x=0,       y=-600,     size=40,shape=1,icon="sprint2"},

	{name='lockout',       x=0,       y=300,     size=40,shape=1,icon="bigbang",   unlock={'secret_grade','round_u'}},
	{name='secret_grade',  x=-150,      y=600,     size=40,shape=1,icon="secret_grade"},
	{name='round_u',       x=150,     y=600,     size=40,shape=1,icon="round"},
	
	{name='scanner_l',     x=-300,      y=0,      size=40,shape=1,icon="sprint3",         unlock={'solo_u','backfire_u'}},
	{name='solo_u',        x=-600,     y=150,    size=40,shape=1,icon="solo"},
	{name='backfire_u',    x=-600,      y=-150,      size=40,shape=1,icon="backfire"},
	
	{name='stack_WTF',   x=300,      y=0,        size=40,shape=1,icon="mess",            unlock={'rhythm_u'}},
	{name='rhythm_u',    x=600,      y=0,        size=40,shape=1,icon="rhythm"},
	-- {name='sprint_20l',    x=-200,      y=200,      size=50,shape=1,icon="sprint1"},
    -- {name='sprint_100l',   x=-400,      y=200,      size=50,shape=1,icon="sprint2"},
    -- {name='sprint_400l',   x=-600,      y=200,      size=40,shape=1,icon="sprint3"},
    -- {name='sprint_1000l',  x=-800,      y=200,      size=40,shape=1,icon="sprint3"},

    -- {name='sprint123',     x=160,       y=-400,     size=40,shape=1,icon="sprint_tri"},
    -- {name='sprintMPH',     x=200,       y=-260,     size=40,shape=3,icon="sprint2"},
    -- {name='sprintPenta',   x=130,       y=-140,     size=40,shape=3,icon="sprint_pento"},
    -- {name='drought_n',     x=-600,      y=400,      size=40,shape=1,icon="drought"},
    -- {name='drought_l',     x=-800,      y=400,      size=40,shape=1,icon="drought"},

    -- {name='dig_10l',       x=-200,      y=-200,     size=40,shape=1,icon="dig_sprint"},
    -- {name='dig_40l',       x=-400,      y=-200,     size=40,shape=1,icon="dig_sprint"},
    -- {name='dig_100l',      x=-600,      y=-200,     size=40,shape=1,icon="dig_sprint"},
    -- {name='dig_400l',      x=-800,      y=-200,     size=40,shape=1,icon="dig_sprint"},

    -- {name='dig_eff_10l',   x=-400,      y=0,        size=40,shape=1,icon="dig_sprint"},
    -- {name='dig_eff_40l',   x=-600,      y=0,        size=40,shape=1,icon="dig_sprint"},
    -- {name='dig_eff_100l',  x=-800,      y=0,        size=40,shape=1,icon="dig_sprint"},
    -- {name='dig_eff_400l',  x=-1000,     y=0,        size=40,shape=1,icon="dig_sprint"},

    -- {name='marathon_n',    x=0,         y=-600,     size=60,shape=1,icon="marathon"},
    -- {name='marathon_h',    x=0,         y=-800,     size=50,shape=1,icon="marathon"},

    -- {name='solo_e',        x=-600,      y=-1000,    size=40,shape=1,icon="solo"},
    -- {name='solo_n',        x=-800,      y=-1000,    size=40,shape=1,icon="solo"},
    -- {name='solo_h',        x=-1000,     y=-1000,    size=40,shape=1,icon="solo"},
    -- {name='solo_l',        x=-1200,     y=-1000,    size=40,shape=1,icon="solo"},

    -- {name='techmino49_e',  x=-1100,     y=-1200,    size=40,shape=1,icon="t49"},
    -- {name='techmino49_h',  x=-1100,     y=-1400,    size=40,shape=1,icon="t49"},
    -- {name='techmino49_u',  x=-1100,     y=-1600,    size=40,shape=1,icon="t49"},
    -- {name='techmino99_e',  x=-1300,     y=-1400,    size=40,shape=1,icon="t99"},
    -- {name='techmino99_h',  x=-1300,     y=-1600,    size=40,shape=1,icon="t99"},
    -- {name='techmino99_u',  x=-1300,     y=-1800,    size=40,shape=1,icon="t99"},

    -- {name='round_e',       x=-600,      y=-800,     size=40,shape=1,icon="round"},
    -- {name='round_n',       x=-800,      y=-800,     size=40,shape=1,icon="round"},
    -- {name='round_h',       x=-1000,     y=-800,     size=40,shape=1,icon="round"},
    -- {name='round_l',       x=-1200,     y=-800,     size=40,shape=1,icon="round"},

    -- {name='big_n',         x=-400,      y=-400,     size=40,shape=1,icon="big"},
    -- {name='big_h',         x=-600,      y=-400,     size=40,shape=1,icon="big"},

    -- {name='master_n',      x=0,         y=-1000,    size=40,shape=1,icon="master"},
    -- {name='master_h',      x=0,         y=-1200,    size=40,shape=3,icon="master"},
    -- {name='master_m',      x=100,       y=-1550,    size=40,shape=2,icon="master"},
    -- {name='master_final',  x=-100,      y=-1550,    size=40,shape=2,icon="master"},
    -- {name='master_ph',     x=-170,      y=-1450,    size=40,shape=2,icon="master"},
    -- {name='master_g',      x=0,         y=-1600,    size=40,shape=3,icon="master"},
    -- {name='master_ex',     x=170,       y=-1450,    size=40,shape=2,icon="master_ex"},

    -- {name='strategy_e',     x=-150,     y=-1020,    size=40,shape=3,icon="master"},
    -- {name='strategy_h',     x=-150,     y=-1150,    size=35,shape=3,icon="master"},
    -- {name='strategy_u',     x=-150,     y=-1280,    size=30,shape=2,icon="master"},
    -- {name='strategy_e_plus',x=-300,     y=-1120,    size=40,shape=3,icon="master"},
    -- {name='strategy_h_plus',x=-300,     y=-1250,    size=35,shape=3,icon="master"},
    -- {name='strategy_u_plus',x=-300,     y=-1380,    size=30,shape=2,icon="master"},

    -- {name='blind_e',       x=150,       y=-700,     size=40,shape=1,icon="hidden"},
    -- {name='blind_n',       x=150,       y=-800,     size=40,shape=1,icon="hidden"},
    -- {name='blind_h',       x=150,       y=-900,     size=35,shape=1,icon="hidden"},
    -- {name='blind_l',       x=150,       y=-1000,    size=35,shape=3,icon="hidden2"},
    -- {name='blind_u',       x=150,       y=-1100,    size=30,shape=3,icon="hidden2"},
    -- {name='blind_wtf',     x=150,       y=-1200,    size=25,shape=2,icon="hidden2"},
    -- {name='master_instinct',x=285,      y=-835,     size=40,shape=3,icon="hidden"},

    -- {name='classic_e',     x=-200,      y=-850,     size=40,shape=1,icon="classic"},
    -- {name='classic_h',     x=-300,      y=-950,     size=40,shape=3,icon="classic"},
    -- {name='classic_l',     x=-400,      y=-1050,    size=35,shape=3,icon="classic"},
    -- {name='classic_u',     x=-500,      y=-1150,    size=30,shape=2,icon="classic"},

    -- {name='survivor_e',    x=450,       y=-600,     size=40,shape=1,icon="survivor"},
    -- {name='survivor_n',    x=650,       y=-600,     size=40,shape=1,icon="survivor"},
    -- {name='survivor_h',    x=850,       y=-600,     size=40,shape=1,icon="survivor"},
    -- {name='survivor_l',    x=1050,      y=-600,     size=40,shape=3,icon="survivor"},
    -- {name='survivor_u',    x=1250,      y=-600,     size=40,shape=2,icon="survivor"},

    -- {name='attacker_h',    x=450,       y=-800,     size=40,shape=1,icon="attack"},
    -- {name='attacker_u',    x=450,       y=-1000,    size=40,shape=1,icon="attack"},

    -- {name='defender_n',    x=650,       y=-800,     size=40,shape=1,icon="defend"},
    -- {name='defender_l',    x=650,       y=-1000,    size=40,shape=1,icon="defend"},

    -- {name='dig_h',         x=850,       y=-800,     size=40,shape=1,icon="dig"},
    -- {name='dig_u',         x=850,       y=-1000,    size=40,shape=1,icon="dig"},

    -- {name='c4wtrain_n',    x=700,       y=-450,     size=40,shape=1,icon="pc"},
    -- {name='c4wtrain_l',    x=900,       y=-450,     size=40,shape=1,icon="pc"},

    -- {name='pctrain_n',     x=700,       y=-300,     size=40,shape=1,icon="pc"},
    -- {name='pctrain_l',     x=900,       y=-300,     size=40,shape=1,icon="pc"},

    -- {name='pc_n',          x=800,       y=-140,     size=40,shape=1,icon="pc"},
    -- {name='pc_h',          x=950,       y=-140,     size=40,shape=3,icon="pc"},
    -- {name='pc_l',          x=1100,      y=-140,     size=40,shape=3,icon="pc"},
    -- {name='pc_inf',        x=1100,      y=-280,     size=40,shape=2,icon="pc"},

    -- {name='sprintEff',     x=360,       y=-150,     size=40,shape=1,icon="sprint2"},

    -- {name='tech_n',        x=400,       y=20,       size=40,shape=1,icon="tech"},
    -- {name='tech_n_plus',   x=200,       y=-10,      size=40,shape=3,icon="tech"},
    -- {name='tech_h',        x=400,       y=170,      size=40,shape=1,icon="tech"},
    -- {name='tech_h_plus',   x=200,       y=140,      size=35,shape=3,icon="tech"},
    -- {name='tech_l',        x=400,       y=320,      size=40,shape=1,icon="tech"},
    -- {name='tech_l_plus',   x=200,       y=290,      size=35,shape=3,icon="tech"},

    -- {name='tech_finesse',  x=800,       y=20,       size=40,shape=1,icon="tech"},
    -- {name='tech_finesse_f',x=1000,      y=20,       size=40,shape=1,icon="tech"},

    -- {name='tsd_e',         x=720,       y=170,      size=40,shape=1,icon="tsd"},
    -- {name='tsd_h',         x=960,       y=170,      size=40,shape=1,icon="tsd"},
    -- {name='tsd_u',         x=1200,      y=170,      size=40,shape=1,icon="tsd"},

    -- {name='backfire_n',    x=650,       y=320,      size=40,shape=1,icon="backfire"},
    -- {name='backfire_h',    x=850,       y=320,      size=40,shape=1,icon="backfire"},
    -- {name='backfire_l',    x=1050,      y=320,      size=40,shape=3,icon="backfire"},

    -- {name='zen',           x=-1000,     y=-600,     size=40,shape=1,icon="zen"},
    -- {name='ultra',         x=-1200,     y=-600,     size=40,shape=1,icon="ultra"},
    -- {name='infinite',      x=-1200,     y=-400,     size=40,shape=1,icon='infinite'},
    -- {name='infinite_dig',  x=-1000,     y=-400,     size=40,shape=1,icon="dig"},
    -- {name='marathon_inf',  x=-800,      y=-400,     size=40,shape=1,icon="marathon"}
}
