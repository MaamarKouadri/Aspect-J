package Project;
public privileged aspect AspectController{
	private static int id=0;
	declare parents: Rectangle implements Shape;

public String Rectangle.getName(){
	return "Rectangle";
	}

public String Rectangle.toString() {
	return this.getName()+"("+(int)this.width+", "+(int)this.height+")";
  }

double around(Rectangle r) : (execution(double Rectangle.getArea()) || execution(double Rectangle.getPerimeter())) && this(r) {
    if (r.width < 0 || r.height < 0) {
        return 0;
    }
    else {
        return proceed(r);
    }
}

declare parents: Circle implements Shape;
    
	public String Circle.getName(){
		return "Circle";
		}
	
	public String Circle.toString() {
		return this.getName()+"("+(int)this.radius+")";
	  }
	
	double around(Circle circle) :execution(* Circle.getArea())&&this(circle){
		return (circle.radius*circle.radius)*Math.PI;
	}
	
    double around(Circle c) : (execution(double Circle.getArea()) || execution(double Circle.getPerimeter())) && this(c) {
        if (c.radius < 0) {
            return 0;
        }
        else {
            return proceed(c);
        }
    }
	
	
	
	public int Circle.getId() {
		return id;
	  }
	
	
	public int Rectangle.getId() {
		return id;
	  }
	
	
	before() : (execution(Circle.new(..))||execution(Rectangle.new(..)))&& !within(AspectController) {
		id++;
    }	
	
	
}