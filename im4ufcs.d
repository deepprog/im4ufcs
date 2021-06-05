/**
 * Imaginary type imitation
 * Version: 0.1
 * Date: 2021/06/05
 * See_Also:
 * URL: <a href="https://github.com/deepprog/im4ufcs">im4ufcs</a>.
 * Copyright: Copyright deepprog 2021
 * License: $(HTTP boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Authors: deepprog
 */

module im4ufcs;

import std.complex;

auto i(T)(T im)
{
    return complex(0.0, im);
}

unittest
{
    auto a = 12L + 34.i;
    static assert(is(typeof(a) == Complex!double));
    assert(a.re == 12L);
    assert(a.im == 34);

    auto b = 56 - 78L.i;
    static assert(is(typeof(b) == Complex!double));
    assert(b.re == 56);
    assert(b.im == -78L);

    auto c = 0.1234 + 5.6789.i;
    static assert(is(typeof(c) == Complex!double));
    assert(c.re == 0.1234);
    assert(c.im == 5.6789);

    auto d = 0.1234 - 5.6789.i;
    static assert(is(typeof(d) == Complex!double));
    assert(d.re == 0.1234);
    assert(d.im == -5.6789);

    auto e = 12345L + 67890.i;
    static assert(is(typeof(e) == Complex!double));
    assert(e.re == 12345L);
    assert(e.im == 67890L);

    auto f = 1.2L + 3.4L.i;
    static assert(is(typeof(f) == Complex!real));
    assert(f.re == 1.2L);
    assert(f.im == 3.4L);

    auto g = 3 + 4.0L.i;
    static assert(is(typeof(g) == Complex!real));
    assert(g.re == 3);
    assert(g.im == 4.0L);

}