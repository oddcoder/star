#include <stdio.h>
#include "star.h"
void show_help(void)
{
	char help[HELP_MAX+1];
	FILE *helpf;
	helpf = fopen("help.doc","r");
	if(!helpf){
		puts("Can't open help.doc");
		return;
	}
	int len= (int)(fread(help,sizeof(char),HELP_MAX,helpf)/sizeof(char));
	help[len]='\0';
	printf("%s",help);
	fclose(helpf);
}
