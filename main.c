#include <stdio.h>
#include "star.h"
int main(int argc, char**argv)
{
	switch(argc){
	case 1:
		show_help();
		break;
	case 2:
		untar(argv[1]);
		break;
	default:
		tar(argc-1,&argv[1]);
	}
	argv++;
	return 0;
}
