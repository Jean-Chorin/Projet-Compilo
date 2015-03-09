package implementation;
import java.util.Stack;
import ident.*;
import main.*;



public class Expression {
	
	private Stack<Ident> pile_Ident;
	private Stack<Operateur> pile_op;
	private Ident destination; //où on stock le calcul
	
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
	
	public void addDest(Ident e){
		destination = e;
	}
	
	public void calcul(){
		
	}
}
