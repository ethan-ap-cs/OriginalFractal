public void setup(){
	size(800,800);
}
public void draw(){
	strokeWeight(4);
	fractal(400,400,700);
}
public void fractal(int x, int y, int len){
	if (len<10){
		ellipse(x, y, len, len);
	}
	else{
		ellipse(x, y, len, len);
		fractal(700-x, y, len/2);
	}
}