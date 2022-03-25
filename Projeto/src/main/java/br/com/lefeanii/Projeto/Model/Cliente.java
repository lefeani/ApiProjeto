package br.com.lefeanii.Projeto.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity // Esta anotação permite abrir dentro do nosso Java uma área de aramazenamento na memória
@Table(name="correntista") // Permite dentro de nosso database, mostrar a tabela que iremos trabalhar

public class Cliente {

	// Criação do atributo que indica a chave primária ou sequencia de registros
	@Id
	
	// Neste momento iremo referenciar os campos e os tipos de dados da nossa tabela
	@Column(name="ag") 
	private int ag; 
	
	@Column(name="conta") 
	private int conta; 
	
	@Column(name="nome") 
	private String nome; 
	
	@Column(name="email") 
	private String email; 
	
	@Column(name="telefone")
	private String telefone;
	
	@Column(name="saldo")
	private double saldo;
	
	

	public int getAg() {
		return ag;
	}

	public void setAg(int ag) {
		this.ag = ag;
	}

	public int getConta() {
		return conta;
	}

	public void setConta(int conta) {
		this.conta = conta;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

}


	