import "dart:html";

kgtolb(num kg){
return kg*2.204;
}

lbtokg(num lb){
return lb*0.4535;
}

main() {
    // 透過表單, 取得使用者輸入的溫度值, 語法為數字加上 C 或 F
    InputElement tempInput = querySelector("#temp");
    querySelector("#submit").onClick.listen((e) => convert(tempInput.value));
}

convert(String data){
  int len;
  var type;
  var number;
  LabelElement output = querySelector("#output");
  len = data.length;
  type = data[len-2];
  number = data.substring(0, len-2);
  number = int.parse(number);
  if (type == "k" || type == "k"){
     output.innerHtml = " $number 公斤 =  ${kgtolb(number).toStringAsFixed(2)} 磅";
  } else if ((type == "l" || type == "l")){
     output.innerHtml = " $number 磅 =  ${lbtokg(number).toStringAsFixed(2)} 公斤";
  } else {
     output.innerHtml = "請輸入數字加上 kg 或 lb!";
  }
} 
