package implementation;

import ident.Ident;
import ident.Type;
import main.Yaka;
import main.YakaTokenManager;



public class Instruction {
	
	// ecriture() pour le cas d'une expression
	public void ecrire(String ident){
		Ident id = Yaka.tabIdent.chercheIdent (ident);
		if(id.type == Type.BOOLEEN){
			Yaka.yvm.ecrireBool();
		}
		if(id.type == Type.ENTIER){
			Yaka.yvm.ecrireEnt();
		}
	}
	
	// ecriture() pour le cas d'une chaine
	public void ecrireChaine(String ident){
		ident = YakaTokenManager.identLu;
		Yaka.yvm.ecrireChaine(ident);
	}
	
	// ecriture() pour le cas d'un retour a la ligne
	public void aLaligne(){
		Yaka.yvm.aLaLigne();
	}
	
	// lecture()
	public void lireEnt(String ident){
		Ident id = Yaka.tabIdent.chercheIdent (ident);
		Yaka.yvm.lireEnt(id.valeur);
	}
	
}