#include "simd_poly.h"

void
__mm256i_karatsuba_gs(
    uint64_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint64_t        *t, /*  in - n coefficients of scratch space */
    uint64_t const  *a, /*  in - polynomial */
    uint64_t const  *b, /*  in - polynomial */
    uint64_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 32)
    {
        __m256i_grade_school_mul_32(r, t,a, b, n);
        return;
    }
    uint64_t i;
    uint64_t s = n/2;
    uint64_t const *a1 = a+s;
    uint64_t const *b1 = b+s;
    uint64_t *t1 = t+s;
    uint64_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
    for(i=0; i<s; i++)
    {
        r[i] = a[i]-a1[i];
        r1[i] = b1[i]-b[i];
    }
    karatsuba_old(t, r2, r, r1, s);
    karatsuba_old(r2, r, a1, b1, s);
    for(i=0; i<s; i++)
    {
        r1[i] = r2[i] + t[i];
        r2[i] += r3[i] + t1[i];
    }
    karatsuba_old(t, r, a, b, s);
    for(i=0; i<s; i++)
    {
        r[i] = t[i];
        r1[i] += t[i] + t1[i];
        r2[i] += t1[i];
    }
    return;
}


void
__mm256i_karatsuba_SB(
    uint64_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint64_t        *t, /*  in - n coefficients of scratch space */
    uint64_t const  *a, /*  in - polynomial */
    uint64_t const  *b, /*  in - polynomial */
    uint64_t const   n) /*  in - number of coefficients in a and b */
{
    if (n < 384)
    {
        grade_school_mul(r, a, b, n);
        return;
    }
    if (n > 768)
    {
        printf("degree %d exceeds the maximum (384) allowed\n", n);
        return;
    }
    uint64_t i;
    uint64_t s = 384;
    uint64_t const *a1 = a+s;
    uint64_t const *b1 = b+s;
    uint64_t *t1 = t+s;
    uint64_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;

    __m256i m[6];
    for (i=0; i<s; i+=16) {
      m[0] = _mm256_loadu_si256((__m256i *)(a+i));
      m[1] = _mm256_loadu_si256((__m256i *)(a1+i));
      m[2] = _mm256_loadu_si256((__m256i *)(b1+i));
      m[3] = _mm256_loadu_si256((__m256i *)(b+i));
      m[0] = _mm256_sub_epi16(m[0], m[1]);
      m[1] = _mm256_sub_epi16(m[2], m[3]);
      _mm256_storeu_si256((__m256i *)(r+i), m[0]);
      _mm256_storeu_si256((__m256i *)(r1+i), m[1]);
    }

    grade_school_mul(t, r, r1, s);
    grade_school_mul(r2, a1, b1, s);

    for (i=0; i<s; i+=16) {
      m[0] = _mm256_loadu_si256((__m256i *)(r2+i));
      m[1] = _mm256_loadu_si256((__m256i *)(t+i));
      m[2] = _mm256_loadu_si256((__m256i *)(r3+i));
      m[3] = _mm256_loadu_si256((__m256i *)(t1+i));
      m[1] = _mm256_add_epi16(m[1], m[0]);
      m[2] = _mm256_add_epi16(m[2], m[0]);
      m[2] = _mm256_add_epi16(m[2], m[3]);
      _mm256_storeu_si256((__m256i *)(r1+i), m[1]);
      _mm256_storeu_si256((__m256i *)(r2+i), m[2]);
    }

    grade_school_mul(t, a, b, s);

    for (i=0; i<s; i++) {
      r[i] = t[i];
    }
    for (i=0; i<s; i+=16) {
      m[0] = _mm256_loadu_si256((__m256i *)(r1+i));
      m[1] = _mm256_loadu_si256((__m256i *)(t+i));
      m[2] = _mm256_loadu_si256((__m256i *)(t1+i));
      m[3] = _mm256_loadu_si256((__m256i *)(r2+i));
      m[0] = _mm256_add_epi16(m[0], m[1]);
      m[0] = _mm256_add_epi16(m[0], m[2]);
      m[3] = _mm256_add_epi16(m[3], m[2]);
      _mm256_storeu_si256((__m256i *)(r1+i), m[0]);
      _mm256_storeu_si256((__m256i *)(r2+i), m[3]);
    }

    return;
}
void
__mm256i_karatsuba__mm256_toom4(
    uint64_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint64_t        *t, /*  in - n coefficients of scratch space */
    uint64_t const  *a, /*  in - polynomial */
    uint64_t const  *b, /*  in - polynomial */
    uint64_t const   n) /*  in - number of coefficients in a and b */
{
    if (n < 384)
    {
        __mm256i_toom4__mm256i_toom3(r, t, a, b, n);
        return;
    }
    if (n > 768)
    {
        printf("degree %d exceeds the maximum (384) allowed\n", n);
        return;
    }
    uint64_t i;
    uint64_t s = 384;
    uint64_t const *a1 = a+s;
    uint64_t const *b1 = b+s;
    uint64_t *t1 = t+s;
    uint64_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
    uint64_t *buf = t+s*2;


    __m256i m[6];
    for (i=0; i<s; i+=16) {
      m[0] = _mm256_loadu_si256((__m256i *)(a+i));
      m[1] = _mm256_loadu_si256((__m256i *)(a1+i));
      m[2] = _mm256_loadu_si256((__m256i *)(b1+i));
      m[3] = _mm256_loadu_si256((__m256i *)(b+i));
      m[0] = _mm256_sub_epi16(m[0], m[1]);
      m[1] = _mm256_sub_epi16(m[2], m[3]);
      _mm256_storeu_si256((__m256i *)(r+i), m[0]);
      _mm256_storeu_si256((__m256i *)(r1+i), m[1]);
    }

    __mm256i_toom4__mm256i_toom3(t,  buf, r, r1, s);
    __mm256i_toom4__mm256i_toom3(r2,  buf, a1, b1, s);

    for (i=0; i<s; i+=16) {
      m[0] = _mm256_loadu_si256((__m256i *)(r2+i));
      m[1] = _mm256_loadu_si256((__m256i *)(t+i));
      m[2] = _mm256_loadu_si256((__m256i *)(r3+i));
      m[3] = _mm256_loadu_si256((__m256i *)(t1+i));
      m[1] = _mm256_add_epi16(m[1], m[0]);
      m[2] = _mm256_add_epi16(m[2], m[0]);
      m[2] = _mm256_add_epi16(m[2], m[3]);
      _mm256_storeu_si256((__m256i *)(r1+i), m[1]);
      _mm256_storeu_si256((__m256i *)(r2+i), m[2]);
    }

    __mm256i_toom4__mm256i_toom3(t,  buf, a, b, s);

    for (i=0; i<s; i++) {
      r[i] = t[i];
    }
    for (i=0; i<s; i+=16) {
      m[0] = _mm256_loadu_si256((__m256i *)(r1+i));
      m[1] = _mm256_loadu_si256((__m256i *)(t+i));
      m[2] = _mm256_loadu_si256((__m256i *)(t1+i));
      m[3] = _mm256_loadu_si256((__m256i *)(r2+i));
      m[0] = _mm256_add_epi16(m[0], m[1]);
      m[0] = _mm256_add_epi16(m[0], m[2]);
      m[3] = _mm256_add_epi16(m[3], m[2]);
      _mm256_storeu_si256((__m256i *)(r1+i), m[0]);
      _mm256_storeu_si256((__m256i *)(r2+i), m[3]);
    }
    return;
}



