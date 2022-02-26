import Foundation
struct X
{
    let X1 : Double, X2 : Double, X3 : Double;
}

func cube_math(a : Double,  b :  Double, c : Double, d: Double) -> X?
{
    let A = b / a, B = c / a, C = d / a;
    let Q = (A * A - 3.0 * B) / 9.0;
    let R = (2 * pow(A, 3) - 9 * A * B + 27 * C) / 54.0;
    var X1, X2, X3 : Double;
    let answ : X;
    if(pow(R, 2) < pow(Q,3) )
    {
        let t = acos(R/pow(Q, 1.5))/3.0;
        X1 = -2 * sqrt(Q) * cos(t) - A/3;
        X2 = -2 * sqrt(Q) * cos(t + Double.pi * 2.0/3.0) - A/3
        X3 = -2 * sqrt(Q) * cos(t - Double.pi * 2.0/3.0) - A/3
        answ = X(X1: X1, X2: X2, X3: X3)
        return answ;
    }
    else if pow(R, 2) >= pow(Q,3)
    {
        var A1 = 0.0;
        X1 = -A/3;
        guard (R == 0.0) else 
        {
             A1 = R/abs(R) * pow((abs(R) + sqrt(pow(R, 2) - pow(Q,3))), 1.0/3.0)
             let B1 = Q/A1;
             X1 += A1 + B1;
             answ = X(X1: X1, X2: 0, X3: 0)
             return answ; 
        }
        answ = X(X1: X1, X2: 0, X3: 0)
        return answ;
    }
    return nil;
}
print(cube_math(a : 1.0, b: 3, c: 3, d: 1.0));
