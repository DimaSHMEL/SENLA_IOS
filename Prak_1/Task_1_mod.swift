struct X
{
    let X1 : Double, X2 : Double;
}

func squre_math(a : Double, b : Double, c : Double) -> String
{
    let D = b*b - 4 * a * c;
    let D_sqr = D.squareRoot();
    if(D == 0.0) 
    {
        let X1 = (-b / (2*a));
        return "X1 = " + String(X1);
    }
    else if (D > 0.0)
    {
        let X1 = (-b + D_sqr)/(2*a), X2 = (-b - D_sqr)/(2*a);
        return "X1 = " + String(X1) +
                " X2 = " + String(X2);
    }
    return "Diskrimenant below 0"
}
func squre_math_X(a : Double, b : Double, c : Double) -> X
{
    let D = b*b - 4 * a * c;
    let D_sqr = D.squareRoot();
    let answ : X;
    if(D == 0.0) 
    {
        let X1 = (-b / (2*a));
        answ = X(X1 : X1, X2 : 0.0);
        return answ;
    }
    else if (D > 0.0)
    {
        let X1 = (-b + D_sqr)/(2*a), X2 = (-b - D_sqr)/(2*a);
        answ = X(X1 : X1, X2 : X2);
        return answ;
    }
    answ = X(X1 : 0.0, X2 : 0.0);
    return answ
}

print(squre_math(a : 1.0, b : -4.0, c: 3.0));
print(squre_math_X(a : 1.0, b : -4.0, c: 3.0));