int test_karatsuba()
{
   /* uint64_t N;     // dimension
    uint64_t *a;    // first polynomial
    uint64_t *b;    // second polynomial
    uint64_t *buf;    // buffer
    uint64_t *r;    // result
    uint64_t *r2;    // result
    uint64_t *r3;    // result
    uint64_t i,j;
    uint64_t test_dim;
    float ss1,ss2, ss3;
    clock_t start, end;

    N = 768;
    a = (uint64_t*) malloc (2*N*sizeof(uint64_t));
    b = (uint64_t*) malloc (2*N*sizeof(uint64_t));
    buf = (uint64_t*) malloc (4*N*sizeof(uint64_t));
    r = (uint64_t*) malloc (4*N*sizeof(uint64_t));
    r2 = (uint64_t*) malloc (4*N*sizeof(uint64_t));
    r3 = (uint64_t*) malloc (4*N*sizeof(uint64_t));
    cout<<"testing karatsuba 3"<<endl;
    for (test_dim=384;test_dim<768;test_dim++)
    {
        ss1 = 0;
        ss2 = 0;
        ss3 = 0;
        cout<<"dimension: "<<test_dim<<" ";
        for (j=0;j<100;j++)
        {
            memset(a+test_dim, 0, 2*N*sizeof(uint64_t));
            memset(b+test_dim, 0, 2*N*sizeof(uint64_t));
            for(i=0; i< test_dim;i++)
            {
                a[i] = rand()&0x07FF;
                b[i] = rand()&0x07FF;
            }



            start = clock();
            grade_school_mul(r, a, b, test_dim);
            end = clock();
            ss1 += (float)(end-start);


            start = clock();
//            __mm256i_karatsuba_SB(r2, buf, a, b, test_dim);
            end = clock();
            ss2 += (float)(end-start);


            start = clock();
            __mm256i_karatsuba__mm256_toom4(r3, buf, a, b, test_dim);
            end = clock();
            ss3 += (float)(end-start);

            for (i=0;i<test_dim*2-1;i++)
            {
                if ((r[i]%2048)!=(r3[i]%2048))
                {
                    printf("error\n");
                    for (j=0;j<test_dim*2-1;j++)
                    {
                        printf("%d %d %d %d\n", j, r[j],r3[j], (r[j]-r3[j])%2048);

                    }
                    return 1;
                }
            }
        }
        cout<<ss1<<" "<<ss2<<" "<<ss3<<endl;
    }*/
    return 0;
}

