package generation;

import java.io.*;
import main.Yaka;


public class YVM {
	private OutputStream sortie;
	
	//Ouvre un OutputStream vers le fichier de nom "Alpha"
	public YVM() {
		sortie = Ecriture.ouvrir("Alpha");
	}
	
	
	//Entete et Enqueue
	public void titreProg() {
		Ecriture.ecrireStringln(sortie , "entete");
	}
		
	public void finProg() {
		Ecriture.ecrireStringln(sortie , "queue");
	}
	
	
	//Declaration
	public void ouvrePrinc() {
		Ecriture.ecrireStringln(sortie , "ouvrePrinc" + Yaka.declaration.getOffsetCompteur());
	}
	
	
}
