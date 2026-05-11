# Seed-Guided De Novo Design of Antitoxin Protein Binders — Data & Analysis

This repository accompanies the manuscript:

> Britton, D. *et al.* *Seed-Guided De Novo Design Expands the Structural
> Diversity of Antitoxin Protein Binders.* (Manuscript in preparation, 2026.)

## Abstract

De novo design of protein binders targeting extensive or multi-site interaction
surfaces remains difficult for current generative methods, which often produce
limited structural diversity and predominantly helical topologies. Here, we
advance RFdiffusion-based binder design by guiding backbone generation through
motif scaffolding of "seeds," which are PDB-derived fragments selected for
geometric complementarity to the target surface. To test this approach, we
computationally generated ~1,400 seed-guided binders of the bacterial toxin
RelE. RelB, the native antitoxin of RelE, engages two distinct interfaces with
high surface complementarity, making it an appropriate test case. Seed-guided
RFdiffusion produced backbones with substantially higher structural diversity,
more target contacts, and higher-confidence multi-interface engagement relative
to RFdiffusion alone. Experimental screening in a high-throughput bacterial
survival assay identified multiple functional binders, including some variants
with nanomolar to low-micromolar affinity and RelE neutralization comparable
to RelB. Structural and mutational analyses confirmed that the designed
interfaces rely on seed-derived contacts and adopt binding modes distinct from
RelB. Notably, successful designs also exhibited reduced cross-reactivity to
RelE orthologs, relative to RelB, suggesting the extensive interfaces generated
through seed-driven design can enable enhanced selectivity. These results
establish seed-guided motif scaffolding as an effective strategy for
overcoming current limitations of de novo generative models, enabling designs
that can engage challenging interface sites.

## Contents (this GitHub repository, ~320 MB)

DMS_analysis/             Deep mutational scanning analysis (DB2_DMS_260114)
REMD_analysis/            Replica-exchange MD analysis scripts & summaries
(full trajectories on Zenodo)
library_analysis/         Aggregate library-level analysis (SwanSeeds pipeline)
library_pdbs/             Per-design PDB structures of the full library (~1,400)
library_backbones/        Backbone-only PDBs of the full library
seed_vs_noseed_analysis/  Comparison scripts/CSVs for seed-guided vs control
RFdiffusion (bulk PDB sets and large TM-score matrices
on Zenodo)

## Bulk data on Zenodo

Files too large for GitHub are deposited on Zenodo:

> Britton, D. *et al.* (2026). *Data for: Seed-Guided De Novo Design of
> Antitoxin Protein Binders.* Zenodo. https://doi.org/10.5281/zenodo.XXXXXXX

| Archive | Description | Approx. size |
|---|---|---|
| `seed_pdbs.tar.gz` | 12,000 seed-guided RFdiffusion design PDBs (subsample) | ~3.5 GB |
| `noseed_pdbs.tar.gz` | 12,000 control RFdiffusion design PDBs | ~3.5 GB |
| `tmscore_matrix_ss.csv` | All-vs-all TM-score matrix, seed-guided set | 1.24 GB |
| `tmscore_matrix_rfdc.csv` | All-vs-all TM-score matrix, RFdiffusion control | 0.95 GB |
| `DB1_bound_unbound_300K_stripped.xtc` | REMD trajectory, DB1 (300 K, stripped) | 240 MB |
| `DB2_bound_unbound_300K_stripped.xtc` | REMD trajectory, DB2 (300 K, stripped) | 226 MB |

After downloading, place them at the matching paths inside this repository:

seed_vs_noseed_analysis/seed_pdbs/        ← unpack seed_pdbs.tar.gz
seed_vs_noseed_analysis/noseed_pdbs/      ← unpack noseed_pdbs.tar.gz
seed_vs_noseed_analysis/tmscore_matrix_ss.csv
seed_vs_noseed_analysis/tmscore_matrix_rfdc.csv
REMD_analysis/DB1_bound_unbound_300K_stripped.xtc
REMD_analysis/DB2_bound_unbound_300K_stripped.xtc

## Methods summary

- **Binder design:** RFdiffusion with seed-guided motif scaffolding
- **Sequence design:** ProteinMPNN
- **Structure prediction:** AlphaFold2
- **Experimental screening:** Bacterial survival assay
- **MD simulations:** Replica-exchange MD (Amber)
- **Deep mutational scanning:** Enrichment-ratio analysis from NGS

## Citation

Citation will be added upon publication.

## Contact

Dustin Britton — drb763@mit.edu — [github.com/drb450](https://github.com/drb450)
