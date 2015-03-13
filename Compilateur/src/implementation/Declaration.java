package implementation;

import ident.*;
import main.*;

public class Declaration {
	private int offsetCompteur; //
	private Type type; //booléen ou entier => voir l'enum. Valeur mise en mémoire obligatoirement, sinon on ne sait pas si on a un booleen ou entier
	private String tmp;
	
	public Declaration() {
		super();
		offsetCompteur = -2;
	}
	
	public int getOffsetCompteur() {
		return offsetCompteur;
	}
	
	//création d'une constante booléenne de type t, sans mettre sa valeur
	public void addConst(String nom) throws ParseException{
		if (Yaka.tabIdent.existeIdent(nom)) {
			throw Yaka.generateParseException();
		}
		Yaka.tabIdent.rangeIdent(nom , new IdConst());
		tmp = nom;
	}
	
	//attribue la valeur et le type à l'Ident de nom tmp si BOOLEEN ou ENTIER
	public void setValeur(Type t , int val) throws ParseException{
		Yaka.tabIdent.chercheIdent(tmp).valeur = val;
		Yaka.tabIdent.chercheIdent(tmp).type = t;
	}
	
	//attribue la valeur et le type à l'Ident de nom tmp si on lui donne en attribut une constante de nom nom
		public void setValeur(String nom) throws ParseException{
			Ident attribut = Yaka.tabIdent.chercheIdent(nom); //L'Ident source
			Ident tmp = Yaka.tabIdent.chercheIdent(this.tmp); //L'Ident de destination
			 tmp.type = attribut.type;
			 tmp.valeur = attribut.valeur;
		}
	
	//change le type des prochaines valeurs entrées en t
	public void setType(Type t) {
		type = t;
	}
	
	
	//ajoute un Ident de nom "nom" et de type Declaration.type 
	public void addIdent(String nom) throws ParseException{
		if (Yaka.tabIdent.existeIdent(nom)) {
			throw Yaka.generateParseException();
		}
		Yaka.tabIdent.rangeIdent(nom , new IdVar(type , offsetCompteur));
		offsetCompteur -= 2;
	}

}