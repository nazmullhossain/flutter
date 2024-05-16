import '../controller/public_controller.dart';
 const String baseUrl = 'https://jsonplaceholder.typicode.com/posts';
double dSize(double size){
  return PublicController.pc.size.value*size;
}