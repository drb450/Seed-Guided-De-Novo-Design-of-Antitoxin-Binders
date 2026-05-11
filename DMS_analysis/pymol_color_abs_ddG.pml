# Color chain A by mean |ddG| (bound_minus_unbound) per position
# Values range: 0.000 to 10.000
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
alter chain A and resi 1, b=0.8944
alter chain A and resi 2, b=1.7296
alter chain A and resi 3, b=1.9865
alter chain A and resi 4, b=0.5557
alter chain A and resi 5, b=0.3195
alter chain A and resi 6, b=3.7694
alter chain A and resi 7, b=1.5206
alter chain A and resi 8, b=1.3521
alter chain A and resi 9, b=1.6210
alter chain A and resi 10, b=5.9314
alter chain A and resi 11, b=3.9025
alter chain A and resi 12, b=0.4553
alter chain A and resi 13, b=4.0543
alter chain A and resi 14, b=7.7612
alter chain A and resi 15, b=0.7611
alter chain A and resi 16, b=6.2727
alter chain A and resi 17, b=1.9310
alter chain A and resi 18, b=4.2395
alter chain A and resi 19, b=7.6692
alter chain A and resi 20, b=4.0483
alter chain A and resi 21, b=9.0040
alter chain A and resi 22, b=1.6013
alter chain A and resi 23, b=1.2274
alter chain A and resi 24, b=0.9236
alter chain A and resi 25, b=0.3821
alter chain A and resi 26, b=2.2819
alter chain A and resi 27, b=1.6282
alter chain A and resi 28, b=0.9235
alter chain A and resi 29, b=0.2742
alter chain A and resi 30, b=0.5075
alter chain A and resi 31, b=2.2131
alter chain A and resi 32, b=0.8316
alter chain A and resi 33, b=0.3299
alter chain A and resi 34, b=1.4424
alter chain A and resi 35, b=3.1582
alter chain A and resi 36, b=1.4681
alter chain A and resi 37, b=1.1084
alter chain A and resi 38, b=2.1499
alter chain A and resi 39, b=4.3700
alter chain A and resi 40, b=0.9156
alter chain A and resi 41, b=1.4956
alter chain A and resi 42, b=6.8464
alter chain A and resi 43, b=1.0319
alter chain A and resi 44, b=0.8504
alter chain A and resi 45, b=5.5536
alter chain A and resi 46, b=3.2437
alter chain A and resi 47, b=2.3344
alter chain A and resi 48, b=2.3810
alter chain A and resi 49, b=0.6889
alter chain A and resi 50, b=1.2593
alter chain A and resi 51, b=1.2604
alter chain A and resi 52, b=1.0713
alter chain A and resi 53, b=1.4176
alter chain A and resi 54, b=1.0780
alter chain A and resi 55, b=0.8625
alter chain A and resi 56, b=3.3928
alter chain A and resi 57, b=1.8893
alter chain A and resi 58, b=1.2134
alter chain A and resi 59, b=2.3449
alter chain A and resi 60, b=2.4524
alter chain A and resi 61, b=1.0709
alter chain A and resi 62, b=1.2722
alter chain A and resi 63, b=1.9138
alter chain A and resi 64, b=2.3047
alter chain A and resi 65, b=0.5809
alter chain A and resi 66, b=0.2875
alter chain A and resi 67, b=1.7561
alter chain A and resi 68, b=0.8982
alter chain A and resi 69, b=1.4330
alter chain A and resi 70, b=0.8374
alter chain A and resi 71, b=1.6174
alter chain A and resi 72, b=0.9942
alter chain A and resi 73, b=0.3170

# Color by B-factor
spectrum b, white_red, chain A, minimum=0.0000, maximum=10.0000

rebuild
deselect

orient chain A
zoom all, 5