package ident;

public abstract class Ident {
	
	public Type type;
	public int valeur;
	
	//Constructeur d'Ident
	public Ident(Type t, int v){
		super();
		type = t;
		valeur = v;
	}
	
	public Ident() {
		super();
	}
	
	//getValeur rend la valeur de l'Ident passé en param
	public int getValeur() {
		return valeur;
	}
}
