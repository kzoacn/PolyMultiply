#include<stdio.h>

int main(){
	int n=64,i,j,k;

	puts("uint64_t ai;");
	puts("uint64_t const* b0;");
	puts("uint64_t const* b1;");
	puts("uint64_t const* b2;");
	puts("uint64_t const* b3;");
	puts("uint64_t* r0;");
	puts("uint64_t* r1;");
	puts("uint64_t* r2;");
	puts("uint64_t* r3;");
	puts("uint16_t i;");
	printf("memset(r,0,%d*sizeof(uint64_t));\n",n*2);
	
	printf("for(i=0;i<%d;i++){",n);
		printf("ai=a[i];\n");
		printf("b0=b;");
		printf("b1=b+1;");
		printf("b2=b+2;");
		printf("b3=b+3;\n");

		printf("r0=r+i;");
		printf("r1=r+i+1;");
		printf("r2=r+i+2;");
		printf("r3=r+i+3;\n");
		for(j=0;j<n;j+=4){
			for(k=0;k<4;k++){
				printf("*r%d+=ai*(*b%d);\n",k,k);
			}
			for(k=0;k<4;k++){
				printf("r%d+=4;",k);
			}
			for(k=0;k<4;k++){
				printf("b%d+=4;",k);
			}
			puts("");
		}
	puts("}");
}
