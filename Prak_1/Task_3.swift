import Foundation

func fibi(_ mas : inout [Int], number : Int)
{
    for _ in 0...number
    {
        if( mas.count <= 1)
        {
            mas.append(1)
        }
        else
        {
            let add = mas[mas.count - 1] + mas[mas.count - 2];
            mas.append(add);
        }
    }
}

var Mas = [Int]();
let n = 10;
fibi(&Mas, number : n);
if !Mas.isEmpty
{
    print(Mas);
}
