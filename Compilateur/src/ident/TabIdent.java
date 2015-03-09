package ident;

import java.util.*;


public class TabIdent {

	public Map<String, Ident> table;
	
	//Constructeur de TabIdent
	public TabIdent(){
		table = new HashMap<String, Ident>();
	}
	
	//chercheIdent : rend l'ident en passant sa clef en paramètre
	public Ident chercheIdent (String clef){
		return table.get(clef);
	}
	
	
}
