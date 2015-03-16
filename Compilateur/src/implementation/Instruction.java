package implementation;

import ident.Ident;
import ident.Type;
import main.ParseException;
import main.Yaka;
import main.YakaTokenManager;



public class Instruction {
	
	// ecriture() pour le cas d'une expression
	public void ecrire(Type t) throws ParseException{
		if(t == Type.BOOLEEN){
			Yaka.yvm.ecrireBool();
		}
		if(t == Type.ENTIER){
			Yaka.yvm.ecrireEnt();
		}
	}
	
	// ecriture() pour le cas d'une chaine
	public void ecrireChaine(String ident){
		Yaka.yvm.ecrireChaine(ident);
	}
	
	// ecriture() pour le cas d'un retour a la ligne
	public void aLaligne(){
		Yaka.yvm.aLaLigne();
	}
	
	// lecture()
	public void lireEnt(String ident) throws ParseException{
		Ident id = Yaka.tabIdent.chercheIdent (ident);
		Yaka.yvm.lireEnt(id.valeur);
	}
	
}