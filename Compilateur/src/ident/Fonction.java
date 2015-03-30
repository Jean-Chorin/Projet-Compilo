package ident;

import java.util.*;

public class Fonction {

	public Type resultat;
	public List<Type> parametres;
	
	public Fonction(Type r){
		resultat = r;
		parametres = new Vector<Type>();
	}
	
	public int nbParam(){
		return parametres.size();
	}
}
