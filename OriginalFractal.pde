public void setup(){
	size(800,800);
}
public void draw(){
	strokeWeight(2);
	fractal(400,400,700);
}
public void fractal(int x, int y, int len){
	if (len<10){
		aTriangle(x, y, len);
	}
	else if (len == 700){
		aTriangle(0,800,800);
		fractal(x+len/6, y+len/3, len/3);
		fractal(x+len-len/6, y+len/3, len/3);
		fractal(x+x/3, y, -len/3);
	}
	else{
		aTriangle(x, y, len);
		fractal(x+len/6, y+len/3, len/3);
		fractal(x+len-len/6, y+len/3, len/3);
	}
}
public void aTriangle(int x, int y, int len){
	triangle(x, y, x + len, y, (x+len)/2, (y-len*sqrt(3)/2));
}