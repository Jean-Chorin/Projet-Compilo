package implementation;

import java.util.Stack;

import main.Yaka;
import ident.*;

public class Iteration {
	private Stack<Integer> niv;
	private int nivMax;
	
	//Constructeur d'Iteration
	public Iteration() {
		niv = new Stack<Integer>();
		nivMax = 0;
	}
	
	//Ecriture du tantque
	public void tantque() {
		nivMax++;
		niv.push(nivMax);
		Yaka.yvm.tantque(nivMax);
	}
	
	//Ecriture du iffaux
	public void iffaux(Type t) {
		if(t == Type.BOOLEEN){
			Yaka.yvm.iffaux("FAIT"+niv.peek());
		}else{
			System.out.println("Veuillez passer une expression bolleenne sue laquelle iterer; ligne " +
					Yaka.token.beginLine + " et colonne " + Yaka.token.beginColumn);
		}
	}
	
	//Ecriture du fait
	public void fait() {
		int n= niv.pop();
		Yaka.yvm.goTo("FAIRE" + n);
		Yaka.yvm.fait(n);
	}
}
