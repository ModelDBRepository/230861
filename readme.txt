"Computational Analysis of Network Activity and Spatial Reach of Sharp
Wave-Ripples" README file

===========================================================================

This model creates the hippocampal model in:

Canakci S, Inci AF, Toy MF, Liu X, and Kuzum D. "Computational
Analysis of Network Activity and Spatial Reach of Sharp
Wave-Ripples". PLOS ONE 2017.

ModelDB Accession Number 230861

--

This model is derived from earlier model published in:

Fink CG, Gliske S, Catoni N, and Stacey WC. "Network mechanisms
generating abnormal and normal hippocampal high-frequency
oscillations: A computational analysis." eNeuro 2015,
DOI: http://dx.doi.org/10.1523/ENEURO.0024-15.2015

ModelDB Accession Number 182134

To run the simulation
---------------------

1. Should be run in the normal (serial) installation of NEURON 7.3.
Most of the code is actually written for parallel implementation, but
several functions were added that are not able to run in parallel.

2. Unzip the zip file, keeping the file structure intact (see below).

3. To compile the mod files, (in Windows) cd to the mod folder, and
execute the command mknrndll. Move the resulting file (nrnmech.dll),
to the root directory. (in Linux) execute "nrnivmod mod" at top level
folder, then "nrngui simulation.hoc".

4. Run simulation.hoc.

5. The model can generate simulated sharp waves (as in Figs. 2 and 3)
by running the simulation for a single point electrode. The model
simulates micro electrode arrays and larger electrode sizes (as in
Figs. 5 and 6) by uncommenting the for loops at the end of
simulation.hoc file. Electrode sizes in x axis and y axis ans also
spatial difference between point electrode are determined inside the
for loops.


Data files are written in data folder. extraactive file includes LFP
from active pyramidal cells and extraantenna file includes LFP from
inactive pyramidal cells. extra file includes LFP from all
neurons. When simulation is run for multiple electrodes, LFPs of
different electrodes are written in concatenated form(one followed by
another) in the files ending with _SUM.

We set pyrspiketau_vec=0.1, pyr_nospike_tau=1.0, and
baskspike_tau=bask_nospike_tau=6.0 in all of the simulations excepts
results in Fig. 2 d,e and f. In Fig. 2 d,e and f, pyrspiketau_vec=
pyr_nospike_tau=1.0, and baskspike_tau=0.60, and
bask_nospike_tau=6.0. We set the number of antenna cells (in Fig. 3)
in manycells.par file inside the parameters folders. We set the
distance of electrode to the network in the first argument of setelec
function inside simulation.hoc file. We set baskconnvector=100 which
means basket cells make synapses with 100% of pyramidal cells.
  
For other simulation details, please see the documentation
accompanying the earlier model (ModelDB accession numbers 182134).

