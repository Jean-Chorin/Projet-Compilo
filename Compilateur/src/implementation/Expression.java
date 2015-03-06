package implementation;
import java.util.Stack;

import main.*;

enum Operateur{"+","-","*","/"};

public class Expression {
	private Stack<Ident> pile_Ident;
	private Stack<Operateur> pile_op;
}
