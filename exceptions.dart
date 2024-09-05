import 'dart:io';

class DivisionByZeroException implements Exception{
  String errorMessage(){
    return'Error:Division by zero is not allowed.';

  }
}
double divide(int numerator,int denominator){
  if (denominator ==0){
    throw DivisionByZeroException();
 }
 return numerator/denominator;
}
void main(){
  int numerator =10;
  int denominator =5;
  try{

    double result=divide(numerator, denominator);
    print('the result is $result');

  }on DivisionByZeroException catch(e){
    print(e.errorMessage());

  }catch (e){
    print('an unexpected error occurred:$e');

  }finally{
    print('division attemt completed');

  }
}