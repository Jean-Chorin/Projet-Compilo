package implementation;

import ident.*;
import main.ParseException;
import main.Yaka;

public class ImplFonction {
	
	
	public void retourne(Type t){
		Type f;
			f = Yaka.tabIdent.chercheGlobal(Yaka.tabIdent.last).resultat;
		if(t == f){
			Yaka.yvm.ireturn(Yaka.tabIdent.globaux.get(Yaka.tabIdent.last).nbParam()*2+4);
		}else{
			System.out.println("Incorect parameter Type in the fonction" + Yaka.tabIdent.last + " a la ligne " + 
					Yaka.token.next.beginLine + " et a la colonne " + Yaka.token.next.beginColumn);
		}
	}
	
	//public void fermeBloc (){
	
	//}

	
}
