// -- preamble --
size(12cm, 0);
real h2 = 0.1;
pen p = linewidth(1pt);
pen lorelei = rgb(220/255, 6/255, 90/255);

// -- main axes --
// x axis
draw((0, 0) -- (10, 0), arrow=Arrow(8), p);
label("$\aleph_\beta$", (10, 0), E);

// y axis
draw((0, 0) -- (0, 6), arrow=Arrow(8), p);
label("$\aleph_\alpha^{\aleph_\beta}$", (0, 6), N);

label("$\aleph_0$", (0, 0), S);

// -- lines --
// solid lines
draw((0, 1) -- (3, 1), p + lorelei);
draw((3, 2) -- (6, 2), p + lorelei);
draw((6, 2) -- (10, 6), p + lorelei);

// background lines
pen ptr = p + opacity(0.3);
draw((3, 0) -- (3, 6), ptr);
draw((6, 0) -- (6, 6), ptr);
draw((7, 0) -- (7, 6), ptr);
draw((9, 0) -- (9, 6), ptr);

draw((3, 1) -- (10, 1), ptr);
draw((0, 2) -- (3, 2), ptr);
draw((6, 2) -- (10, 2), ptr);
draw((0, 3) -- (10, 3), ptr);
draw((0, 5) -- (10, 5), ptr);

// -- dots and ticks --
pen p1 = linewidth(4pt);
pen p2 = linewidth(4/6 pt);

// x axis ticks
draw((3, -h2) -- (3, h2), p);
label("$\mathrm{cf}(\aleph_\alpha)$", (3, -0.05), S);

draw((6, -h2) -- (6, h2), p);
label("$\aleph_\alpha$", (6, -0.05), S);

draw((7, -h2) -- (7, h2), p);
label("$\aleph_{\alpha+1}$", (7, -0.05), S);

draw((9, -h2) -- (9, h2), p);

// y axis ticks
draw((-h2, 1) -- (h2, 1), p);
dot((3, 1), p2 + lorelei, Fill(white));
label("$\aleph_\alpha$", (0, 1), W);

draw((-h2, 2) -- (h2, 2), p);
dot((3, 2), p1 + lorelei);
dot((6, 2), p1 + lorelei);
label("$\aleph_{\alpha+1}$", (0, 2), W);

draw((-h2, 3) -- (h2, 3), p);
label("$\aleph_{\alpha+2}$", (0, 3), W);

draw((-h2, 5) -- (h2, 5), p);

// additional labels
label(rotate(90)*"$f(\aleph_\beta) = {\aleph_\alpha}^{\aleph_\beta}$", (-1.1, 3), W, lorelei);

label(rotate(90)*"\Large $\dots$", (-0.3, 4.1), W);

label("\Large $\dots$", (8, -.2), S);