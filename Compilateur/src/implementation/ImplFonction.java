package implementation;


import ident.*;
import main.ParseException;
import main.Yaka;

public class ImplFonction {
	
	private Fonction fCourant;
	private int res = 0;
	
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
