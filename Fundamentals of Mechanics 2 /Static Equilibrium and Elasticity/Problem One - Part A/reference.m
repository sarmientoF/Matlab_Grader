function [T1, T2, T3] = TensionSuspendedBody(W, TH)
    % W: known force acting on for T3
    th_W = 360 - sum(TH);
    T1 = W/ sind(th_W) * sind(TH(1));
    T2 = W/ sind(th_W) * sind(TH(2));
    T3 = W; % Tension for the wire that suspends the body
end