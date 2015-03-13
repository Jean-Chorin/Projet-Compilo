package generation;

import java.io.*;


public class YVM {
	private OutputStream sortie;
	
	//Ouvre un OutputStream vers le fichier de nom "Alpha"
	public YVM() {
		sortie = Ecriture.ouvrir("Alpha");
	}
	
	
}
