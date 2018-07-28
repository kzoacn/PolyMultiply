#include"simd_poly.h"


void _mm256i_karatsuba_768(
    uint64_t        *r, 
    uint64_t        *t, 
    uint64_t const  *a, 
    uint64_t const  *b, 
    uint64_t const   n) 

{
	const uint64_t m=256;
	uint64_t i;
	uint64_t* r0=r;
	uint64_t* r1=r+m;
	uint64_t* r2=r+m*2;
	uint64_t* r3=r+m*3;
	
	uint64_t const * a0=a;
	uint64_t const * a1=a+m;
	uint64_t const * a2=a+m*2;
	
	uint64_t const * b0=b;
	uint64_t const * b1=b+m;
	uint64_t const * b2=b+m*2;
	
	uint64_t* t0=t;
	uint64_t* t1=t+m;
	uint64_t* t2=t+m*2;
	uint64_t* t3=t+m*3;
	uint64_t* t4=t+m*4;
	uint64_t* t5=t+m*5;
	uint64_t* t6=t+m*6;
	
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

