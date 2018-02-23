package com.model;

public class Encuesta {

	private int ask1;
	private int ask2;
	private int ask3;
	private int ask4;
	private int ask5;
	private int ask6;
	private int ask7;
	private int ask8;
	private int ask9;
	private float total;
	private String grupoID;
	private String comentarios;
	
	public Encuesta(int ask1, int ask2, int ask3, int ask4, int ask5, int ask6, int ask7, int ask8, int ask9, float total, String grupoID, String comentarios) {
		this.ask1 = ask1;
		this.ask2 = ask2;
		this.ask3 = ask3;
		this.ask4 = ask4;
		this.ask5 = ask5;
		this.ask6 = ask6;
		this.ask7 = ask7;
		this.ask8 = ask8;
		this.ask9 = ask9;
		this.total = total;
		this.grupoID = grupoID;
		this.comentarios = comentarios;
	}
	
	public Encuesta(float total, String grupoID, String comentarios) {
		// TODO Auto-generated constructor stub
	}

	// GETTERS y SETTERS
	
	public int getAsk1() {
		return ask1;
	}

	public void setAsk1(int ask1) {
		this.ask1 = ask1;
	}

	public int getAsk2() {
		return ask2;
	}

	public void setAsk2(int ask2) {
		this.ask2 = ask2;
	}

	public int getAsk3() {
		return ask3;
	}

	public void setAsk3(int ask3) {
		this.ask3 = ask3;
	}

	public int getAsk4() {
		return ask4;
	}

	public void setAsk4(int ask4) {
		this.ask4 = ask4;
	}

	public int getAsk5() {
		return ask5;
	}

	public void setAsk5(int ask5) {
		this.ask5 = ask5;
	}

	public int getAsk6() {
		return ask6;
	}

	public void setAsk6(int ask6) {
		this.ask6 = ask6;
	}

	public int getAsk7() {
		return ask7;
	}

	public void setAsk7(int ask7) {
		this.ask7 = ask7;
	}

	public int getAsk8() {
		return ask8;
	}

	public void setAsk8(int ask8) {
		this.ask8 = ask8;
	}

	public int getAsk9() {
		return ask9;
	}

	public void setAsk9(int ask9) {
		this.ask9 = ask9;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public String getGrupoID() {
		return grupoID;
	}

	public void setGrupoID(String grupoID) {
		this.grupoID = grupoID;
	}

	public String getComentarios() {
		return comentarios;
	}

	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}
}
