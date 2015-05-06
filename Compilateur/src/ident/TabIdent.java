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
	
	//chercheIdent : rend l'ident en passant sa clef en param�tre
	//une fonction pour chaque tabIdent
	//Locaux :
	public Ident chercheLocal (String clef)throws ParseException{
		if (locaux.get(clef) == null) {
			throw new ParseException("chercheLocal Ident " + clef + " non d�clar�\n");
		} else {
			return locaux.get(clef);
		}
	}
	//Globaux :
	public Fonction chercheGlobal (String clef){
		if (globaux.get(clef) == null) {
			System.out.println("chercheGlobal Ident " + clef + " non d�clar�\n");
			return null;
		} else {
			return globaux.get(clef);
		}
	}
	//ChercheIdent:
	public Object chercheIdent (String clef){
		if (locaux.get(clef) == null) {
			if(globaux.get(clef) == null){
				System.out.println("chercheIdent : Ident " + clef + " non d�clar�\n");
				return null;
			}
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
	
	//rangeIdent : ajoute l'ident et sa clef � la table si ils n'y sont pas
	//Locaux
	public void rangeLocal(String clef,Ident id){
		if(!existeLocal(clef)){
			locaux.put(clef,id);
		} else {
			System.out.println("Le param�tre " + clef + " est d�j� d�clar�");
		}
		
	}
	//Globaux
	public void rangeGlobal(String clef,Fonction id){
		if(!existeGlobal(clef)){
			globaux.put(clef,id);
			last = clef;
		} else {
			System.out.println("La fonction " + clef + " est d�j� d�clar�e ; ligne " +
					Yaka.token.beginLine + " et colonne " + Yaka.token.beginColumn);
		}
	}
	
	//videLocaux : remet la table locaux � zero
	public void videLocaux(){
		locaux.clear();
	}
}
