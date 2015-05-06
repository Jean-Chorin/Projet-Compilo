package implementation;



import ident.Fonction;
import ident.Type;

import java.util.Vector;

import main.ParseException;
import main.Yaka;

public class ImplFonction {
	//pile de fonction appellée
	private Vector<Fonction> fCourant = new Vector<Fonction>();
	//pile du nombre de parametre passer à la fonction appellée
	private Vector<Integer> res = new Vector<Integer>();
	//pile du nom des fonction appellée
	private Vector<String> SCourant =  new Vector<String>();
	//pour les jumps après les retournes
	private int fonccour = 1;
	//indice de la fonction courante dans la pile
	private int courant = -1;
	//nom de la fonction qu'on déclare
	private String declarefonc;
	
	//vérifie si le parametre de retour correspond au parametre indiqué dans la fonction et écrit via yvm
	public void retourne(Type f){
		
			Type t = Yaka.tabIdent.chercheGlobal(declarefonc).resultat;
		if(t == f){
			Yaka.yvm.ireturn(Yaka.tabIdent.globaux.get(Yaka.tabIdent.last).nbParam()*2+4);
			Yaka.yvm.goTo("FINFONC" + fonccour);
		}else{
			System.out.println("Incorect parameter Type in the fonction" + Yaka.tabIdent.last + " a la ligne " + 
					Yaka.token.next.beginLine + " et a la colonne " + Yaka.token.next.beginColumn);
		}

	}
	//ajoute le nom de la fonction que l'on déclare
	public void add(String s){
		declarefonc = s;
		
	}
	
	//fin de la fonction courante. Vide les idents locaux
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

	//lorsque l'on appel une fonction, elle est initialisée, avec elle et son nom
	public void setFonction(Fonction f,String s){
		courant++;
		fCourant.add(courant,f);
		res.add(courant,0);
		SCourant.add(courant,s);
	
	}
	
	//Quand on a fini avec l'appel de la fonction
	public void depile(){
		courant --;
	}
	
	//récupere le nom d ela fonction courante
	public String nom(){
		return SCourant.get(courant);
	}
	

	
	//Test le nombre de parametre et le type de parametre
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
