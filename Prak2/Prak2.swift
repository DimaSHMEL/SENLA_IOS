import Foundation
protocol Auto
{
  var engine : String {get set}
  var working : Bool {get set}
  var zavod : String {get set}
  func ride()
  func upgrade()
}
class Sedan : Auto
{
  var engine : String;
  var working : Bool;
  var zavod : String;
  init(engine : String, working : Bool, zavod: String)
  {
    self.engine = engine;
    self.working = working;
    self.zavod = zavod;
  }
  func ride()
  {
    print("wrooom");
  }
  func upgrade()
  {
    self.engine = "V8";
    self.working = true;
  }
  func openRoof()
  {
    print("roof open")
  }
}
class Truck : Auto
{
  var engine : String;
  var working : Bool;
  var zavod: String;
  init(engine : String, working : Bool, zavod: String)
  {
    self.engine = engine;
    self.working = working;
    self.zavod = zavod;
  }
  func ride()
  {
    print("wrooom");
  }
  func upgrade()
  {
    self.engine = "V16";
    self.working = true;
  }
  func climb()
  {
    print("climb")
  }
}
class Sportcar : Auto
{
  var engine : String;
  var working : Bool;
  var zavod: String;
  init(engine : String, working : Bool, zavod: String)
  {
    self.engine = engine;
    self.working = working;
    self.zavod = zavod;
  }
  func ride()
  {
    print("wrooom");
  }
  func upgrade()
  {
    self.engine = "V16M4";
    self.working = true;
  }
  func zoom()
  {
    print("vzooom");
  }
}
class AutoZavod
{
  private var se_count : Int = 0;
  private var tr_count : Int = 0;
  private var sp_count : Int = 0;
  private var all : Int = 0;
  public init(){}
  public func makeSedan() -> Sedan
  {
    self.se_count += 1;
    self.all += 1;
    return Sedan(engine: "V4", working : true, zavod : "AvtoVaz");
  }
  public func makeTruck() -> Truck
  {
    self.tr_count += 1;
    self.all += 1;
    return Truck(engine: "V8", working : true, zavod : "AvtoVaz");
  }
  public func makeSportcar() -> Sportcar
  {
    self.sp_count += 1;
    self.all += 1;
    return Sportcar(engine: "V16", working : true, zavod : "AvtoVaz");
  }
  public func makeAuto(type : Int) -> (Se : Sedan?, Tr : Truck?, Sp : Sportcar?)
  {
    switch(type)
    {
      case 0:
        return(makeSedan(), nil, nil);
      case 1: 
        return(nil, makeTruck(), nil);
      default:
        return(nil, nil, makeSportcar());
    }
  }
  public func countCars()
  {
    print("Sedan_count " + String(self.se_count));
    print("Truck_count " + String(self.tr_count));
    print("SportCar_count " + String(self.sp_count));
    print("AllCars_count " + String(self.all));
  }
}

var AutoVaz = AutoZavod();
var Lada =  AutoVaz.makeAuto(type: 0).Se!;
Lada.ride();
Lada.openRoof();
var Kamaz = AutoVaz.makeAuto(type: 1).Tr!;
Kamaz.ride();
Kamaz.climb();
var Sport = AutoVaz.makeAuto(type: 3).Sp!;
Sport.ride();
Sport.zoom();
AutoVaz.countCars();
