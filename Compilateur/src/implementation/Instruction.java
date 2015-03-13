package implementation;

import ident.Ident;
import main.Yaka;
import main.YakaTokenManager;



public class Instruction {
	
	public void ecrireChaine(String ident){
		ident = YakaTokenManager.identLu;
	}
	
	public void aLaligne(){
		Yaka.yvm.aLaLigne();
	}
	
	public void lire(String ident){
		Ident id = Yaka.tabIdent.chercheIdent (ident);
		Yaka.yvm.lireEnt(id.valeur);
	}
	
}