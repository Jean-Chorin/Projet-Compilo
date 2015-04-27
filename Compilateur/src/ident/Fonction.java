package ident;

import java.util.*;

public class Fonction {

	//Atribut : resultat -> Type du resulat de la fonction
	public Type resultat;
	//Attribut : parametres -> Liste des Types de parametres de la fonction
	public List<Type> parametres;
	
	//Contructeur de Fonction
	public Fonction(Type r){
		resultat = r;
		parametres = new Vector<Type>();
	}
	
	//nbParam -> rend le nombre de parametres de la Fonction
	public int nbParam(){
		return parametres.size();
	}
}
