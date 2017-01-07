function [bands, qsthr] = initBands(frameType)
%INITBANDS Returns the band ranges and the thresholds in quiet.
%   BANDS = INITBANDS(FRAMETYPE) will store only the bands in BANDS according to
%   frame type FRAMETYPE.
%   [BANDS, QSTHR] = INITBANDS(FRAMETYPE) will also store the quiet thresholds
%   in QSTHR.

isESH = strcmp(frameType, 'ESH');
% Each array ends with the upper limit (w_high) of the last band.
if isESH
    % Bands for short frames, 48kHz. B.2.1.9.b.
    bands = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 21, 23, 25, 27, ...
        29, 31, 34, 37, 40, 43, 46, 50, 54, 58, 63, 68, 74, 80, 87, 95, 104, 114, 126, 128];
    if nargout > 1
        qsthr = [27.28, 22.28, 14.28, 12.28, 12.28, 12.28, 12.28, 12.28, 12.28, 12.28, 12.28, ...
            12.28, 12.28, 12.28, 12.28, 12.28, 12.28, 15.29, 15.29, 15.29, 15.29, 15.29, 15.29, ...
            15.29, 17.05, 20.05, 20.05, 20.05, 22.05, 23.30, 28.30, 28.30, 29.27, 39.27, 40.06, ...
            40.06, 50.73, 51.31, 51.82, 52.28, 53.07, 53.07];
    end
else
    % Bands for long frames, 48kHz. B.2.1.9a.
    bands = [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 41, 44, ...
        47, 50, 53, 56, 59, 62, 66, 70, 74, 78, 82, 87, 92, 97, 103, 109, 116, 123, 131, 139, ...
        148, 158, 168, 179, 191, 204, 218, 233, 249, 266, 284, 304, 325, 348, 372, 398, 426, ...
        457, 491, 528, 568, 613, 663, 719, 782, 854, 938, 1024];
    if nargout > 1
        qsthr = [40.29, 40.29, 35.29, 35.29, 32.29, 32.29, 27.29, 27.29, 27.29, 25.29, 25.29, ...
            25.29, 25.29, 25.29, 25.29, 25.29, 25.29, 25.29, 25.29, 27.05, 27.05, 27.05, 27.05, ...
            27.05, 27.05, 27.05, 27.05, 28.30, 28.30, 28.30, 28.30, 28.30, 29.27, 29.27, 29.27, ...
            30.06, 30.06, 30.73, 30.73, 31.31, 31.31, 31.82, 32.28, 32.28, 32.69, 33.07, 33.42, ...
            33.74, 34.04, 34.32, 34.58, 34.83, 38.29, 38.50, 38.89, 41.08, 41.43, 41.75, 47.19, ...
            47.59, 47.96, 58.30, 58.81, 69.27, 69.76, 70.27, 70.85, 71.52, 70.20];
    end
end
bands = bands + 1;
end