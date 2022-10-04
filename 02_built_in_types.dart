void main(List<String> args){
numbers_type();
string_type();
bool_type;
}
void numbers_type(){
  var x = 1;
  var y = 1.1;
  //x+=2.5;//一整个大错误，浮点类型和int类型不能混着处理
  double z= 1;
  y+=2.5;
  print(z);
  print(y);//一整个大正确
  var one = int.parse('1');
  assert(one == 1);
  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
  print(3 << 1); // 0011 << 1 == 0110，二进制移位操作
}


void string_type(){
  var s1 = 'i love study!';
  var s2 = "i don't love study!";//单引号双引号都可以定义string类型的东西
  var s3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';//比如中文的句号
  //print(s1);
  //print(s2);
  assert('Dart has $s1, which is very handy.' ==
    'Dart has string interpolation, '
        'which is very handy.');
  var s4 = '可以拼接'
    '字符串'
    "即便它们不在同一行。";
  assert(s4 == '可以拼接字符串即便它们不在同一行。');
  var s5 = 'happy';
  assert('i am $s5 every day' == 'i am happy every day');//$加上字符串可以在句子中输出该字符串内容
  var s6 = 'The + operator ' + 'works, as well.';
  assert(s6 == 'The + operator works, as well.');//+可以连接两个字符串
  var s7 = '''
  我
  是
  好人
  ''';//三个单引号、三个双引号也可以创建字符串
  print(s7);
  var s8 = r'你看我的\n意思是直接输出而不是转行哦';//嗯，如输出所示
  print(s8);
}

void bool_type(){
  // Check for an empty string.
var fullName = '';
assert(fullName.isEmpty);

// Check for zero.
var hitPoints = 0;
assert(hitPoints <= 0);

// Check for null.
var unicorn;
assert(unicorn == null);

// Check for NaN.
var iMeantToDoThis = 0 / 0;
assert(iMeantToDoThis.isNaN);
}