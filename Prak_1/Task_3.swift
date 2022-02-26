import Foundation

func fibi(_ mas : inout [Int])
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

var Mas = [Int]();
let n = 10;
for _ in 0...n
{
    fibi(&Mas);
}
if !Mas.isEmpty
{
    print(Mas);
}
