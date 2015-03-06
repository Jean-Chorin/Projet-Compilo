package ident;

public class Ident {

	public enum Type {
		bool,
		entier,
		erreur;
	}
	
	public String nom;
	public Type type;
	public int valeur;
}
