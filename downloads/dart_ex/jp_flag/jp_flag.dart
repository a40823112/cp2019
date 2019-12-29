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


  querySelector("#jp").onClick.listen((e) => drawJapan(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawJapan(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.beginPath();
  ctx.arc(150, 100, 60, 0,  Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = 'rgb(188, 0, 45)';
  ctx.fill();

}


void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
