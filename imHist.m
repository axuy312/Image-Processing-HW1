function histR = imHist(img)
    histR(1:255) = 0;
    for ii = 1:255
        histR(ii) = numel(img(img==ii));
    end
    bar(histR);
end