package implementation;

import main.Yaka;
import ident.*;

public class ImplFonction {
	private Fonction fCourant;
	private int res = 0;
	
	
	public void setFonction(Fonction f){
		fCourant = f;	
		res=0;
	}
	
	public void testParam(Type t){
		if(res >= fCourant.nbParam()){
			System.out.println("Trop de parametres" + " a la ligne " + 
					Yaka.token.next.beginLine + " et a la colonne " + Yaka.token.next.beginColumn);
		}
		else if(t != fCourant.parametres.get(res)){
			System.out.println("Parametre pas du bon type" + " a la ligne " + 
					Yaka.token.next.beginLine + " et a la colonne " + Yaka.token.next.beginColumn);
		}
		res++;
	}
	
}
