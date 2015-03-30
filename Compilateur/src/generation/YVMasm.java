package generation;

import java.io.*;


public class YVMasm extends YVM{
	private int compteurLect;
	
	
	//Ouvre un OutputStream vers le fichier de nom "sortie.asm"
	public YVMasm() {
		sortie = Ecriture.ouvrir("sortie.asm");
		compteurLect = 0;
	}
	
	public void ln() {
		ecrireln("");
	}

	//---------------------------------------Entete et Enqueue---------------------------------------
	public void entete() {
		super.entete();
		ecrireln("extrn lirent:proc, ecrent:proc");
		ecrireln("extrn ecrbool:proc");
		ecrireln("extrn ecrch:proc, ligsuiv:proc");
		ecrireln(".model SMALL");
		ecrireln(".586\n");
		ecrireln(".CODE");
		ecrireln("debut :");
		ecrireln("STARTUPCODE");
		ln();
	}
		
	public void queue() {
		super.queue();
		ecrireln("nop");
		ecrireln("exitcode");
		ecrireln("end debut");
		ln();
	}
	
	
	//---------------------------------------Declaration---------------------------------------
	public void ouvrePrinc(int n) {
		super.ouvrePrinc(n);
		ecrireln("mov bp,sp");
		ecrireln("sub sp," + n);
		ln();
	}
	
	
	//---------------------------------------Expression---------------------------------------
	
	public void iconst(int n) {
		super.iconst(n);
		ecrireln("push " + n);
		ln();
	}	
	
	public void iload(int n){
		super.iload(n);
		ecrireln("push word ptr [bp" + n + "]");
		ln();
	}
	
	public void istore(int n){
		super.istore(n);
		ecrireln("pop ax");
		ecrireln("mov word ptr [bp" + n + "],ax");
		ln();
	}
	
	public void iadd(){
		super.iadd();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("add ax,bx");
		ecrireln("push ax");
		ln();
	}
	
	public void isub(){
		super.isub();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("sub ax,bx");
		ecrireln("push ax");
		ln();
	}
	
	public void imul(){
		super.imul();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("imul bx");
		ecrireln("push ax");
		ln();
	}
	
	public void idiv() {
		super.idiv();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cwd");
		ecrireln("idiv bx");
		ecrireln("push ax");
		ln();
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
		ln();
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
		ln();
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
		ln();
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
		ln();
	}	
	
	public void iegal() {
		super.iegal();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cmp ax,bx");
		ecrireln("jne $+6");
		ecrireln("push -1");
		ecrireln("jmp $+4");
		ecrireln("push 0");
		ln();
	}	
	
	public void idif() {
		super.idif();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("cmp ax,bx");
		ecrireln("je $+6");
		ecrireln("push -1");
		ecrireln("jmp $+4");
		ecrireln("push 0");
		ln();
	}	
	
	public void iand() {
		super.iand();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("and ax,bx");
		ecrireln("push ax");
		ln();
	}	
	
	public void ior() {
		super.ior();
		ecrireln("pop bx");
		ecrireln("pop ax");
		ecrireln("or ax,bx");
		ecrireln("push ax");
		ln();
	}	
	
	public void inot() {
		super.inot();
		ecrireln("pop bx");
		ecrireln("not bx");
		ecrireln("push bx");
		ln();
	}	
	
	public void ineg() {
		super.ineg();
		ecrireln("pop bx");
		ecrireln("neg bx");
		ecrireln("push bx");
		ln();
	}
	
	//---------------------------------------Entrees Sorties---------------------------------------

	public void ecrireEnt(){
		super.ecrireEnt();
		ecrireln("call ecrent");
		ln();
	}
	
	public void ecrireChaine(String name){
		super.ecrireChaine(name);
		ecrireln(".DATA");
		name = name.substring(0, name.length()-1);
		ecrireln("mess"+compteurLect+" DB "+name + "$\"");
		ecrireln(".CODE");
		ecrireln("lea dx,mess"+compteurLect);
		compteurLect++;
		ecrireln("push dx");
		ecrireln("call ecrch");
		ln();
	}
	
	public void ecrireBool(){
		super.ecrireBool();
		ecrireln("call ecrbool");
		ln();
	}
	
	public void lireEnt(int val){
		super.lireEnt(val);
		ecrireln("lea dx,[bp"+val+"]");
		ecrireln("push dx");
		ecrireln("call lirent");
		ln();
	}
	
	public void aLaLigne(){
		super.aLaLigne();
		ecrireln("call ligsuiv");
		ln();
	}
	
	//-----------------------Iteration-----------------------
	
		public void tantque(int n){
			super.tantque(n);
		}
		
		public void iffaux(String s){
			super.iffaux(s);
			ecrireln("pop ax");
			ecrireln("cmp ax,0");
			ecrireln("je " + s);
			ln();
		}
		
		public void goTo(String s){
			super.goTo(s);
			ecrireln("jmp " + s);
			ln();
		}
		public void fait(int n){
			super.fait(n);
		}
		
		//-----------------------Conditionnel-----------------------

		public void ichaine(String s){
			super.ichaine(s);;
		}
		
		//-----------------------Fonction-----------------------
		
		public void ouvreBloc(int i){
		super.ouvreBloc(i);
		ecrireln("enter " + i +",0");
		ln();
		}
		
		public void fermeBloc(int i){
		super.fermeBloc(i);
		ecrireln("leave");
		ecrireln("ret " + i);
		ln();
		}
		
		public void ireturn(int i){
		super.ireturn(i);
		ecrireln("pop ax");
		ecrireln("mov [bp+" + i + "],ax");
		ln();
		}
		
		public void reserveRetour(){
		super.reserveRetour();
		ecrireln("sub sp,2");
		ln();
		}
		
		public void call(String s){
		super.call(s);
		ecrireln("call " + s);
		ln();
		}
}