void
karatsuba_toom4(
    uint64_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint64_t        *t, /*  in - n coefficients of scratch space */
    uint64_t const  *a, /*  in - polynomial */
    uint64_t const  *b, /*  in - polynomial */
    uint64_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 32)
    {
        grade_school_mul(r, a, b, n);
        return;
    }
    uint64_t i;
    uint64_t s = n/2;
    uint64_t const *a1 = a+s;
    uint64_t const *b1 = b+s;
    uint64_t *t1 = t+s;
    uint64_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
    for(i=0; i<s; i++)
    {
        r[i] = a[i]-a1[i];
        r1[i] = b1[i]-b[i];
    }
    toom4_toom3(t, r2, r, r1, s);
    toom4_toom3(r2, r, a1, b1, s);
    for(i=0; i<s; i++)
    {
        r1[i] = r2[i] + t[i];
        r2[i] += r3[i] + t1[i];
    }
    toom4_toom3(t, r, a, b, s);
    for(i=0; i<s; i++)
    {
        r[i] = t[i];
        r1[i] += t[i] + t1[i];
        r2[i] += t1[i];
    }
    return;
}

void
karatsuba_old_optim(
    uint64_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint64_t        *t, /*  in - n coefficients of scratch space */
    uint64_t const  *a, /*  in - polynomial */
    uint64_t const  *b, /*  in - polynomial */
    uint64_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 32)
    {
        grade_school_mul_optim(r, a, b, n);
        return;
    }
    uint64_t i;
    uint64_t s = n/2;
    uint64_t const *a1 = a+s;
    uint64_t const *b1 = b+s;
    uint64_t *t1 = t+s;
    uint64_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
    for(i=0; i<s; i++)
    {
        r[i] = a[i]-a1[i];
        r1[i] = b1[i]-b[i];
    }
    karatsuba_old(t, r2, r, r1, s);
    karatsuba_old(r2, r, a1, b1, s);
    for(i=0; i<s; i++)
    {
        r1[i] = r2[i] + t[i];
        r2[i] += r3[i] + t1[i];
    }
    karatsuba_old(t, r, a, b, s);
    for(i=0; i<s; i++)
    {
        r[i] = t[i];
        r1[i] += t[i] + t1[i];
        r2[i] += t1[i];
    }
    return;
}

