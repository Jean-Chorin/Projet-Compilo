package generation;

import java.io.*;


public class YVMasm extends YVM{
	private OutputStream sortie;
	
	//Ouvre un OutputStream vers le fichier de nom "sortie.asm"
	public YVMasm() {
		sortie = Ecriture.ouvrir("sortie.asm");
	}
	
	public void ecrireln(String s) {
		ecrireln(s);
	}
	
	
	//---------------------------------------Entete et Enqueue---------------------------------------
	public void entete() {
		super.entete();
		ecrireln(".586\n");
		ecrireln(".CODE");
		ecrireln("debut :");
		ecrireln("STARTUPCODE");
	}
		
	public void queue() {
		super.queue();
		ecrireln("nop");
		ecrireln("exitcode");
		ecrireln("end debut");
	}
	
	
	//---------------------------------------Declaration---------------------------------------
	public void ouvrePrinc() {
		super.ouvrePrinc();
		ecrireln("mov bp,sp");
		ecrireln("sub sp,14");
	}
	
	
	//---------------------------------------Expression---------------------------------------
	
	public void iconst(int n) {
		super.iconst(n);
		ecrireln("push " + n);
	}	
	
	public void iload(int n){
		super.iload(n);
		ecrireln("push word ptr [bp" + n + "]");
	}
	
	public void istore(int n){
		super.istore(n);
		ecrireln("pop ax");
		ecrireln("mov word ptr [bp" + n + "],ax");
	}
	
	public void iadd(){
		super.iadd();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("add ax,bx");
		ecrireln("push ax");
	}
	
	public void isubb(){
		super.isub();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("sub ax,bx");
		ecrireln("push ax");
	}
	
	public void imul(){
		super.imul();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("imul bx");
		ecrireln("push ax");
	}
	
	public void idiv() {
		super.idiv();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cwd");
		ecrireln("idiv bx");
		ecrireln("push ax");
	}
	

	public void iinf() {
		super.iinf();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cmp ax,bx");
		ecrireln("jge $+6");
		ecrireln("push -1");
		ecrireln("jmp $+4");
		ecrireln("push 0");
	}	
	
	public void isup() {
		super.isup();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cmp ax,bx");
		ecrireln("jle $+6");
		ecrireln("push -1");
		ecrireln("jmp $+4");
		ecrireln("push 0");
	}	
	
	public void isupegal() {
		super.isupegal();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cmp ax,bx");
		ecrireln("jl $+6");
		ecrireln("push -1");
		ecrireln("jmp $+4");
		ecrireln("push 0");
	}	
	
	public void iinfegal() {
		super.iinfegal();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cmp ax,bx");
		ecrireln("jg $+6");
		ecrireln("push -1");
		ecrireln("jmp $+4");
		ecrireln("push 0");
	}	
	
	public void iegal() {
		super.iegal();
		super.iinfegal();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cmp ax,bx");
		ecrireln("jne $+6");
		ecrireln("push -1");
		ecrireln("jmp $+4");
		ecrireln("push 0");
	}	
	
	public void idif() {
		super.idif();
		super.iinfegal();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cmp ax,bx");
		ecrireln("je $+6");
		ecrireln("push -1");
		ecrireln("jmp $+4");
		ecrireln("push 0");
	}	
	
	public void iand() {
		super.iand();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("and ax,bx");
		ecrireln("push ax");
	}	
	
	public void ior() {
		super.ior();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("or ax,bx");
		ecrireln("push ax");
	}	
	
	public void inot() {
		super.inot();
		ecrireln("pop bx");
		ecrireln("not bx");
		ecrireln("push bx");
	}	
	
	public void ineg() {
		super.ineg();
		ecrireln("pop bx");
		ecrireln("neg bx");
		ecrireln("push bx");
	}
}
