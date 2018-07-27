#include"simd_poly.h"


void _mm256i_karatsuba_768(
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
	
	__mm256i_karatsuba_SB(t0,r3,a2,b0,m);
	__mm256i_karatsuba_SB(r2,r3,a0,b2,m);
	for(i=0;i<m;i++){
		r2[i]+=t[i];
	}
	
	
    for(i=0; i<m; i++)
    {
        r0[i] = a0[i]+a1[i];
        r1[i] = b0[i]+b1[i];
    }
    __mm256i_karatsuba_SB(t4,r3, r0, r1, m);
	
	__mm256i_karatsuba_SB(t0,r3,a1,b1,m);
	for(i=0;i<m;i++){
		r2[i]+=t0[i];
		t4[i]-=t0[i];
		t5[i]-=t1[i];
	}
	__mm256i_karatsuba_SB(t0,r3,a0,b0,m);
	
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

