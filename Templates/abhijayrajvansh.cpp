/**   
 *    author:  abhijayrajvansh
 *    created: 02.08.2022 05:56:23
**/
#ifndef ABHIJAY_DEBUG
    #pragma GCC optimize("O3,unroll-loops")
    // #pragma GCC target("avx,avx2,sse4.2,bmi,bmi2,popcnt,lzcnt") // Gives SIGILL on SPOJ
#endif

#include <bits/stdc++.h>
using namespace std;

#define int int64_t // avoiding int32_t overflow
// procrastination is not an option! 
#define tatakae() std::cout << std::fixed << std::setprecision(12); std::cerr << std::fixed << std::setprecision(3); auto start = std::chrono::high_resolution_clock::now(); int tests = 1; if (TT) cin >> tests; cerr << '\n'; for (int i = 1; i <= tests; i++) { if(print_case_no) cout << "Case #" << i << ": "; run_case(i); } if (time_taken) { auto stop = std::chrono::high_resolution_clock::now(); long double duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start).count(); std::cerr << "\nTime taken : " << duration / 1e9 << " seconds" << std::endl; }

constexpr char nl = '\n'; // a slave of one's habits 

bool print_case_no = false, time_taken = false, TT = true;

void run_case(int tc){
    
}

int32_t main() {
    ios::sync_with_stdio(false);
#ifndef ABHIJAY_DEBUG
    cin.tie(nullptr); 
    freopen("debug.err", "w", stderr);
#endif
    tatakae();
}