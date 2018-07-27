#include <bits/stdc++.h>
using i64 = long long;
using u32 = unsigned;
using u64 = unsigned long long;
using f80 = long double;

template <u32 mod, u32 G>
class UnsafeMod {
   private:
    static const int WORD_BITS = 8 * sizeof(u32);
    static constexpr u32 mulInv(u32 n, int e = 6, u32 x = 1) {
        return e == 0 ? x : mulInv(n, e - 1, x * (2 - x * n));
    }
   public:
    static constexpr u32 inv = mulInv(mod);
    static constexpr u32 r2 = -u64(mod) % mod;
    static constexpr int level = __builtin_ctzll(mod - 1);
    static_assert(inv * mod == 1, "invalid 1/M modulo 2^@.");
    UnsafeMod() {}
    UnsafeMod(u32 n) : x(init(n)){};
    static inline u32 modulus() { return mod; }
    static inline u32 init(u32 w) { return reduce(u64(w) * r2); }
    static inline u32 reduce(const u64 w) {
        return u32(w >> WORD_BITS) + mod -
               u32((u64(u32(w) * inv) * mod) >> WORD_BITS);
    }
    static inline UnsafeMod omega() {
        return UnsafeMod(G).pow((mod - 1) >> level);
    }
    inline UnsafeMod &operator+=(const UnsafeMod &rhs) {
        x += rhs.x;
        return *this;
    }
    inline UnsafeMod &operator-=(const UnsafeMod &rhs) {
        x += 3 * mod - rhs.x;
        return *this;
    }
    inline UnsafeMod &operator*=(const UnsafeMod &rhs) {
        x = reduce(u64(x) * rhs.x);
        return *this;
    }
    inline UnsafeMod operator+(const UnsafeMod &rhs) const {
        return UnsafeMod(*this) += rhs;
    }
    inline UnsafeMod operator-(const UnsafeMod &rhs) const {
        return UnsafeMod(*this) -= rhs;
    }
    inline UnsafeMod operator*(const UnsafeMod &rhs) const {
        return UnsafeMod(*this) *= rhs;
    }
    inline u32 get() const { return reduce(x) % mod; }
    inline void set(u32 n) { x = n; }
    inline UnsafeMod pow(u32 e) const {
        UnsafeMod ret = UnsafeMod(1);
        for (UnsafeMod base = *this; e; e >>= 1, base *= base)
            if (e & 1) ret *= base;
        return ret;
    }
    inline UnsafeMod inverse() const { return pow(mod - 2); }
    u32 x;
};
const int MAXN = 3 * 1e6;
using Int = UnsafeMod<104857601, 3>;
Int f[MAXN], g[MAXN];
inline void transform(Int *f, int n, const Int *roots, const Int *iroots) {
    const int logn = __builtin_ctz(n), nh = n >> 1, lv = Int::level;
    const Int one = Int(1), imag = roots[lv - 2];
    Int dw[lv - 1];
    dw[0] = roots[lv - 3];
    for (int i = 1; i < lv - 2; i++)
        dw[i] = dw[i - 1] * iroots[lv - 1 - i] * roots[lv - 3 - i];
    dw[lv - 2] = dw[lv - 3] * iroots[1];
    if (logn & 1) {
        for (int i = 0; i < nh; i++) {
            Int a = f[i], b = f[i + nh];
            f[i] = a + b;
            f[i + nh] = a - b;
        }
    }
    for (int e = logn & ~1; e >= 2; e -= 2) {
        const int m = 1 << e, m4 = m >> 2;
        Int w2 = one;
        for (int i = 0; i < n; i += m) {
            const Int w1 = w2 * w2, w3 = w1 * w2;
            for (int j = i; j < i + m4; ++j) {
                Int a0 = f[j + m4 * 0] * one, a1 = f[j + m4 * 1] * w2;
                Int a2 = f[j + m4 * 2] * w1, a3 = f[j + m4 * 3] * w3;
                Int t02p = a0 + a2, t13p = a1 + a3;
                Int t02m = a0 - a2, t13m = (a1 - a3) * imag;
                f[j + m4 * 0] = t02p + t13p;
                f[j + m4 * 1] = t02p - t13p;
                f[j + m4 * 2] = t02m + t13m;
                f[j + m4 * 3] = t02m - t13m;
            }
            w2 *= dw[__builtin_ctz(~(i >> e))];
        }
    }
}
inline void itransform(Int *f, int n, const Int *roots, const Int *iroots) {
    const int logn = __builtin_ctz(n), nh = n >> 1, lv = Int::level;
    const Int one = Int(1), imag = iroots[lv - 2];
    Int dw[lv - 1];
    dw[0] = iroots[lv - 3];
    for (int i = 1; i < lv - 2; i++)
        dw[i] = dw[i - 1] * roots[lv - 1 - i] * iroots[lv - 3 - i];
    dw[lv - 2] = dw[lv - 3] * roots[1];
    for (int e = 2; e <= logn; e += 2) {
        const int m = 1 << e, m4 = m >> 2;
        Int w2 = one;
        for (int i = 0; i < n; i += m) {
            const Int w1 = w2 * w2, w3 = w1 * w2;
            for (int j = i; j < i + m4; ++j) {
                Int a0 = f[j + m4 * 0], a1 = f[j + m4 * 1];
                Int a2 = f[j + m4 * 2], a3 = f[j + m4 * 3];
                Int t01p = a0 + a1, t23p = a2 + a3;
                Int t01m = a0 - a1, t23m = (a2 - a3) * imag;
                f[j + m4 * 0] = (t01p + t23p) * one;
                f[j + m4 * 2] = (t01p - t23p) * w1;
                f[j + m4 * 1] = (t01m + t23m) * w2;
                f[j + m4 * 3] = (t01m - t23m) * w3;
            }
            w2 *= dw[__builtin_ctz(~(i >> e))];
        }
    }
    if (logn & 1) {
        for (int i = 0; i < nh; i++) {
            Int a = f[i], b = f[i + nh];
            f[i] = a + b;
            f[i + nh] = a - b;
        }
    }
}
inline void convolve(Int *f, int s1, Int *g, int s2, bool cyclic = false) {
    const int s = cyclic ? std::max(s1, s2) : s1 + s2 - 1;
    const int size = 1 << (31 - __builtin_clz(2 * s - 1));
    assert(size <= (i64(1) << Int::level));
    Int roots[Int::level], iroots[Int::level];
    roots[0] = Int::omega();
    for (int i = 1; i < Int::level; i++) roots[i] = roots[i - 1] * roots[i - 1];
    iroots[0] = roots[0].inverse();
    for (int i = 1; i < Int::level; i++)
        iroots[i] = iroots[i - 1] * iroots[i - 1];
    std::fill(f + s1, f + size, 0);
    transform(f, size, roots, iroots);
    const Int inv = Int(size).inverse();
    if (f == g && s1 == s2) {
        for (int i = 0; i < size; i++) f[i] *= f[i] * inv;
    } else {
        std::fill(g + s2, g + size, 0);
        transform(g, size, roots, iroots);
        for (int i = 0; i < size; i++) f[i] *= g[i] * inv;
    }
    itransform(f, size, roots, iroots);
}
int main() {
	double st=clock();
    int n=512+256;
    for(int i=0;i<n;i++){
    	f[i]=rand()%10;
    	g[i]=rand()%10;
    }
    convolve(f, n , g, n );
    printf("%.8f\n",(clock()-st)/CLOCKS_PER_SEC);
    return 0;
}