void
karatsuba_old_optim2(
    uint64_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint64_t        *t, /*  in - n coefficients of scratch space */
    uint64_t const  *a, /*  in - polynomial */
    uint64_t const  *b, /*  in - polynomial */
    uint64_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 256)
    {
        grade_school_mul_optim(r, a, b, n);
        return;
    }
    uint64_t i;
    uint64_t s = n/2;
    uint64_t const *a1 = a+s;
    uint64_t const *b1 = b+s;
    uint64_t *t1 = t+s;
    uint64_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
    
    uint64_t *cr0,*cr1;
    uint64_t const *ca0,*ca1,*cb0,*cb1;
    
    cr0=r;ca0=a;ca1=a1;
    cr1=r1;cb0=b;cb1=b1;
    
    for(i=0; i<s; i++)
    {
    	*cr0 = *ca0 - *ca1;
    	*cr1 = *cb1 - *cb0;
    	
    	cr0++;cr1++;
    	ca0++;ca1++;
    	cb0++;cb1++;
    	
    }
    karatsuba_old(t, r2, r, r1, s);
    karatsuba_old(r2, r, a1, b1, s);
    for(i=0; i<s; i++)
    {
        r1[i] = r2[i] + t[i];
        r2[i] += r3[i] + t1[i];
    }
    karatsuba_old(t, r, a, b, s);
    for(i=0; i<s; i++)
    {
        r[i] = t[i];
        r1[i] += t[i] + t1[i];
        r2[i] += t1[i];
    }
    return;
}

void
karatsuba_old(
    uint64_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint64_t        *t, /*  in - n coefficients of scratch space */
    uint64_t const  *a, /*  in - polynomial */
    uint64_t const  *b, /*  in - polynomial */
    uint64_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 32)
    {
        grade_school_mul(r, a, b, n);
        return;
    }
    uint64_t i;
    uint64_t s = n/2;
    uint64_t const *a1 = a+s;
    uint64_t const *b1 = b+s;
    uint64_t *t1 = t+s;
    uint64_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
    for(i=0; i<s; i++)
    {
        r[i] = a[i]-a1[i];
        r1[i] = b1[i]-b[i];
    }
    karatsuba_old(t, r2, r, r1, s);
    karatsuba_old(r2, r, a1, b1, s);
    for(i=0; i<s; i++)
    {
        r1[i] = r2[i] + t[i];
        r2[i] += r3[i] + t1[i];
    }
    karatsuba_old(t, r, a, b, s);
    for(i=0; i<s; i++)
    {
        r[i] = t[i];
        r1[i] += t[i] + t1[i];
        r2[i] += t1[i];
    }
    return;
}

void
karatsuba_old16(
    uint64_t        *r, /* out - a * b in Z[x], must be length 2n */
    uint64_t        *t, /*  in - n coefficients of scratch space */
    uint64_t const  *a, /*  in - polynomial */
    uint64_t const  *b, /*  in - polynomial */
    uint64_t const   n) /*  in - number of coefficients in a and b */

{
    if (n < 16)
    {
        grade_school_mul(r, a, b, n);
        return;
    }
    uint64_t i;
    uint64_t s = n/2;
    uint64_t const *a1 = a+s;
    uint64_t const *b1 = b+s;
    uint64_t *t1 = t+s;
    uint64_t *r1 = r+s, *r2 = r+2*s, *r3 = r+3*s;
    for(i=0; i<s; i++)
    {
        r[i] = a[i]-a1[i];
        r1[i] = b1[i]-b[i];
    }
    grade_school_mul(t, r, r1, s);
    grade_school_mul(r2, a1, b1, s);
    for(i=0; i<s; i++)
    {
        r1[i] = r2[i] + t[i];
        r2[i] += r3[i] + t1[i];
    }
    grade_school_mul(t, a, b, s);
    for(i=0; i<s; i++)
    {
        r[i] = t[i];
        r1[i] += t[i] + t1[i];
        r2[i] += t1[i];
    }
    return;
}
