package generation;

import java.io.*;

import main.Yaka;


public class YVM {
	protected OutputStream sortie;
	protected int compteurIt;
	
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
		ecrireln("; entete");
	}
		
	public void queue() {
		ecrireln("; queue");
	}
	
	
	//---------------------------------------Declaration---------------------------------------
	public void ouvrePrinc(int n) {
		Ecriture.ecrireStringln(sortie , "; ouvrePrinc " + n);
	}
	
	
	//---------------------------------------Expression---------------------------------------
	
	public void iconst(int n) {
		ecrireln("; iconst " + n);
	}
	
	public void iload(int n) {
		ecrireln("; iload " + n);
	}
	
	public void istore(int n) {
		ecrireln("; istore " + n);
	}
	
	public void iadd() {
		ecrireln("; iadd");
	}
	
	public void isub() {
		ecrireln("; isub");
	}
	
	public void imul() {
		ecrireln("; imul");
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
	
	public void iinfegal() {
		ecrireln("; iinfegal");
	}
	
	public void iegal() {
		ecrireln("; iegal");
	}	
	
	public void idif() {
		ecrireln("; idif");
	}	
	
	public void iand() {
		ecrireln("; iand");
	}	
	
	public void ior() {
		ecrireln("; ior");
	}	
	
	public void inot() {
		ecrireln("; inot");
	}	
	
	public void ineg() {
		ecrireln("; ineg");
	}
	
	
	
	//-----------------------M�thodes des affectations, entr�es, sorties-----------------------
	
	public void ecrireEnt(){
		ecrireln("; ecrireEnt");
	}
	
	public void ecrireChaine(String name){
		ecrireln("; ecrireChaine " + name );	
	}
	
	public void ecrireBool(){
		ecrireln("; ecrireBool");
	}
	
	public void lireEnt(int val){
		ecrireln("; lireEnt " + val);
	}
	
	public void aLaLigne(){
		ecrireln("; aLaLigne");
	}
	
	//-----------------------Iteration-----------------------
	
	public void tantque(){
		compteurIt++;
		ecrireln("FAIRE" + compteurIt + ":");
	}
	
	public void iffaux(){
		ecrireln("; iffaux FAIT" + compteurIt);
	}
	
	public void goTo(){
		ecrireln("; goto FAIRE" + compteurIt);
	}
	public void fait(){
		ecrireln("FAIT" + compteurIt + ":");
	}
}
