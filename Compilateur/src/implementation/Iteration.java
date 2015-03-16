package implementation;

import java.util.Stack;

import main.Yaka;
import ident.*;

public class Iteration {
	private Stack<Integer> niv;
	private int nivMax;
	
	public Iteration() {
		niv = new Stack<Integer>();
		nivMax = 0;
	}
	
	public void tantque() {
		nivMax++;
		niv.push(nivMax);
		Yaka.yvm.tantque(nivMax);
	}
	
	public void iffaux(Type t) {
		if(t == Type.BOOLEEN){
			Yaka.yvm.iffaux(000000000000000);
		}else{
			System.out.println("Veuillez passer une expression bolleenne sue laquelle iterer");
		}
	}
	
	public void fait() {
		
	}
}
