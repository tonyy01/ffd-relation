function[I] = findrelation(interactiveFact, interaction)
    nInteractiveFact = length(interactiveFact);
    I1 = repelem("0", nInteractiveFact);
    for i = 1:nInteractiveFact
        I1(i) = join([interaction(i), interactiveFact(i)], "");
    end
    I = I1;
    for j = 2:nInteractiveFact
        comb = join(nchoosek(I1, j), "");
        nComb = length(comb);
        Ij = repelem("0", nComb);
        for k = 1:nComb
            combK = char(comb(k));
            nCombK = length(combK);
            nAppear = zeros(1, nCombK);
            for l = 1:nCombK
                nAppear(l) = count(combK, combK(l));
            end
            combK(nAppear>1) = [];
            Ij(k) = sort(combK);
        end
        I = [I, Ij];
    end
end
