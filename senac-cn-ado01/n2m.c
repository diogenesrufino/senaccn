#include "lib.h"

int main(int argc, char **argv) {
    
char number[N]; 	
int num, from_base, to_base;
	
	
scanf("%s%d%d", number,&from_base,&to_base);
	
num = to10(number, from_base);    	
NtoM(num, to_base);
printf("%d", num);
return 0;
}