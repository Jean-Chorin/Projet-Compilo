package implementation;

import ident.*;
import main.*;

public class Declaration {
	private int offsetCompteur; //
	private Type type; //bool�en ou entier => voir l'enum. Valeur mise en m�moire obligatoirement, sinon on ne sait pas si on a un booleen ou entier
	
	public Declaration() {
		super();
		offsetCompteur = -2;
	}
	
	//cr�ation d'une constante bool�enne de type t
	public void addConst(String nom , Type t , String valeur) throws ParseException{
		if (existeIdent(nom)) {
			throw Yaka.generateParseException();
		}
		Yaka.tabIdent.rangeIdent(nom , new IdConst(nom , t , valeur));
	}
	
	//change le type des prochaines valeurs entr�es en t
	public void setType(Type t) {
		type = t;
	}
	
	//ajoute un Ident de nom "nom" et de type Declaration.type 
	public void addIdent(String nom) throws ParseException{
		if (existeIdent(nom)) {
			throw Yaka.generateParseException();
		}
		Yaka.tabIdent.rangeIdent(nom , new IdVar(nom , t , offsetCompteur));
		offsetCompteur -= 2;
	}

}
