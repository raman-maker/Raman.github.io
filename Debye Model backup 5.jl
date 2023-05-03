### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ ac3d340e-e0f5-45ec-9390-ffb0f6a2edbb
using PlutoUI, HypertextLiteral 

# ╔═╡ fdac692d-5376-4621-a7f0-a3c19c88dbcf
@htl("""
	<style>
	.cool-class {
		font-size: 4rem;
		color: Green;
		background: red;
		padding: 1rem;
		border-radius: 1rem;
	}
	
	
	</style>
	
	<div class="cool-class">Debye Model</div>
	""")

# ╔═╡ c16acb64-ba8b-11ed-0a4c-8348d944c7ec
md" 
>* It is a model developed by Peter Debye in 1912 for estimation of phonon contriution to specific heat in a solid.
>* Correctly explains `` T^3`` dependence of specific heat capacity at low temperature.
>* Matches Dulong-Petit law at high temperature.
>* But suffers at intermediate temperature.
# -**-     -**-  -**-  -**-  
>* Low energy excitations of solid materials were not oscillations of an single atom , but collective modes propagating through material.
>* Can be considered sound waves propagating at speed of sound with discrete energy. 
 # Phonon
>* Phonons are _Quasi-particles_ with definite energy and directions of motion.
>* Concept of phonon is analogous to the photon.
>* Phonons obey Bose-Einstein Statistics.
```math
n(ω)=\frac{1}{exp(ħω/k_BT)-1}
```
"

# ╔═╡ 65fe67ad-1bd2-41b9-a7df-157091021523
md"Phonon of energy 𝝐 , angular frequency ω and wave vector _q⃗_ have relations :"

# ╔═╡ 3a8d6965-8dc7-47f0-b61b-43750716f51a
 md"$\begin{gather}
 𝛜=ħ𝛚\\
 \text{𝛚=vq⃗} \\
 \text{, where v is speed of sound wave.}
 \end{gather}$"  

# ╔═╡ 5ac5261b-21b8-4b27-bcad-b440496f0116
md"##  Debye frequency and Debye temperature.
>* Phonon can't have ∞ frequency. Its frequency is bound by atomic lattice of solid.
>* N primitive lattice will have N phonon modes.
>* A cut off frequency also known as Debye frequency is determined as follows :
"

# ╔═╡ 8294ca70-4465-46c6-8065-a9369abbaf36
md" In 3D reciprocal space , volume of each allowed vector q⃗ is : 
 
$\text(2π/L)^3=8π^3/V$
All modes are confined within a sphere of radius $q_D$ . Thus number of modes should be : 
```math
N=\frac{4}{3π\text q_D^3}/\frac{8π^3}{V}
```
```math
q_D=(\frac{6π^2N}{V})^1/3
```
```math
𝝎_D=v_s(\frac{6π^2N}{V})^1/3
```
Debye temperature $T_D$ is defined as :
```math
T_D=\frac{ħ𝛚_D}{k_B}=\frac{ħv_s}{k_B}(\frac{6π^2N}{V})^1/3
```
"


# ╔═╡ 4a543497-2564-4a12-b087-d4e521d4300d
md" ## Derivation for specific heat
We take sound velocity $v_s$ as constant for each polarisation type.
The Density of states is :
```math
D(ω)=\frac{\text{d}N}{\text{d}ω}=\frac{Vω^2}{2π^2v_s^3}
```
Thus thermal energy for each polarisation type is given by :
```math
U=∫dωD(ω)n(ω)ħω=∫_0^ω dω\frac{Vω^2}{2π^2v_s^3}\frac{ħω}{exp(ħω/k_BT)-1}
```
There are three polarisations so U would be :
```math
U=3∫_0^ω dω\frac{Vω^2}{2π^2v_s^3}\frac{ħω}{exp(ħω/k_BT)-1}=\frac{3Vħ}{2π^2v_s^3}∫_0^ω dω\frac{ω^3}{exp(ħω/k_BT)-1}
```
Let $x=ħω/k_BT$ and $x_D=T_D/T$
```math
U=\frac{3Vk_B^4T^4}{2π^2v_s^3ħ^3} ∫_0^x dx \frac{x^3}{e^x-1}=9Nk_BT(\frac{T}{T_D})^3∫_0^x dx \frac{x^3}{e^x-1}
```
The Heat capacity is
```math
C_v=\frac{ðU}{ðT}=9Nk_B(\frac{T}{T_D})^3∫_0^x dx \frac{x^4 e^x}{(e^x-1)^2}
```
Above integral can't be evaluated exactly so we will plot it numerically."

# ╔═╡ 411b975a-3a36-4a30-8f3d-509eb02456c4
md" ## High temperature limit"

# ╔═╡ Cell order:
# ╠═ac3d340e-e0f5-45ec-9390-ffb0f6a2edbb
# ╟─fdac692d-5376-4621-a7f0-a3c19c88dbcf
# ╟─c16acb64-ba8b-11ed-0a4c-8348d944c7ec
# ╟─65fe67ad-1bd2-41b9-a7df-157091021523
# ╟─3a8d6965-8dc7-47f0-b61b-43750716f51a
# ╟─5ac5261b-21b8-4b27-bcad-b440496f0116
# ╟─8294ca70-4465-46c6-8065-a9369abbaf36
# ╟─4a543497-2564-4a12-b087-d4e521d4300d
# ╠═411b975a-3a36-4a30-8f3d-509eb02456c4
