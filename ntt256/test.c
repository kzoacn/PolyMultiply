#include <stdio.h>
#include <time.h>
#include "param.h"
#include "ntt.h"


uint32_t a[11111];
uint32_t b[11111];




int main(){
	int i;
	a[0]=1;
	a[1]=1;
	b[0]=1;
	b[1]=1;
	
	double st=clock();
	
	ntt_256_1024(a);
	ntt_256_1024(b);
	
	for(int i=0;i<1280;i++){
		a[i]=(long long)a[i]*b[i]%Q;
	}
	intt_1024_1024_inv(a);
	
	printf("%.8f\n",(clock()-st)/CLOCKS_PER_SEC);
	for(i=0;i<10;i++)
		printf("%d%c",(int)a[i]%Q," \n"[i+1==10]);
	return 0;
}
