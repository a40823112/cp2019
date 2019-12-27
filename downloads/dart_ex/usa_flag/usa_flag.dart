import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');


  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawUSA(ctx){

  ctx.clearRect(0, 0, flag_w, flag_h);
  //紅色框
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  //白色條紋
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 15.4, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 46.2, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 77.2, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 108.0, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 138.8, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 169.6, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 200.4, flag_w / 1, flag_h / 13);
  //藍色部分
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 1.9);
  //星星部分
    num b = flag_h/18;
  ctx.font = "10px Arial";
  ctx.strokeStyle = 'rgb(255, 255, 255)';
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36,12);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*2);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*3);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*4);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*5);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*6);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*7);
   ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*8);
   ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*9);


}


void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
