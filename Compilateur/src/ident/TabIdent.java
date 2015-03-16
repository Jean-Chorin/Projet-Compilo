package ident;

import java.util.*;
import main.*;


public class TabIdent {

	public Map<String, Ident> table;
	
	//Constructeur de TabIdent
	public TabIdent(){
		table = new HashMap<String, Ident>();
	}
	
	//chercheIdent : rend l'ident en passant sa clef en paramètre
	public Ident chercheIdent (String clef)throws ParseException{
		if (table.get(clef) == null) {
			throw new ParseException("Ident " + clef + " non déclaré\n");
		} else {
			return table.get(clef);
		}
	}
	
	//existeIdent : rend vrai si table contient la clef
	public boolean existeIdent(String clef){
		return table.containsKey(clef);
	}
	
	//rangeIdent : ajoute l'ident et sa clef à la table si ils n'y sont pas
	public void rangeIdent(String clef,Ident id){
		if(!existeIdent(clef)){
			table.put(clef,id);
		}
	}
	
}
