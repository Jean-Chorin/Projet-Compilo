package implementation;


import ident.Fonction;
import ident.Type;

import java.util.Vector;

import main.ParseException;
import main.Yaka;

public class ImplFonction {
	
	private Vector<Fonction> fCourant = new Vector<Fonction>();
	private Vector<Integer> res = new Vector<Integer>();
	private int courant = -1;
	
	public void retourne(Type t) throws ParseException{
		Type f;
			f = Yaka.tabIdent.chercheGlobal(Yaka.tabIdent.last).resultat;
		if(t == f){
			Yaka.yvm.ireturn(Yaka.tabIdent.globaux.get(Yaka.tabIdent.last).nbParam()*2+4);
		}else{
			System.out.println("Incorect parameter Type in the fonction" + Yaka.tabIdent.last + " a la ligne " + 
					Yaka.token.next.beginLine + " et a la colonne " + Yaka.token.next.beginColumn);
		}
	}
	
	public void fermeBloc () throws ParseException{
		Yaka.yvm.fermeBloc(Yaka.tabIdent.chercheGlobal(Yaka.tabIdent.last).nbParam()*2);
		Yaka.tabIdent.videLocaux();
	}

	
	public void setFonction(Fonction f){
		courant++;
		fCourant.add(courant,f);
		res.add(courant,0);
	
	}
	public void depile(){
		courant --;
	}
	
	public void testParam(Type t){

		
		if(res.get(courant) >= fCourant.get(courant).nbParam()){
			System.out.println("Trop de parametres" + " a la ligne " + 
					Yaka.token.next.beginLine + " et a la colonne " + Yaka.token.next.beginColumn);
		}
		else if(t != fCourant.get(courant).parametres.get(res.get(courant))){
			System.out.println("Parametre pas du bon type" + " a la ligne " + 
					Yaka.token.next.beginLine + " et a la colonne " + Yaka.token.next.beginColumn);
		}
		res.add(courant,(res.get(courant))+1);
	}
	
}
