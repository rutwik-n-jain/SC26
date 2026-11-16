
## Morning: RISE 2026: 1st International Workshop on Rising Innovators in Sustainable Exacomputing

[Featured Speech: From Vision to Impact: Lessons in National-Scale Collaboration and Research Impact from the Exascale Era](https://sc26.conference-program.com/?post_type=page&p=16&id=misc184&sess=sess119): [Lori A. Diachin](https://sc26.conference-program.com/?post_type=page&p=15&uid=416643)

Panel:
Estela Suarez, Forschungszentrum Julich
Florina M Ciorba, University of Basel

*Advice for early career researchers*
**Florina**
- Don't compare with other people/peers -- work on things you are passionate about and that you are skilled at
**Thierry**
- Having HPC expertise is valuable with the advancement of AI

*Advice to students and early career researchers in the face of AI*
**All panelists**
- Keep student, researcher data local 
- Use AI as a tool or exoskeleton that facilitates your work -- you still need your own ideas, your own critical thinking
- Absolutely need to use AI but create your own self-tenets -- you are responsible for the output you or AI produces.

*Sustainability*
**Estela**
- Maximizing the science/throughput out of the machines 
- Research institutions by their nature are forced to hyper-optimize for highest use of resources since they are using taxpayer money (public research institutions)
Florina
- Variable-capacity scheduling where you adapt to fluctuations in the power grid
- To Thierry: is that something you look at?
Thierry
- Polarizing news about datacenters for HPC and AI
- At the core, we have finite resources that we are going to run out at some point
- Looking at pushing the boundary by using renewable sources

*Mentorship, sponsorship*
Sponsors: making connections for you, advocating for you. Usually a one way relationship. 
Mentors: collaborating and pushing you, critiquing you. Usually a two way relationship
### Lightning Talks
**John Gustafson** 
- Look for inertia in views, that's where things need fixing - "that's just how its done"
- Answers are easy, problem specification and assumptions are hard
**Ian Foster**
- Look for white space: problems others are not addressing
- Work with someone whose science depends on what you build
**Axel Koehler, NVIDIA**
- TU Dresden -> DESY Zeuthen -> Sun Microsystems (HPC Architect) in 96 -> Oracle (Principal Sales Consultant) 6 months -> NVIDIA (Principal Solution Architect in 2011 for 14 years, Distinguished Engineer since 2025) Bet on GPU computing - form early GPUs to AI factories, leadership for Europe's flagship centres. 
- Lesson: bet on the next architecture early, stay close to the applications (credibility comes from solving users' problems), treat change as a constant, energy efficiency is the new performance, 

**Scalability Issues on AI Infrastructure**
Isabel Schwerdtfeger, IBM
Security <-> Sustainability <-> Performance triangle/trade-offs
AI Scaling -- vertical or scale-out, horizontal or scale-up and dynamic scheduling. 

→ Algorithms as if Architecture Mattered: Moving Less, Computing Faster — Rabab Alomairy (KAUST, Saudi Arabia) 
- Mixed precision refinement history - 1948 FP64, 1970s extra precision no longer cheap or portable, FP32 and FP64 since then. 
- Hardware now pays out efficiency in lower precision but science still needs higher precision
- Hierarchical mixed precision H-MxP improves performance (and reduces energy for cholesky by 47%)

→ Sparse by Nature, Parallel by Design: HPC for the Life Sciences — Giulia Guidi (Cornell University, USA)  
- Genome data generation is outpacing the ability to store and synthesize this data
- Giulia's group works on sparse linear algebra as a computational abstraction for tackling large-scale computational challenges like the genomics.
→ SwarmLoRA: Serverless Shared-Computation Disaggregation for Isolated, High-Throughput Multi-LoRA Serving — Tong Shu (University of North Texas, USA)  
→ Abstract, Portable, Performant: Realizing Sustainable HPC — Floris-Jan Willemsen (Leiden University, Netherlands)  
→ The Meaning of Compute: formal approaches to exascale AI development — Rubén Coll Sánchez (Huawei, Sorbonne University, France)



Afternoon session: 
## **17th Workshop on Latest Advances in Scalable Algorithms for Large-Scale Heterogeneous Systems (ScalAH'26)**

Genesis Mission and the Path to Agentic Science
[Rick Stevens](https://sc26.conference-program.com/?post_type=page&p=15&uid=248153), Argonne National Labs
→ National science and tech challenges: Energy systems, Biotechnology and health, streategic technologies, materials and manufacturing, fundamental science, 
→ Build in partnership with industry a "science and security platform" - a coordinated scientific discovery systems including supercomputing and cloud resources, curated scientific data, AI models and agents, and experimental and production facilities
 ![[Pasted image 20261115120739.png|449]]
→ Goal: scientific superintelligence
**Sustained scientific work**: Run for days or weeks, drawing on the literature and retaining evidence.
**Experiment and simulation**: Design and run tests, deploy instruments, and direct robotic facilities
**New scientific knowledge**: Originate theories and validate them against observations and experiments

→ Creating this scientific superintelligence
- Need models far beyond human skill - happening for specific domains but far from there
- Most powerful agentic harnesses - models equipped with powerful tools, agents imagine, plan, run, and analyze experiments and simulations. 
- Fully federated infrastructure - Facilities and instruments connected through common APIs and access agent-enabled across agencies and countries. 

**Open scientific data in every modality**
![[Pasted image 20261115122058.png]]
![[Pasted image 20261115122007.png]]

What is gating these models -- it might be data in most cases, but more important what is gating the training data: 
![[Pasted image 20261115122152.png]]


## EESP 2026: 3rd International Workshop on Energy Efficiency with Sustainable Performance: Techniques, Tools, and Best Practices

### A Deployment-Aware Multi-Objective Hyper-Parameter Optimization Framework for Machine Learning, 
[Matteo Zanotto](https://sc26.conference-program.com/?post_type=page&p=15&uid=149334), [University of Trento](https://sc26.conference-program.com/?post_type=page&p=18&inst=7012483525770790658) 
![[Pasted image 20261115153539.png]]

### Energy and Cost-Aware Control at Scale: Multi-Dimensional Power Steering on MI300A

PowerSched Architecture
- Budget manager
- Application Power Aware Runtime (APAR) daemon per node. 
- Pub/Sub architecture
- Dynamic Global Policies

**Dynamic Global Policies**
![[Pasted image 20261115154116.png|424]]
PowerSched metric is energy-delay product

![[Pasted image 20261115154321.png|433]]

### Variation-Aware Non-Uniform Node Power Capping for Exascale HPC Systems
Solomon Bekele (Argonne, Intel)

- Process/manufacturing variation
- Aging
- Thermal conditions
- Other operating conditions

![[Pasted image 20261115155528.png]]

**Power rebalancing**
- Non-uniform allocation -- Total requested caps: 15 kW but some node gets more, others get less
- Use RAPL to control node power cap
- github.com/geopm/geopm

![[Pasted image 20261115160030.png]]

Continuation of this talk:
[Domain-Aware Power Rebalancing under Node-Level Power Caps on Aurora](https://sc26.conference-program.com/?post_type=page&p=16&id=ws_eesp120&sess=sess125) 
- GPU DVFS and node caps can reach similar board power. The uncore can be retained under GPU DVFS (reducing only GPU frequency) but everything is reduced under a node cap. 
- **Control opportunity**: keep the node cap active, but steer per-domain allocation when data movement wants higher frequency (higher node level power cap but apply GPU frequency cap)
- Plug-in agent that tracks power consumption and copy-engine activity of the GPU -- action: request maximum CPU uncore frequency. 








Idea: 
Classify **each node**'s perf scaling with power cap for 
- intra-node communication (4/8 GPU communication)
- intra-node compute (4/8 GPU compute)
- overlapped compute-communication through end-to-end application benchmarking

Node = any set of GPUs within scale-up domain 

Analytical power rebalancing approach to maximize throughput for given provisioned power/cost budget? Baseline provisioned power/

