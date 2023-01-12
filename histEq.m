function imgResult = histEq(img)
    imgResult = img;
    cntPixel(1:256) = 0;
    binSize = numel(img) / 256;
    totalSize = 0;
    for ii = 1:256
        cntPixel(ii) = numel(img(img==ii-1));
    end

    cumCntPixel = cumsum(cntPixel);
    lastIdx = 0;
    for ii = 1:256
        totalSize = totalSize + binSize;
        if (cumCntPixel(ii) >= totalSize)
            for j = lastIdx+1:1:ii
                imgResult(img==j-1) = ii-1;
                fprintf("%d -> %d\n", j-1, ii-1);
            end
            lastIdx = ii;
        end
    end
end