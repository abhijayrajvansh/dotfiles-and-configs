/*    यो न हृष्यति न द्वेष्टि न शोचति न काङ्क्षति। शुभाशुभपरित्यागी भक्तिमान्यः स मे प्रियः॥
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 *    author:   abhijayrajvansh (https://codeforces.com/profile/abhijayrajvansh)
 *    created:  26.06.2022 17:48:34
**/
#include <bits/stdc++.h>
using namespace std;

typedef long double ld;
typedef unsigned long long ull;
#define int long long
#define TESTCASES_AND_TIME int TEST_CASES = 1; if (TT) { cin >> TEST_CASES; } for (int i = 1; i <= TEST_CASES; i++) { if (print_case_no) cout << "case #" << i << ": "; run_case(i); } cerr << fixed << setprecision(2); cerr << "\nExecution Time: " << (float)clock() / CLOCKS_PER_SEC << " secs" << '\n'; 
#define DEBUG_AND_LOCAL_IO freopen("debug_error.txt", "w", stderr); if(local_IO) { freopen("local.in", "r", stdin); freopen("local.out", "w", stdout); }
#define yes cout << "YES" << nl;
#define no cout << "NO" << nl;
#define nl '\n';

template<class Fun> class y_combinator_result {
    Fun fun_;
public:
    template<class T> explicit y_combinator_result(T &&fun): fun_(std::forward<T>(fun)) {}
    template<class ...Args> decltype(auto) operator()(Args &&...args) { return fun_(std::ref(*this), std::forward<Args>(args)...); }
};
template<class Fun> decltype(auto) y_combinator(Fun &&fun) { return y_combinator_result<std::decay_t<Fun>>(std::forward<Fun>(fun)); }

template<typename A, typename B> ostream& operator<<(ostream &os, const pair<A, B> &p) { return os << '(' << p.first << ", " << p.second << ')'; }
template<typename T_container, typename T = typename enable_if<!is_same<T_container, string>::value, typename T_container::value_type>::type> ostream& operator<<(ostream &os, const T_container &v) { os << '{'; string sep; for (const T &x : v) os << sep << x, sep = ", "; return os << '}'; }

void dbg_out() { cerr << endl; }
template<typename Head, typename... Tail> void dbg_out(Head H, Tail... T) { cerr << ' ' << H; dbg_out(T...); }
#ifdef ABHIJAY_DEBUG
#define deb(...) cerr << "["<< #__VA_ARGS__ << "]:", dbg_out(__VA_ARGS__);
#else
#define deb(...)
#endif

bool local_IO = false, print_case_no = false, TT = true;

void run_case(int tc){
    
}

int32_t main() {
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
#ifndef ABHIJAY_DEBUG
    DEBUG_AND_LOCAL_IO;
#endif
    TESTCASES_AND_TIME;
}



