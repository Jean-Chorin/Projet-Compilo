package implementation;

public class Declaration {
	private int offsetCompteur; //
	private int type; //bool�en ou entier => voir l'enum
	
	public Declaration() {
		super();
		offsetCompteur = -2;
	}
	
	//cr�ation d'une constante bool�enne
	public void addConst(String nom , String valeur) {
		tabIdent.rangeIdent(nom , new IdConst(nom , "BOOLEEN" , valeur));
	}
	
	//cr�ation d'une constante entiere
	public void addConst(String nom , int valeur) {
		tabIdent.rangeIdent(nom , new IdConst(nom , "ENTIER" , valeur));
	}

}
