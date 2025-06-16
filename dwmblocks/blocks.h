//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

	{"", "~/.config/scripts/statusbar/sb-volume",		1,		10},

	{"", "~/.config/scripts/statusbar/pacupdates",	1,		10},

	{"", "~/.config/scripts/statusbar/sb-internet",	1,		10},

};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
