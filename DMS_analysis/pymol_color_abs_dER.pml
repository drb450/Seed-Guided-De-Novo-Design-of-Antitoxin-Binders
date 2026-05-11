# Color chain A by mean |dER| per position
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
alter chain A and resi 1, b=2.6808
alter chain A and resi 2, b=5.5922
alter chain A and resi 3, b=2.9101
alter chain A and resi 4, b=2.3960
alter chain A and resi 5, b=4.2488
alter chain A and resi 6, b=4.0582
alter chain A and resi 7, b=1.8491
alter chain A and resi 8, b=2.8006
alter chain A and resi 9, b=4.7549
alter chain A and resi 10, b=2.3856
alter chain A and resi 11, b=8.1400
alter chain A and resi 12, b=2.9265
alter chain A and resi 13, b=9.7678
alter chain A and resi 14, b=9.2400
alter chain A and resi 15, b=4.6953
alter chain A and resi 16, b=6.0904
alter chain A and resi 17, b=4.0998
alter chain A and resi 18, b=2.5352
alter chain A and resi 19, b=7.4602
alter chain A and resi 20, b=6.1982
alter chain A and resi 21, b=6.3527
alter chain A and resi 22, b=5.8980
alter chain A and resi 23, b=3.7594
alter chain A and resi 24, b=3.9988
alter chain A and resi 25, b=5.2021
alter chain A and resi 26, b=4.9098
alter chain A and resi 27, b=9.2599
alter chain A and resi 28, b=8.5317
alter chain A and resi 29, b=3.1785
alter chain A and resi 30, b=3.5566
alter chain A and resi 31, b=3.6517
alter chain A and resi 32, b=3.7029
alter chain A and resi 33, b=1.6196
alter chain A and resi 34, b=4.1581
alter chain A and resi 35, b=3.2433
alter chain A and resi 36, b=2.7205
alter chain A and resi 37, b=3.8215
alter chain A and resi 38, b=3.8233
alter chain A and resi 39, b=5.6898
alter chain A and resi 40, b=1.9079
alter chain A and resi 41, b=2.6480
alter chain A and resi 42, b=5.4643
alter chain A and resi 43, b=6.0113
alter chain A and resi 44, b=2.8130
alter chain A and resi 45, b=5.5923
alter chain A and resi 46, b=4.6591
alter chain A and resi 47, b=5.3263
alter chain A and resi 48, b=6.6953
alter chain A and resi 49, b=5.1784
alter chain A and resi 50, b=4.8832
alter chain A and resi 51, b=1.8234
alter chain A and resi 52, b=2.5761
alter chain A and resi 53, b=5.4541
alter chain A and resi 54, b=3.0084
alter chain A and resi 55, b=3.6358
alter chain A and resi 56, b=6.1625
alter chain A and resi 57, b=5.4640
alter chain A and resi 58, b=3.2877
alter chain A and resi 59, b=2.9553
alter chain A and resi 60, b=3.6149
alter chain A and resi 61, b=2.8190
alter chain A and resi 62, b=4.0484
alter chain A and resi 63, b=4.1614
alter chain A and resi 64, b=5.2868
alter chain A and resi 65, b=4.1945
alter chain A and resi 66, b=5.1607
alter chain A and resi 67, b=3.4420
alter chain A and resi 68, b=3.9290
alter chain A and resi 69, b=2.9473
alter chain A and resi 70, b=3.1311
alter chain A and resi 71, b=5.4661
alter chain A and resi 72, b=4.8875
alter chain A and resi 73, b=3.2374

# Color by B-factor
spectrum b, white_red, chain A, minimum=0.0000, maximum=10.0000

rebuild
deselect

orient chain A
zoom all, 5