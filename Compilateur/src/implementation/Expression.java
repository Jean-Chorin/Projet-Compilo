package implementation;
import java.util.Stack;
import ident.*;
import main.*;



public class Expression {
	
	private Stack<Ident> pile_Ident;
	private Stack<Operateur> pile_op;
	
	public Expression(){
		pile_Ident = new Stack<Ident>();
		pile_op = new Stack<Operateur>();
	}
	
	public void empileOp(Operateur o){
		pile_op.push(o);
	}
	
	public void empileIdent(Ident e){
		pile_Ident.push(e);
	}
	
	
	//calcul avec l'operateur de haut de pile et les deux ident de haut de pile
	public void calcul(){
		switch(pile_op.pop()){
			case PLUS:
				if(pile_Ident.pop().type == Type.BOOLEEN || pile_Ident.pop().type != Type.BOOLEEN){
								System.out.println("On ne peut pas additionner un bool" + " à la ligne " + 
						Yaka.token.next.beginLine + ", à la colonne " + Yaka.token.next.beginColumn);
								pile_Ident.push(new IdConst(Type.ERREUR, 0));
				}
			
			break;
			case MOINS:
				
		}
		
	}
	
	
}
