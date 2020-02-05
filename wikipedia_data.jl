julia> articles, dictionary, titles = wikipedia_data();
julia> N = length(articles);
julia> k = 9;
julia> assignment, reps = kmeans(articles, k);
Iteration 1: Jclust = 0.008143702459413413.
Iteration 2: Jclust = 0.007436727270002902.
Iteration 3: Jclust = 0.0072025332925653805.
Iteration 4: Jclust = 0.007092462665149569.
Iteration 5: Jclust = 0.007004824817596477.
Iteration 6: Jclust = 0.006946504182270655.
Iteration 7: Jclust = 0.0069361288610571845.
Iteration 8: Jclust = 0.00692768960954958.
Iteration 9: Jclust = 0.006918786727642187.
Iteration 10: Jclust = 0.006911485656122732.
Iteration 11: Jclust = 0.006908919738110439.
Iteration 12: Jclust = 0.006907647034585236.
Iteration 13: Jclust = 0.006907461725980796.
Iteration 14: Jclust = 0.006907461725980796.
julia> d = [ norm(articles[i] - reps[assignment[i]]) for i = 1:N ];
julia> for j = 1:k
group = [ i for i=1:N if assignment[i] == j ]
println()
println("Cluster ", j, " (", length(group), " articles)")
I = sortperm(reps[j], rev=true)
println("Top words: \n ", dictionary[I[1:5]]);
println("Documents closest to representative: ")
I = sortperm(d[group])
for i= 1:5
println(" ", titles[group[I[i]]])
end
end
Cluster 1 (21 articles)
Top words:
["fight", "win", "event", "champion", "fighter"]
Documents closest to representative:
Floyd_Mayweather,_Jr.
Kimbo_Slice
Ronda_Rousey
Jose_Aldo
Joe_Frazier
4.4 Examples 39
Cluster 2 (43 articles)
Top words:
["holiday", "celebrate", "festival", "celebration", "calendar"]
Documents closest to representative:
Halloween
Guy_Fawkes_Night
Diwali
Hanukkah
Groundhog_Day
Cluster 3 (189 articles)
Top words:
["united", "family", "party", "president", "government"]
Documents closest to representative:
Mahatma_Gandhi
Sigmund_Freud
Carly_Fiorina
Frederick_Douglass
Marco_Rubio
Cluster 4 (46 articles)
Top words:
["album", "release", "song", "music", "single"]
Documents closest to representative:
David_Bowie
Kanye_West
Celine_Dion
Kesha
Ariana_Grande
Cluster 5 (49 articles)
Top words:
["game", "season", "team", "win", "player"]
Documents closest to representative:
Kobe_Bryant
Lamar_Odom
Johan_Cruyff
Yogi_Berra
Jose_Mourinho
Cluster 6 (39 articles)
