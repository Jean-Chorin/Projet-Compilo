package generation;

import java.io.*;
import main.Yaka;


public class YVMasm extends YVM{
	private OutputStream sortie;
	
	//Ouvre un OutputStream vers le fichier de nom "sortie.asm"
	public YVMasm() {
		sortie = Ecriture.ouvrir("sortie.asm");
	}
	
	
	
	//---------------------------------------Entete et Enqueue---------------------------------------
	public void entete() {
		super.entete();
		Ecriture.ecrireStringln(sortie , ".586\n");
		Ecriture.ecrireStringln(sortie , ".CODE");
		Ecriture.ecrireStringln(sortie , ".debut :");
		Ecriture.ecrireStringln(sortie , "STARTUPCODE");
	}
		
	public void queue() {
		super.queue();
		Ecriture.ecrireStringln(sortie , "nop");
		Ecriture.ecrireStringln(sortie , "exitcode");
		Ecriture.ecrireStringln(sortie , "end debut");
	}
	
	
	//---------------------------------------Declaration---------------------------------------
	public void ouvrePrinc() {
		super.ouvrePrinc();
		Ecriture.ecrireStringln(sortie , "mov bp,sp");
		Ecriture.ecrireStringln(sortie , "sub sp,14");
	}
	
	
	//---------------------------------------Expression---------------------------------------
	
	public void iconst(int n) {
		super.iconst(n);
		Ecriture.ecrireStringln(sortie , "push " + n);
	}
	
	public void idiv() {
		super.idiv();
		Ecriture.ecrireStringln(sortie , "pop");
		Ecriture.ecrireStringln(sortie , "exitcode");
		Ecriture.ecrireStringln(sortie , "end debut");
	}	
	
}
