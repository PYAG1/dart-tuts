abstract class Appliance {
  void turnOn();
}

class WashingMachine extends Appliance{
  void turnOn(){
print("I am a washing mashing");
  }
}



 class  Refrigerator extends Appliance{
  void turnOn(){
print("I am a refirgerator");
  }
}
void main(){

List<Appliance> appliance = [WashingMachine(),Refrigerator()];
for (var element in appliance) {
element.turnOn();
  
}
}

//mark them as late to initialize them later