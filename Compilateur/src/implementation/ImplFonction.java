package implementation;



import ident.Fonction;
import ident.Type;

import java.util.Vector;

import main.ParseException;
import main.Yaka;

public class ImplFonction {
	
	private Vector<Fonction> fCourant = new Vector<Fonction>();
	private Vector<Integer> res = new Vector<Integer>();
	private Vector<String> SCourant =  new Vector<String>();
	private int fonccour = 1;
	private int courant = -1;
	
	public void retourne(/*Type t*/){
		/*Type f;
			f = Yaka.tabIdent.chercheGlobal(Yaka.tabIdent.last).resultat;
		if(t == f){*/
			Yaka.yvm.ireturn(Yaka.tabIdent.globaux.get(Yaka.tabIdent.last).nbParam()*2+4);
		/*}else{
			System.out.println("Incorect parameter Type in the fonction" + Yaka.tabIdent.last + " a la ligne " + 
					Yaka.token.next.beginLine + " et a la colonne " + Yaka.token.next.beginColumn);
		}*/
		Yaka.yvm.goTo("FINFONC" + fonccour);
	}

	
	public void fermeBloc (){
		
		Yaka.yvm.ichaine("FINFONC" + fonccour);
		fonccour++;
		Yaka.yvm.fermeBloc(Yaka.tabIdent.chercheGlobal(Yaka.tabIdent.last).nbParam()*2);
		
		//Pour tester l'ajout des paramètres et des fonctions dans TabIdent
		/*for (Entry<String, Ident> e : Yaka.tabIdent.locaux.entrySet()) {
			System.out.println(e.getKey() + " " + e.getValue().valeur);
		}
		for (Entry<String, Fonction> e : Yaka.tabIdent.globaux.entrySet()) {
			System.out.println(e.getKey() + " resultat : " + e.getValue().resultat +  " paramètres :  " + e.getValue().parametres.toString());
		}*/
		Yaka.tabIdent.videLocaux();
	}

	
	public void setFonction(Fonction f,String s){
		courant++;
		fCourant.add(courant,f);
		res.add(courant,0);
		SCourant.add(courant,s);
	
	}
	public void depile(){
		courant --;
	}
	
	public String nom(){
		return SCourant.get(courant);
		
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
