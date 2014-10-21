% system composite-style utility function 

function J = rc_sysUtility(next_x)

global Q1
global q_max
q  = next_x(1);
y  = next_x(2);
ec = next_x(3);

x1 = ec*ec;
x2 = y*y;
x3 = q;
if(q>q_max)
    x3 = 0;
end
temp(1) = x1;
temp(2) = x2;
temp(3) = x3;

costMatrix = temp * Q1;

J(1) =  min (min(costMatrix));

