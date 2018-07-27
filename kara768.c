#include"simd_poly.h"


void grade_school_mul_half(
    uint32_t        *res1,  /* out - a * b in Z[x], must be length 2N */
    uint32_t const  *a,     /*  in - polynomial */
    uint32_t const  *b,     /*  in - polynomial */
    uint32_t const   N)     /*  in - number of coefficients in a and b */
{
    uint32_t i;
    uint32_t j;

    for(j=0; j<N; j++)
    {
        res1[j] = a[0]*b[j];
    }
    for(i=1; i<N; i++)
    {
        for(j=0; i+j<N; j++)
        {
            res1[i+j] += a[i]*b[j];
        }
    }
    //res1[N] = 0;

    return;
}



uint32_t up(uint32_t x){
	uint32_t ans=1,i;
	for(i=1;i<=30;i++){
		if((1<<i) > x)
			return 1<<i;
	}
}

void karatsuba(
    uint32_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint32_t        *t, /*  in - n coefficients of scratch space */
    uint32_t const  *a, /*  in - polynomial */
    uint32_t const  *b, /*  in - polynomial */
    uint32_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 256)
    {
        grade_school_mul_optim(r, a, b, n);
        return;
    }
    uint32_t i;
    uint32_t s = n/2;
    uint32_t const *a1 = a+s;
    uint32_t const *b1 = b+s;
    uint32_t *t1 = t+s;
    uint32_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
    for(i=0; i<s; i++)
    {
        r[i] = a[i]-a1[i];
        r1[i] = b1[i]-b[i];
    }
    karatsuba(t, r2, r, r1, s);
    karatsuba(r2, r, a1, b1, s);
    for(i=0; i<s; i++)
    {
        r1[i] = r2[i] + t[i];
        r2[i] += r3[i] + t1[i];
    }
    karatsuba(t, r, a, b, s);
    for(i=0; i<s; i++)
    {
        r[i] = t[i];
        r1[i] += t[i] + t1[i];
        r2[i] += t1[i];
    }
    return;
}

void karatsuba_half(
    uint32_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint32_t        *t, /*  in - n coefficients of scratch space */
    uint32_t const  *a, /*  in - polynomial */
    uint32_t const  *b, /*  in - polynomial */
    uint32_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 256)
    {
        grade_school_mul_half_optim(r, a, b, n);
        return;
    }
    uint32_t i;
    uint32_t s = n/2;
    uint32_t const *a1 = a+s;
    uint32_t const *b1 = b+s;
    uint32_t *t1 = t+s;
    uint32_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;

    
    karatsuba_half(t, r2, a, b1, s);
    

    karatsuba_half(r1, r, a1, b, s);

    for(i=0; i<s; i++)
    {
        r1[i] += t[i];
    }
    karatsuba(t, r2, a, b, s);
    
    
    
    for(i=0; i<s; i++)
    {
        r[i] = t[i];
        r1[i] +=  t1[i];
    }
    
    return;
}

void karatsuba_768(
    uint32_t        *r, 
    uint32_t        *t, 
    uint32_t const  *a, 
    uint32_t const  *b, 
    uint32_t const   n) 

{
	const uint32_t m=256;
	uint32_t i;
	uint32_t* r0=r;
	uint32_t* r1=r+m;
	uint32_t* r2=r+m*2;
	uint32_t* r3=r+m*3;
	
	uint32_t const * a0=a;
	uint32_t const * a1=a+m;
	uint32_t const * a2=a+m*2;
	
	uint32_t const * b0=b;
	uint32_t const * b1=b+m;
	uint32_t const * b2=b+m*2;
	
	uint32_t* t0=t;
	uint32_t* t1=t+m;
	uint32_t* t2=t+m*2;
	uint32_t* t3=t+m*3;
	uint32_t* t4=t+m*4;
	uint32_t* t5=t+m*5;
	uint32_t* t6=t+m*6;
	
	karatsuba_half(t0,r3,a2,b0,m);
	karatsuba_half(r2,r3,a0,b2,m);
	//grade_school_mul_half_optim(t0,a2,b0,m);
	//grade_school_mul_half_optim(r2,a0,b2,m);
	for(i=0;i<m;i++){
		r2[i]+=t[i];
	}
	
	
    for(i=0; i<m; i++)
    {
        r0[i] = a0[i]+a1[i];
        r1[i] = b0[i]+b1[i];
    }
    karatsuba(t4, r3,r0, r1, m);
    //grade_school_mul_optim(t4, r0, r1, m);
	
	karatsuba(t0,r3,a1,b1,m);
	//grade_school_mul_optim(t0,a1,b1,m);
	for(i=0;i<m;i++){
		r2[i]+=t0[i];
		t4[i]-=t0[i];
		t5[i]-=t1[i];
	}
	karatsuba(t0,r3,a0,b0,m);
	//grade_school_mul_optim(t0,a0,b0,m);
	
	for(i=0;i<m;i++){
		r0[i]=t0[i];
		r1[i]=t1[i];
		
		t4[i]-=t0[i];
		t5[i]-=t1[i];
	}
	for(i=0;i<m;i++){
		r1[i]+=t4[i];
		r2[i]+=t5[i];
	}
}

int h(uint32_t *r){
	int ans=0,i;
	for(i=0;i<768;i++)
		ans=ans*233+r[i];
	return ans;
}

#define TEST(multiply) \
	puts(#multiply);\
	st=clock();\
	multiply(r,t,a,b,n); \
	printf("%.8f\n",(clock()-st)/CLOCKS_PER_SEC);\
	printf("hash=%d\n",h(r));

int a[111111];
int b[111111];
int c[111111];
int r[111111];
int t[111111];
int main(){
	int n=768;
	for(uint32_t i=0;i<n;i++){
		a[i]=rand()%100;
		b[i]=rand()%100;
	}
	double st;	
	
	
	TEST(karatsuba_768);
	TEST(karatsuba_old);
	TEST(karatsuba_old_optim);
	TEST(karatsuba_old_optim2);
	
	puts("grade_school_mul");
	st=clock();
	grade_school_mul(r,a,b,n); 
	printf("%.8f\n",(clock()-st)/CLOCKS_PER_SEC);
	printf("hash=%d\n",h(r));
	
	puts("grade_school_mul_optim");
	st=clock();
	grade_school_mul_optim(r,a,b,n); 
	printf("%.8f\n",(clock()-st)/CLOCKS_PER_SEC);
	printf("hash=%d\n",h(r));
	

	return 0;
}
