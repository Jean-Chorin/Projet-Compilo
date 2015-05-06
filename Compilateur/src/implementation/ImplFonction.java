package implementation;



import ident.Fonction;
import ident.Type;

import java.util.Vector;

import main.ParseException;
import main.Yaka;

public class ImplFonction {
	//pile de fonction appell�e
	private Vector<Fonction> fCourant = new Vector<Fonction>();
	//pile du nombre de parametre passer � la fonction appell�e
	private Vector<Integer> res = new Vector<Integer>();
	//pile du nom des fonction appell�e
	private Vector<String> SCourant =  new Vector<String>();
	//pour les jumps apr�s les retournes
	private int fonccour = 1;
	//indice de la fonction courante dans la pile
	private int courant = -1;
	//nom de la fonction qu'on d�clare
	private String declarefonc;
	//si on est dans le main
	private boolean main = false;
	
	//v�rifie si le parametre de retour correspond au parametre indiqu� dans la fonction et �crit via yvm
	public void retourne(Type f){
		
			Type t = Yaka.tabIdent.chercheGlobal(declarefonc).resultat;
		if(t == f){
			Yaka.yvm.ireturn(Yaka.tabIdent.globaux.get(Yaka.tabIdent.last).nbParam()*2+4);
			Yaka.yvm.goTo("FINFONC" + fonccour);
		}else if(main){
			System.out.println("Retourne dans le principal interdit" + Yaka.tabIdent.last + " a la ligne " + 
					Yaka.token.beginLine + " et a la colonne " + Yaka.token.beginColumn);
		}
		else{
			System.out.println("Incorect parameter Type in the fonction" + Yaka.tabIdent.last + " a la ligne " + 
					Yaka.token.beginLine + " et a la colonne " + Yaka.token.beginColumn);
		}

	}
	//ajoute le nom de la fonction que l'on d�clare
	public void add(String s){
		declarefonc = s;
	}
	
	public void setMain(boolean b){
		main = b;
	}
	
	//fin de la fonction courante. Vide les idents locaux
	public void fermeBloc (){
		
		Yaka.yvm.ichaine("FINFONC" + fonccour);
		fonccour++;
		Yaka.yvm.fermeBloc(Yaka.tabIdent.chercheGlobal(Yaka.tabIdent.last).nbParam()*2);
		
		//Pour tester l'ajout des param�tres et des fonctions dans TabIdent
		/*for (Entry<String, Ident> e : Yaka.tabIdent.locaux.entrySet()) {
			System.out.println(e.getKey() + " " + e.getValue().valeur);
		}
		for (Entry<String, Fonction> e : Yaka.tabIdent.globaux.entrySet()) {
			System.out.println(e.getKey() + " resultat : " + e.getValue().resultat +  " param�tres :  " + e.getValue().parametres.toString());
		}*/
		Yaka.tabIdent.videLocaux();
	}

	//lorsque l'on appel une fonction, elle est initialis�e, avec elle et son nom
	public void setFonction(Fonction f,String s){
		courant++;
		fCourant.add(courant,f);
		res.add(courant,0);
		SCourant.add(courant,s);
	
	}
	
	//Quand on a fini avec l'appel de la fonction
	public void depile(){
		if(res.get(courant) < fCourant.get(courant).nbParam()-1){
			System.out.println("Pas assez de parametres" + " a la ligne " + 
					Yaka.token.beginLine + " et a la colonne " + Yaka.token.beginColumn);
		}
		courant --;
	}
	
	//r�cupere le nom d ela fonction courante
	public String nom(){
		return SCourant.get(courant);
	}
	

	
	//Test le nombre de parametre et le type de parametre
	public void testParam(Type t){

		
		if(res.get(courant) >= fCourant.get(courant).nbParam()){
			System.out.println("Trop de parametres" + " a la ligne " + 
					Yaka.token.beginLine + " et a la colonne " + Yaka.token.beginColumn);
		}
		else if(t != fCourant.get(courant).parametres.get(res.get(courant))){
			System.out.println("Parametre pas du bon type" + " a la ligne " + 
					Yaka.token.beginLine + " et a la colonne " + Yaka.token.beginColumn);
		}
		res.add(courant,(res.get(courant))+1);
	}
	
	
}
