package generation;

import java.io.*;

import main.Yaka;


public class YVM {
	private OutputStream sortie;
	
	//Ouvre un OutputStream vers le fichier de nom "sortie.yaka"
	public YVM() {
		sortie = Ecriture.ouvrir("sortie.yaka");
	}
	
	//fonction pour raccourcir l'appel au fichier de sortie
	public void ecrireln(String s) {
		Ecriture.ecrireStringln(sortie , s);
	}
	
	
	//--------------------------------------Entete et Enqueue--------------------------------------
	public void entete() {
		Ecriture.ecrireStringln(sortie , "; entete");
	}
		
	public void queue() {
		Ecriture.ecrireStringln(sortie , "; queue");
	}
	
	
	//---------------------------------------Declaration---------------------------------------
	public void ouvrePrinc() {
		Ecriture.ecrireStringln(sortie , "; ouvrePrinc " + Yaka.declaration.getOffsetCompteur());
	}
	
	
	//---------------------------------------Expression---------------------------------------
	
	public void iconst(int n) {
		ecrireln("; iconst " + n);
	}
	
	public void iadd() {
		ecrireln("; iadd");
	}
	
	public void isub() {
		ecrireln("; i");
	}
	
	public void ifois() {
		ecrireln("; ifois");
	}
	
	public void idiv() {
		ecrireln("; idiv");
	}
	
	public void iinf() {
		ecrireln("; iinf");
	}
	
	public void isup() {
		ecrireln("; isup");
	}
	
	public void isupegal() {
		ecrireln("; isupegal");
	}
	
	public void i() {
		ecrireln("; i");
	}
	
	public void i() {
		ecrireln("; i");
	}
	
	//Méthodes des affectations, entrées, sorties
	public void ecrireEnt(){
		
	}
	
	public void ecrireChaine(){
			
	}
	
	public void ecrireBool(){
		
	}
	
	public void lireEnt(int id){
		
	}
	
	public void aLaLigne(){
		
	}
	
	
}
