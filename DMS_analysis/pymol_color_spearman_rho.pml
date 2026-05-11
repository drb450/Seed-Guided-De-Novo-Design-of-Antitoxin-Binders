# Color chain A by per-position Spearman rho (ER vs ddG)
# Values range: -1.000 to 1.000
# Interface: any inter-chain contact <= 4.0 Angstrom

load DB2_RelE.pdb, DB2_RelE

# Setup
bg_color white
set ray_opaque_background, 0
set antialias, 2
set ray_shadows, 0

# Hide everything, show cartoon for DB2_RelE
hide everything
show cartoon, DB2_RelE

# Hide chain B completely
hide everything, chain B

# Style obj01 as white transparent surface
hide everything, obj01
show surface, obj01
color white, obj01
set transparency, 0.4, obj01

# Define interface selection
select interface, chain A and resi 3+6+9+10+13+14+17+18+19+20+21+22+23+24+35+36+38+39+42+43+45+46+47+51+53+56+60+63+64+67+68+71

# Show sticks for interface residues
show sticks, interface
hide sticks, interface and name c+n+o and not name ca
set stick_radius, 0.15

# Zero out all B-factors on chain A
alter chain A, b=0

# Set B-factors to per-position values on chain A
alter chain A and resi 1, b=-0.4857
alter chain A and resi 2, b=0.6000
alter chain A and resi 3, b=-0.2000
alter chain A and resi 4, b=0.4643
alter chain A and resi 5, b=0.6571
alter chain A and resi 6, b=0.6571
alter chain A and resi 7, b=0.3143
alter chain A and resi 8, b=0.1429
alter chain A and resi 9, b=-0.2143
alter chain A and resi 10, b=0.4286
alter chain A and resi 11, b=-0.6000
alter chain A and resi 12, b=-0.2000
alter chain A and resi 13, b=0.6429
alter chain A and resi 14, b=-0.4857
alter chain A and resi 15, b=-0.3571
alter chain A and resi 16, b=-0.2143
alter chain A and resi 17, b=0.3214
alter chain A and resi 18, b=0.1429
alter chain A and resi 19, b=-0.7143
alter chain A and resi 20, b=0.1071
alter chain A and resi 21, b=-0.6000
alter chain A and resi 22, b=-0.7857
alter chain A and resi 23, b=0.3214
alter chain A and resi 24, b=-0.4643
alter chain A and resi 25, b=-0.7500
alter chain A and resi 26, b=-0.7500
alter chain A and resi 27, b=-0.1429
alter chain A and resi 28, b=0.3929
alter chain A and resi 29, b=-0.4286
alter chain A and resi 30, b=0.3929
alter chain A and resi 31, b=-0.0357
alter chain A and resi 32, b=0.9286
alter chain A and resi 33, b=0.1786
alter chain A and resi 34, b=0.2571
alter chain A and resi 35, b=0.4857
alter chain A and resi 36, b=-0.2857
alter chain A and resi 37, b=0.3571
alter chain A and resi 38, b=0.0857
alter chain A and resi 39, b=-0.2143
alter chain A and resi 40, b=0.2500
alter chain A and resi 41, b=0.4286
alter chain A and resi 42, b=-0.9429
alter chain A and resi 43, b=-0.6429
alter chain A and resi 44, b=-0.3714
alter chain A and resi 45, b=-0.4857
alter chain A and resi 46, b=-0.7143
alter chain A and resi 47, b=0.5429
alter chain A and resi 48, b=-0.1071
alter chain A and resi 49, b=0.3214
alter chain A and resi 50, b=-0.0714
alter chain A and resi 51, b=0.3143
alter chain A and resi 52, b=0.0286
alter chain A and resi 53, b=0.2143
alter chain A and resi 54, b=-0.0714
alter chain A and resi 55, b=-0.0714
alter chain A and resi 56, b=-0.7714
alter chain A and resi 57, b=-0.3214
alter chain A and resi 58, b=-0.3571
alter chain A and resi 59, b=0.3143
alter chain A and resi 60, b=-0.3714
alter chain A and resi 61, b=-0.1786
alter chain A and resi 62, b=0.0000
alter chain A and resi 63, b=-0.4286
alter chain A and resi 64, b=-0.7714
alter chain A and resi 65, b=0.2143
alter chain A and resi 66, b=0.3143
alter chain A and resi 67, b=0.0857
alter chain A and resi 68, b=0.8857
alter chain A and resi 69, b=-0.1786
alter chain A and resi 70, b=0.5357
alter chain A and resi 71, b=-0.3929
alter chain A and resi 72, b=-0.2899
alter chain A and resi 73, b=0.4286

# Color by B-factor
spectrum b, blue_white_red, chain A, minimum=-1.0000, maximum=1.0000

rebuild
deselect

orient chain A
zoom all, 5