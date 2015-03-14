package implementation;
import java.util.Stack;
import ident.*;
import main.*;



public class Expression {
	
	private Stack<Type> pile_Type;
	private Stack<Operateur> pile_op;
	private Ident dest;
	
	public Expression(){
		pile_Type = new Stack<Type>();
		pile_op = new Stack<Operateur>();
	}
	
	public void empileOp(Operateur o){
		pile_op.push(o);
	}
	
	public void empileIdent(Ident e){
		pile_Type.push(e.type);
		if(e instanceof IdConst){
			Yaka.yvm.iconst(e.valeur);
		}else{
			Yaka.yvm.iload(e.valeur);
		}
	}
	
	public void addDest(Ident i){
		dest = i;
	}
	//fin du calcul, on istore
	public void end(){
		if(dest.type != pile_Type.pop()){
			System.out.println("R�sultats ne correspondent pas" + " � la ligne " + 
					Yaka.token.next.beginLine + ", � la colonne " + Yaka.token.next.beginColumn);
		}
		Yaka.yvm.istore(dest.valeur);
	}
	
	//appel le YVM correspondant � l'op�rateur
	private void choix_op(Operateur o){
		switch(o){
		
		
		
		case PLUS: Yaka.yvm.iadd();
			break;
		case MOINS:Yaka.yvm.isub();
			break;
		case FOIS:Yaka.yvm.imul();
			break;
		case DIV: Yaka.yvm.idiv();
			break;
		case INF: Yaka.yvm.iinf();
			break;
		case SUP: Yaka.yvm.isup();
			break;
		case SUPEG: Yaka.yvm.isupegal();
			break;
		case INFEG: Yaka.yvm.iinfegal();
			break;
		case EG: Yaka.yvm.iegal();
			break;
		case DIF: Yaka.yvm.idif();
			break;
		case ET: Yaka.yvm.iand();
			break;
		case OU: Yaka.yvm.ior();
			break;
		case NON: Yaka.yvm.inot();
			break;
		case NEG: Yaka.yvm.ineg();
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
						System.out.println("On ne peut pas faire des opp�rations � un bool" + " � la ligne " + 
				Yaka.token.next.beginLine + ", � la colonne " + Yaka.token.next.beginColumn);
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
						System.out.println("On ne peut pas faire des comparaisons � un bool" + " � la ligne " + 
				Yaka.token.next.beginLine + ", � la colonne " + Yaka.token.next.beginColumn);
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
						System.out.println("On ne peut pas faire des op�rations logiques � un entier" + " � la ligne " + 
				Yaka.token.next.beginLine + ", � la colonne " + Yaka.token.next.beginColumn);
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
					System.out.println("On ne peut pas faire des opp�rations � un entier" + " � la ligne " + 
							Yaka.token.next.beginLine + ", � la colonne " + Yaka.token.next.beginColumn);
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
					System.out.println("On ne peut pas faire des opp�rations � un entier" + " � la ligne " + 
							Yaka.token.next.beginLine + ", � la colonne " + Yaka.token.next.beginColumn);
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
