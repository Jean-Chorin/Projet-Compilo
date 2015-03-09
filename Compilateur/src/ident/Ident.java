package ident;

public abstract class Ident {
	
	public Type type;
	public int valeur;
	
	public Ident(Type t, int v){
		super();
		type = t;
		valeur = v;
	}
	
	public Ident() {
		super();
	}
}
