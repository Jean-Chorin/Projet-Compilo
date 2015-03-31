package ident;

import java.util.*;

import main.*;


public class TabIdent {

	public Map<String, Ident> locaux;
	public Map<String, Fonction> globaux;
	public String last = null;

	//Constructeur de TabIdent
	public TabIdent(){
		locaux = new HashMap<String, Ident>();
		globaux = new HashMap<String, Fonction>();
	}
	
	//chercheIdent : rend l'ident en passant sa clef en paramètre
	//une fonction pour chaque tabIdent
	//Locaux :
	public Ident chercheLocal (String clef)throws ParseException{
		if (locaux.get(clef) == null) {
			throw new ParseException("Ident " + clef + " non déclaré\n");
		} else {
			return locaux.get(clef);
		}
	}
	//Globaux :
	public Fonction chercheGlobal (String clef){
		if (globaux.get(clef) == null) {
			System.out.println("Ident " + clef + " non déclaré\n");
			return null;
		} else {
			return globaux.get(clef);
		}
	}
	//ChercheIdent:
	public Object chercheIdent (String clef)throws ParseException{
		if (locaux.get(clef) == null) {
			if(globaux.get(clef) == null){
			throw new ParseException("Ident " + clef + " non déclaré\n");}
			else{
				return globaux.get(clef);
				}
		} else {
			return locaux.get(clef);
		}
	}
	
	
	//existeIdent : rend vrai si table contient la clef
	//Locaux :
	public boolean existeLocal(String clef){
		return locaux.containsKey(clef);
	}
	//Globaux :
	public boolean existeGlobal(String clef){
		return globaux.containsKey(clef);
	}
	
	//rangeIdent : ajoute l'ident et sa clef à la table si ils n'y sont pas
	//Locaux
	public void rangeLocal(String clef,Ident id)throws ParseException{
		if(!existeLocal(clef)){
			locaux.put(clef,id);
			last = clef;
		}else{
			throw new ParseException(); 
		}
	}
	//Globaux
	public void rangeGlobal(String clef,Fonction id) throws ParseException{
		if(!existeGlobal(clef)){
			globaux.put(clef,id);
		}else{
			throw new ParseException(); 
		}
	}
	
	//videLocaux : remet la table locaux à zero
	public void videLocaux(){
		locaux.clear();
	}
}
