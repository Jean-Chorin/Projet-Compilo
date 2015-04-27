package implementation;

import java.util.List;
import java.util.Vector;

import ident.*;
import main.*;

public class Declaration {
	private int offsetCompteur; //
	private Type type; //bool�en ou entier => voir l'enum. Valeur mise en m�moire obligatoirement, sinon on ne sait pas si on a un booleen ou entier
	private String tmpNomParam;
	private String tmpNomFonction;
	private List<IdParam> listeParam; //Stocke la liste des parametres pour les retrouver et pouvoir changer leur offset
	
	public Declaration() {
		super();
		offsetCompteur = -2;
		listeParam = new Vector<IdParam>();
	}
	
	public int getOffsetCompteur() {
		return offsetCompteur;
	}
	
	//cr�ation d'une constante bool�enne de type t, sans mettre sa valeur
	public void addConst(String nom) throws ParseException {
		if (Yaka.tabIdent.existeLocal(nom)) {
			System.out.println("Deux constantes ne peuvent avoir le m�me nom");
		} else {
			Yaka.tabIdent.rangeLocal(nom , new IdConst());
			tmpNomParam = nom;
		}
	}
	
	//attribue la valeur et le type � l'Ident de nom tmp si BOOLEEN ou ENTIER
	public void setValeur(Type t , int val) throws ParseException{
		Yaka.tabIdent.chercheLocal(tmpNomParam).valeur = val;
		Yaka.tabIdent.chercheLocal(tmpNomParam).type = t;
	}
	
	//attribue la valeur et le type � l'Ident de nom tmp si on lui donne en attribut une constante de nom nom
		public void setValeur(String nom) throws ParseException{
			Ident attribut = Yaka.tabIdent.chercheLocal(nom); //L'Ident source
			Ident tmp = Yaka.tabIdent.chercheLocal(this.tmpNomParam); //L'Ident de destination
			 tmp.type = attribut.type;
			 tmp.valeur = attribut.valeur;
		}
	
	//change le type des prochaines valeurs entr�es en t
	public void setType(Type t) {
		type = t;
	}
	
	
	//ajoute un Ident de nom "nom" et de type Declaration.type 
	public void addIdent(String nom) throws ParseException{
		if (Yaka.tabIdent.existeLocal(nom)) {
			throw Yaka.generateParseException();
		}
		Yaka.tabIdent.rangeLocal(nom , new IdVar(type , offsetCompteur));
		offsetCompteur -= 2;
	}
	
	
	
	//----------------------------Declaration de fonction------------------------------
	
	// Change l'attribut temporaire type en fonction de sType, qui vaut la String BOOLEEN ou ENTIER
	public void addFonction(String sType){
		//Remettre le compteur � 0 pour les nouveaux offsets et reinitialise listParam
		offsetCompteur = 0;
		listeParam = new Vector<IdParam>();
		
		/*if (sType == "BOOLEEN") {
			type = Type.BOOLEEN;
		} else {
			if (sType == "ENTIER") {
				type = Type.ENTIER;
			}
			else {
				//Si ni ENTIER ni BOOLEEN
				System.out.println("La fonction doit rendre un ENTIER ou un BOOLEEN ; ligne " +
				Yaka.token.next.beginLine + " et colonne " + Yaka.token.next.beginColumn);
			}
		}*/
	}
	
	// Ajoute une fonction de type correspondant � l'attribut temporaire type
	public void setFonction (String nom) throws ParseException {
		//Mettre le tmpNomFonction au nom de la fonction
		tmpNomFonction = nom;
		Yaka.tabIdent.rangeGlobal(nom, new Fonction(type));
	}
	
	
	//----------------------------Declaration de parametre------------------------------
	
	// Change l'attribut temporaire type en fonction de sType, qui vaut la String BOOLEEN ou ENTIER
	public void addParametre(String sType) throws ParseException{
		/*if (sType == "BOOLEEN") {
			type = Type.BOOLEEN;
		} else {
			if (sType == "ENTIER") {
				type = Type.ENTIER;
			}
			else {
				//Si ni ENTIER ni BOOLEEN
				throw new ParseException("Les param�tres doivent �tre des ENTIER ou des BOOLEEN ; ligne " +
				Yaka.token.next.beginLine + " et colonne " + Yaka.token.next.beginColumn);
			}
		}*/
	}
	
	// Ajoute un parametre de type correspondant � l'attribut temporaire type
	public void setParametre (String nom){
		IdParam tmp = new IdParam(type, 4 - (offsetCompteur) * 2);
		Yaka.tabIdent.rangeLocal(nom, tmp);
		listeParam.add(tmp); // On ajoute le param�tre dans la liste temporaire des param�tres
		Fonction f = Yaka.tabIdent.chercheGlobal(tmpNomFonction);
		f.parametres.add(type);
		//System.out.println("Parametre de " + Yaka.tabIdent.last + " " + f.parametres);
		offsetCompteur += 1;
	}
	
	//remet l'offsetCompteur � -2 apr�s l'ajout des param�tres dans la TabIdent et ajoute la taille des parm�tres aux offsets des param�tres (cf formules dans poly)
	public void setOffset(){
		Fonction f = Yaka.tabIdent.chercheGlobal(tmpNomFonction);
		for (IdParam idParam : listeParam) {
			idParam.valeur += f.nbParam()*2;
		}
		offsetCompteur = -2;
	}
	
}