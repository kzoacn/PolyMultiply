#include <stdio.h>
#include <time.h>
#include "param.h"
#include "ntt.h"


uint64_t a[11111];
uint64_t b[11111];




int main(){
	int i;
	a[0]=1;
	a[1]=1;
	b[0]=1;
	b[1]=1;
	
	double st=clock();
	
	ntt_1024_1536(a);
	ntt_1024_1536(b);
	
	for(int i=0;i<1536;i++){
		a[i]=(long long)a[i]*b[i]%Q;
	}
	intt_1536_1536_inv(a);
	
	printf("%.8f\n",(clock()-st)/CLOCKS_PER_SEC);
	for(i=0;i<10;i++)
		printf("%d%c",(int)a[i]%Q," \n"[i+1==10]);
	return 0;
}
