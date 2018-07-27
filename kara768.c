#include"simd_poly.h"



void grade_school_mul_half(
    uint16_t        *res1,  /* out - a * b in Z[x], must be length 2N */
    uint16_t const  *a,     /*  in - polynomial */
    uint16_t const  *b,     /*  in - polynomial */
    uint16_t const   N)     /*  in - number of coefficients in a and b */
{
    uint16_t i;
    uint16_t j;

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

#define maxn 400005
uint16_t r[maxn];
uint16_t t[maxn];
uint16_t a[maxn];
uint16_t b[maxn];
int n;


uint16_t up(uint16_t x){
	uint16_t ans=1,i;
	for(i=1;i<=30;i++){
		if((1<<i) > x)
			return 1<<i;
	}
}

void karatsuba(
    uint16_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint16_t        *t, /*  in - n coefficients of scratch space */
    uint16_t const  *a, /*  in - polynomial */
    uint16_t const  *b, /*  in - polynomial */
    uint16_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 64)
    {
        grade_school_mul(r, a, b, n);
        return;
    }
    uint16_t i;
    uint16_t s = n/2;
    uint16_t const *a1 = a+s;
    uint16_t const *b1 = b+s;
    uint16_t *t1 = t+s;
    uint16_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
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
    uint16_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint16_t        *t, /*  in - n coefficients of scratch space */
    uint16_t const  *a, /*  in - polynomial */
    uint16_t const  *b, /*  in - polynomial */
    uint16_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 64)
    {
        grade_school_mul_half(r, a, b, n);
        return;
    }
    uint16_t i;
    uint16_t s = n/2;
    uint16_t const *a1 = a+s;
    uint16_t const *b1 = b+s;
    uint16_t *t1 = t+s;
    uint16_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;

    
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
    uint16_t        *r, 
    uint16_t        *t, 
    uint16_t const  *a, 
    uint16_t const  *b, 
    uint16_t const   n) 

{
	const uint16_t m=256;
	uint16_t i;
	uint16_t* r0=r;
	uint16_t* r1=r+m;
	uint16_t* r2=r+m*2;
	uint16_t* r3=r+m*3;
	
	uint16_t const * a0=a;
	uint16_t const * a1=a+m;
	uint16_t const * a2=a+m*2;
	
	uint16_t const * b0=b;
	uint16_t const * b1=b+m;
	uint16_t const * b2=b+m*2;
	
	uint16_t* t0=t;
	uint16_t* t1=t+m;
	uint16_t* t2=t+m*2;
	uint16_t* t3=t+m*3;
	uint16_t* t4=t+m*4;
	uint16_t* t5=t+m*4;
	
    for(i=0; i<m; i++)
    {
        r0[i] = a0[i]+a1[i];
        r1[i] = b0[i]+b1[i];
    }
    karatsuba(t4, r3, r0, r1, m);
    
	
	karatsuba(t,r3,a2,b0,m);
	karatsuba(r2,r3,a0,b2,m);
	for(i=0;i<m;i++){
		r2[i]+=t[i];
	}
	
	karatsuba(t0,r3,a1,b1,m);
	for(i=0;i<m;i++){
		r2[i]+=t0[i];
		t4[i]-=t0[i];
		t5[i]-=t1[i];
	}
	karatsuba(t0,r3,a0,b0,m);
	
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

void __m256i_karatsuba_768(
    uint16_t        *r, 
    uint16_t        *t, 
    uint16_t const  *a, 
    uint16_t const  *b, 
    uint16_t const   n) 

{
	const uint16_t s=256;
	uint16_t i;
	uint16_t* r0=r;
	uint16_t* r1=r+s;
	uint16_t* r2=r+s*2;
	uint16_t* r3=r+s*3;
	
	uint16_t const * a0=a;
	uint16_t const * a1=a+s;
	uint16_t const * a2=a+s*2;
	
	uint16_t const * b0=b;
	uint16_t const * b1=b+s;
	uint16_t const * b2=b+s*2;
	
	uint16_t* t0=t;
	uint16_t* t1=t+s;
	uint16_t* t2=t+s*2;
	uint16_t* t3=t+s*3;
	uint16_t* t4=t+s*4;
	uint16_t* t5=t+s*4;
	
    for(i=0; i<s; i++)
    {
        r0[i] = a0[i]+a1[i];
        r1[i] = b0[i]+b1[i];
    }
    __mm256i_karatsuba_SB(t4, r3, r0, r1, s);
    
	
	__mm256i_karatsuba_SB(t,r3,a2,b0,s);
	__mm256i_karatsuba_SB(r2,r3,a0,b2,s);
	for(i=0;i<s;i++){
		r2[i]+=t[i];
	}
	
	__mm256i_karatsuba_SB(t0,r3,a1,b1,s);
	for(i=0;i<s;i++){
		r2[i]+=t0[i];
		t4[i]-=t0[i];
		t5[i]-=t1[i];
	}
	__mm256i_karatsuba_SB(t0,r3,a0,b0,s);
	
	for(i=0;i<s;i++){
		r0[i]=t0[i];
		r1[i]=t1[i];
		
		t4[i]-=t0[i];
		t5[i]-=t1[i];
	}
	for(i=0;i<s;i++){
		r1[i]+=t4[i];
		r2[i]+=t5[i];
	}
}


int main(){
	n=768;
	for(uint16_t i=0;i<n;i++){
		a[i]=rand()%10;
		b[i]=rand()%10;
	}
	
	double st=clock();
	
	karatsuba(r,t,a,b,n);
	
	printf("%.8f\n",(clock()-st)/CLOCKS_PER_SEC);
	//printf("%d\n",(int)r[511]);
	
	
	st=clock();
	
	__m256i_karatsuba_768(r,t,a,b,n);
	
	printf("%.8f\n",(clock()-st)/CLOCKS_PER_SEC);
	//printf("%d\n",(int)r[511]);

	return 0;
}
