function super = superposition(original,ske)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
for k = 1:size(ske, 1)
    for l = 1:size(ske, 2)
        if ske(k, l) == 1
            % the rgb value of red is [1, 0, 0]
            original(k, l, 1) = 1;
            original(k, l, 2) = 0;
            original(k, l, 3) = 0;
        end
    end
end
super = original;
end

