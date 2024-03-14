class Area{
  //properties
  double length;
  double width;
//constructor
Area(this.length,this.width);
//Method to calculate
double calculateArea(){
  return length*width;
}

}
void main (){
// calculate an instance of an area class
var rectangle=Area(9, 5);
print({rectangle.calculateArea()});
//rectangle.calculateArea();
}