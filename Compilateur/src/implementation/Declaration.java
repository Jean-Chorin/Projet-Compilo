package implementation;

public class Declaration {
	private int offsetCompteur; //
	private int type; //booléen ou entier => voir l'enum
	
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

}
