void main(List<String> args){
  defult_value();
  late_variables();
  final_const();
}

void defult_value(){
  int LineCount = 0;
  assert(LineCount == 0);
  assert(LineCount != 1);
}

void late_variables(){
  late String description;
  description = 'Feijoada!';
  print(description);
}

void final_const(){
  final name = 'Bob';
  final String nickname = 'Bobby';
  //name = 'Alice'; // can't change this final变量
  const bar = 100000;
  const double atm = 1.01325*bar;
  var foo = const [];
  //final bar = const [];//bar已经用const命名过了哦
  const baz = []; 
  foo = [1, 2, 3];//非const、final命名的可以赋值
  print(name);
}