/**   
 *    author:  abhijayrajvansh
 *    created: 07.08.2022 20:21:40
**/
#ifndef ABHIJAY_DEBUG
    #pragma GCC optimize("O3,unroll-loops")
    // #pragma GCC target("avx,avx2,sse4.2,bmi,bmi2,popcnt,lzcnt") // Gives SIGILL on SPOJ
#endif

#include <bits/stdc++.h>
using namespace std;

#define int int64_t // avoiding int32_t overflow

// procrastination is not an option! 
#define tatakae() std::cout << std::fixed << std::setprecision(12); std::cerr << std::fixed << std::setprecision(3); auto start = std::chrono::high_resolution_clock::now(); int tests = 1; if (TT) cin >> tests; for (int i = 1; i <= tests; i++) { if(print_case_no) cout << "Case #" << i << ": "; run_case(i); } if (time_taken) { auto stop = std::chrono::high_resolution_clock::now(); long double duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start).count(); std::cerr << "\nTime taken : " << duration / 1e9 << " seconds" << std::endl; }

constexpr char nl = '\n'; // a slave of one's habits 

//यो न हृष्यति न द्वेष्टि न शोचति न काङ्क्षति। शुभाशुभपरित्यागी भक्तिमान्यः स मे प्रियः॥
template<typename T_container, typename T = typename enable_if<!is_same<T_container, string>::value, typename T_container::value_type>::type> 
istream& operator >> (istream &is, T_container &v) { 
   for(T &x : v) is >> x; return is;
}

template<typename A, typename B> 
ostream& operator<<(ostream &os, const pair<A, B> &p) { 
   return os << '(' << p.first << ", " << p.second << ')'; 
}
 
template<typename T_container, typename T = typename enable_if<!is_same<T_container, string>::value, typename T_container::value_type>::type> 
ostream& operator << (ostream &os, const T_container &v) { 
    os << '{'; string sep; 
    for (const T &x : v) 
        os << sep << x, sep = ", "; 
    return os << '}'; 
}

template<class P, class Q = vector<P>, class R = less<P> > ostream& operator << (ostream& out, priority_queue<P, Q, R> const& M){
    static priority_queue<P, Q, R> U;
    U = M;
    out << "{ ";
    while(!U.empty())
        out << U.top() << " ", U.pop();
    return (out << "}");
}

template<class P> ostream& operator << (ostream& out, queue<P> const& M){
    static queue<P> U;
    U = M;
    out << "{"; string sep;
    while(!U.empty()){
        out << sep << U.front(); sep = ", "; U.pop();
    }
    return (out << "}");
}

#ifdef ABHIJAY_DEBUG
#define deb(...) __f(#__VA_ARGS__, __VA_ARGS__);

template <typename Arg1>
void __f(const char* name, Arg1&& arg1){
    cerr << name << " : " << arg1 << endl;
}

template <typename Arg1, typename... Args>
void __f(const char* names, Arg1&& arg1, Args&&... args){
    int count_open = 0, len = 1;
    for(int k = 1; ; ++k){
        char cur = *(names + k);
        count_open += (cur == '(' ? 1 : (cur == ')' ? -1: 0));
        if (cur == ',' && count_open == 0){
            const char* comma = names + k;
            cerr.write(names, len) << " : " << arg1 << " | ";
            __f(comma + 1, args...);
            return;
        }
        len = (cur == ' ' ? len : k + 1);
    }
}

#else
#define deb(...) 
#endif

bool print_case_no = false, time_taken = false, TT = true;

void run_case(int tc){
    
}

int32_t main() {
    ios::sync_with_stdio(false);
#ifndef ABHIJAY_DEBUG
    cin.tie(nullptr); 
    freopen("debug.flush", "w", stderr);
#endif
    tatakae(); // be strong enough to be someone who even the demons would fear!
}