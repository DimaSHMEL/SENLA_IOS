func squre_math_X(a : Double, b : Double, c : Double) -> [Double]
{
    let D = b*b - 4 * a * c;
    let D_sqr = D.squareRoot();
    var answ:  [Double] = [0.0];
    if(D == 0.0) 
    {
        let X1 = (-b / (2*a));
        answ = [X1];
        return answ;
    }
    else if (D > 0.0)
    {
        let X1 = (-b + D_sqr)/(2*a), X2 = (-b - D_sqr)/(2*a);
        answ = [X1, X2]
        return answ;
    }
    return answ
}
let x = squre_math_X(a : 1.0, b : -4.0, c: 3.0)
print(x);
