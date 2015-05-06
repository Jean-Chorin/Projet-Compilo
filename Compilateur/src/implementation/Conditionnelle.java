package implementation;

import java.util.Stack;

import main.*;
import ident.*;

public class Conditionnelle {
	//Attribut : pile -> Pile servant à calculer la profondeur des conditionnelles
	private Stack<Integer> pile = new Stack<Integer>();
	//Attribut : compteur -> Int servant à numéroter les conditionnelles
	private int compteur = 0;

//écrit le iffaux, vérifie si l'expression ren dbien un booleen dans le si
public void condition(Type t){
	compteur++;
	pile.push(compteur);
	if(t != Type.BOOLEEN){
		System.out.println("On attend un boolean dans les conditions" + " a la ligne " + 
				Yaka.token.beginLine + " et a la colonne " + Yaka.token.beginColumn);
	}
	Yaka.yvm.iffaux("SINON" + compteur);
}

//écrit le sinon
public void sinon(){
	int tampon =  pile.pop();
	Yaka.yvm.goTo("FSI" + tampon);
	Yaka.yvm.ichaine("SINON" + tampon);
	pile.push(tampon);
}

//écrit le fsi
public void fin(){
	int tampon =  pile.pop();
	Yaka.yvm.ichaine("FSI" + tampon);
}

}