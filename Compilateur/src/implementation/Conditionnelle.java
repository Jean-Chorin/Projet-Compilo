package implementation;

import java.util.Stack;

import main.*;
import ident.*;

public class Conditionnelle {
	//Attribut : pile -> Pile servant � calculer la profondeur des conditionnelles
	private Stack<Integer> pile = new Stack<Integer>();
	//Attribut : compteur -> Int servant � num�roter les conditionnelles
	private int compteur = 0;

//�crit le iffaux, v�rifie si l'expression ren dbien un booleen dans le si
public void condition(Type t){
	compteur++;
	pile.push(compteur);
	if(t != Type.BOOLEEN){
		System.out.println("On attend un boolean dans les conditions" + " a la ligne " + 
				Yaka.token.beginLine + " et a la colonne " + Yaka.token.beginColumn);
	}
	Yaka.yvm.iffaux("SINON" + compteur);
}

//�crit le sinon
public void sinon(){
	int tampon =  pile.pop();
	Yaka.yvm.goTo("FSI" + tampon);
	Yaka.yvm.ichaine("SINON" + tampon);
	pile.push(tampon);
}

//�crit le fsi
public void fin(){
	int tampon =  pile.pop();
	Yaka.yvm.ichaine("FSI" + tampon);
}

}