# Reported by B.Sambale on 12/24/22 in the forum
gap> G:=Group([(1,2,3,4,5)(6,8,7),
> (9,10,12,17,11,15)(13,19,28,38,50,45)(14,21,26,24,23,
> 16)(18,27,35,46,42,36)(20,30,25,34,44,51)(22,32,41,29,39,47)(31,37,49,55,
>     54,48)(33,43,53,40,52,56), (9,11,16,24)(10,13,14,20)(12,18,21,31)(15,22,
> 23,33)(17,25,26,28)(19,29,30,40)(27,36,37,48)(32,42,43,54)(34,45,38,
>     51)(35,47,49,56)(39,41,52,53)(44,46,50,55),
> (10,14)(13,20)(15,23)(17,26)(22,33)(25,28)(27,37)(36,48)(39,52)(41,53)(44,
>     50)(46,55) ]);;
gap> SetAssertionLevel(0);
gap> IsomorphismGroups(G,G)<>fail;
true
