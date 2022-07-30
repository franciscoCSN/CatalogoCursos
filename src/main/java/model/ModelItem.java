package model;

import java.io.Serializable;

public class ModelItem implements Serializable{
	private static final long serialVersionUID = 1L;
	private Long id;
	private Long contador_visita;
	private String descricao;
	private String hotlik;
	private String imagem_base64;
	private String titulo;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getContador_visita() {
		return contador_visita;
	}
	public void setContador_visita(Long contador_visita) {
		this.contador_visita = contador_visita;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getHotlik() {
		return hotlik;
	}
	public void setHotlik(String hotlik) {
		this.hotlik = hotlik;
	}
	public String getImagem_base64() {
		return imagem_base64;
	}
	public void setImagem_base64(String imagem_base64) {
		this.imagem_base64 = imagem_base64;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	

}
