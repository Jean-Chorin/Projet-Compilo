package implementation;

public class Declaration {
	private int offsetCompteur; //
	private int type; //booléen ou entier => voir l'enum. Valeur mise en mémoire obligatoirement, sinon on ne sait pas si on a un booleen ou entier
	
	public Declaration() {
		super();
		offsetCompteur = -2;
	}
	
	//création d'une constante booléenne
	public void addConst(String nom , String valeur) {
		tabIdent.rangeIdent(nom , new IdConst(nom , "BOOLEEN" , valeur));
	}
	
	//création d'une constante entiere
	public void addConst(String nom , int valeur) {
		tabIdent.rangeIdent(nom , new IdConst(nom , "ENTIER" , valeur));
	}
	
	//change le type des prochaines valeurs entrées en ENTIER 
	public void setEntier() {
		type = ENTIER;
	}

	//change le type des prochaines valeurs entrées en BOOLEEN
	public void setBooleen() {
		type = BOOLEEN;
	}
	
	//ajoute un Ident de nom "nom" et de type Declaration.type 
	public void addIdent(String nom) {
		
	}

}
