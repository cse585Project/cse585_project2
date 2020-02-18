function [left,right] = pairMatch13(index1, index3)
% index1 index of match1.gif
% index3 index of match3.gif
switch index1
    case 1
        left = 'clover';
    case 2
        left = 'steer';
    case 3
        left = 'airplane';
    case 4
        left = 'clubs';
end
switch index3
    case 1
        right = 'clover';
    case 2
        right = 'steer';
    case 3
        right = 'clubs';
    case 4
        right = 'airplane';    
end

end