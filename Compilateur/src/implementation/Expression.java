package implementation;
import java.util.Stack;
import ident.*;
import main.*;



public class Expression {
	
	private Stack<Type> pile_Type;
	private Stack<Operateur> pile_op;
	
	public Expression(){
		pile_Type = new Stack<Type>();
		pile_op = new Stack<Operateur>();
	}
	
	public void empileOp(Operateur o){
		pile_op.push(o);
	}
	
	public void empileIdent(Ident e){
		pile_Type.push(e.type);
	}
	
	//appel le YVM correspondant à l'opérateur
	private void choix_op(Operateur o){
		switch(o){
		
		
		
		case PLUS:
			break;
		case MOINS:
			break;
		case FOIS:
			break;
		case DIV:
			break;
		case INF:
			break;
		case SUP:
			break;
		case SUPEG:
			break;
		case INFEG:
			break;
		case EG:
			break;
		case DIF:
			break;
		case ET:
			break;
		case OU:
			break;
		case NON:
			break;
		case NEG:
			break;
		}
	}
	
	
	
	//calcul avec l'operateur de haut de pile et les deux ident de haut de pile
	public void calcul(){
		Operateur o = pile_op.pop();
		Type nb1;
		Type nb2;
		switch(o){
		
		
		
			case PLUS:
			case MOINS:
			case FOIS:
			case DIV:
				 nb1 = pile_Type.pop();
				 nb2 = pile_Type.pop();
					if(nb1 == Type.BOOLEEN || nb2 == Type.BOOLEEN){
						System.out.println("On ne peut pas faire des oppérations à un bool" + " à la ligne " + 
				Yaka.token.next.beginLine + ", à la colonne " + Yaka.token.next.beginColumn);
						pile_Type.push(Type.ERREUR);
				}else if(nb1 == Type.ERREUR || nb2 == Type.ERREUR){
					pile_Type.push(Type.ERREUR);
				}else{
					pile_Type.push(Type.ENTIER);
				}
					
					choix_op(o);
			break;
			
			case INF:
			case SUP:
			case SUPEG:
			case INFEG:
				 nb1 = pile_Type.pop();
				 nb2 = pile_Type.pop();
					if(nb1 == Type.BOOLEEN || nb2 == Type.BOOLEEN){
						System.out.println("On ne peut pas faire des comparaisons à un bool" + " à la ligne " + 
				Yaka.token.next.beginLine + ", à la colonne " + Yaka.token.next.beginColumn);
						pile_Type.push(Type.ERREUR);
				}else if(nb1 == Type.ERREUR || nb2 == Type.ERREUR){
					pile_Type.push(Type.ERREUR);
				}else{
					pile_Type.push(Type.BOOLEEN);
				}
					
					choix_op(o);
			break;
			
			case EG:
			case DIF:
				 nb1 = pile_Type.pop();
				 nb2 = pile_Type.pop();
				 if(nb1 == Type.ERREUR || nb2 == Type.ERREUR){
						pile_Type.push(Type.ERREUR);
					}else{
						pile_Type.push(Type.BOOLEEN);
					}
					
					
					choix_op(o);
			break;
			
			case ET:
			case OU:
				 nb1 = pile_Type.pop();
				 nb2 = pile_Type.pop();
					if(nb1 == Type.ENTIER || nb2 == Type.ENTIER){
						System.out.println("On ne peut pas faire des opérations logiques à un entier" + " à la ligne " + 
				Yaka.token.next.beginLine + ", à la colonne " + Yaka.token.next.beginColumn);
						pile_Type.push(Type.ERREUR);
				}else if(nb1 == Type.ERREUR || nb2 == Type.ERREUR){
					pile_Type.push(Type.ERREUR);
				}else{
					pile_Type.push(Type.BOOLEEN);
				}
					
					choix_op(o);
					break;
					
			case NEG:
				nb1 = pile_Type.pop();
				if(nb1 == Type.ENTIER ){
					System.out.println("On ne peut pas faire des oppérations à un entier" + " à la ligne " + 
							Yaka.token.next.beginLine + ", à la colonne " + Yaka.token.next.beginColumn);
					pile_Type.push(Type.ERREUR);
				}else if(nb1 == Type.ERREUR ){
					pile_Type.push(Type.ERREUR);
				}else{
					pile_Type.push(Type.ENTIER);
				}
				choix_op(o);
				break;
				
			case NON:
				nb1 = pile_Type.pop();
				if(nb1 == Type.BOOLEEN ){
					System.out.println("On ne peut pas faire des oppérations à un entier" + " à la ligne " + 
							Yaka.token.next.beginLine + ", à la colonne " + Yaka.token.next.beginColumn);
					pile_Type.push(Type.ERREUR);
				}else if(nb1 == Type.ERREUR ){
					pile_Type.push(Type.ERREUR);
				}else{
					pile_Type.push(Type.BOOLEEN);
				}
				choix_op(o);
				break;
			
		}
		
	}
	
	
}
