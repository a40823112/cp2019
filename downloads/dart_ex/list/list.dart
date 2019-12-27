import "dart:html";
// 定義一個 C 轉 F 函式
C(num a){
 return ((9/5)*a+32); 
}
// 定義一個 F 轉 C 函式
F(num a){
return (a - 32)*5/9;
} 
// 宣告 len 整數變數, 準備設為各字串的長度
int len;
// 宣告 var 變數 type, 準備設為各字串最後一個字元, 可能為 C 或 F
var type;
// 宣告 var 變數 number, 準備設為各字串中的數字
var number;
// 透過HTML,取得使用者輸入的溫度值
InputElement tempInput = querySelector("#F"); 
// 將轉換結果顯示在output
LabelElement output = querySelector("#output");
void main() {
   //按下按鈕後推送數值
  querySelector("#submit").onClick.listen((e) => calcRabbits(tempInput.value));
}
 calcRabbits(String string){
  len =  string.length;
  // 取得各筆資料的最後一個字元
  type = string[len-1];
  // 根據溫度類別轉給對應函式進行溫度轉換
  number = string.substring(0, len-1);
  // 由於取得的 number 為字串, 必須設法轉為數字 
  number = int.parse(number);
  // 之後就可以根據 type 與 number 執行各數列元素的溫度轉換 
    if(type=="C"){
      output.innerHtml ="攝氏$number度=華氏${C(number).toStringAsFixed(3)}度";
    }
  else if(type=="F"){
     output.innerHtml ="華氏$number度=攝氏${F(number).toStringAsFixed(3)}度";
    }
  else {
     output.innerHtml ="請輸入數字加上 C 或 F!";
}
}
/*
當最後一個字元為C時,推送C的數值 
當最後一個字元為F時,推送F的數值  
都不是時,推送請輸入數字加上 C 或 F!
*/
