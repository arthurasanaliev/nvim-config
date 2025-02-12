local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node

ls.add_snippets('cpp', {
    s('is_prime', {
        t({
            'bool is_prime(int n) {',
            '    if (n <= 1) {',
            '        return false;',
            '    }',
            '    for (int i = 2; i * i <= n; i++) {',
            '        if (n % i == 0) {',
            '            return false;',
            '        }',
            '    }',
            '    return true;',
            '}'
        }),
    }),

    s('binpow', {
        t({
            'll binpow(ll a, ll b) {',
            '    ll res = 1;',
            '    while (b > 0) {',
            '        if (b % 2 == 1) {',
            '            res = res * a % MOD;',
            '        }',
            '        a = a * a % MOD;',
            '        b /= 2;',
            '    }',
            '    return res;',
            '}'
        }),
    }),
    
    s('vecink', {
        t({
            'int n, k;',
            'cin >> n >> k;',
            'vector<int> a(n);',
            'for (int& x : a) cin >> x;',
        }),
    }),

    s('vecin', {
        t({
            'int n;',
            'cin >> n;',
            'vector<int> a(n);',
            'for (int i = 0; i < n; i++) {',
            '    cin >> a[i];',
            '}',
        }),
    }),
    
    s('vecin1', {
        t({
            'int n;',
            'cin >> n;',
            'vector<int> a(n + 1);',
            'for (int i = 1; i <= n; i++) {',
            '    cin >> a[i];',
            '}'
        }),
    }),
    
    s('matin', {
        t({
            'int n, m;',
            'cin >> n >> m;',
            'vector<vector<int>> a(n, vector<int>(m));',
            'for (int i = 0; i < n; i++) {',
            '    for (int j = 0; j < m; j++) {',
            '        cin >> a[i][j];',
            '    }',
            '}'
        }),
    }),
    
    s('matin1', {
        t({
            'int n, m;',
            'cin >> n >> m;',
            'vector<vector<int>> a(n + 1, vector<int>(m + 1));',
            'for (int i = 1; i <= n; i++) {',
            '    for (int j = 1; j <= m; j++) {',
            '        cin >> a[i][j];',
            '    }',
            '}'
        }),
    }),

    s('base', {
        t({
            '#include <bits/stdc++.h>',
            'using ll = long long;',
            'using namespace std;',
            '',
            '#ifdef LOCAL',
            '#include "debug.h"',
            '#else',
            '#define debug(x...)',
            '#endif',
            '',
            'void solve() {',
            '',
            '}',
            '',
            'signed main() {',
            '    ios::sync_with_stdio(false);',
            '    cin.tie(nullptr);',
            '    int tt;',
            '    cin >> tt;',
            '    while (tt--) solve();',
            '}',
        }),
    }),
})

ls.add_snippets('template', {
    s('html:5', {
        t({
            '<!DOCTYPE html>',
            '<html lang="en">',
            '<head>',
            '    <meta charset="UTF-8">',
            '    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">',
            '    <title>Document</title>',
            '</head>',
            '<body>',
            '',
            '</body>',
            '</html>',
        }),
    }),
})


