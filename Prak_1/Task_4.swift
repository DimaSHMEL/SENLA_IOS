import Foundation

let n = 100;
var Mas = Array<Int>(2...n);
var p = 2;
var ind = 0;
while p + p < n
{
  var shag : Int = p + p;
  for _ in 2 + p...n 
  {
    if(Mas.contains(shag))
    {
      Mas.remove(at: Int(Mas.firstIndex(of: shag)!));
    }
    shag += p;
  }
  
  ind += 1;
  if(ind < Mas.count)
  {
    p = Mas[ind];
  }
}
print(Mas)