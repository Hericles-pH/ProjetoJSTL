package Bean;

public class AvaliacaoBean {
	private String idProva;
	private String img;

	public AvaliacaoBean() {
	}

	public AvaliacaoBean(String id, String img) {
		setIdProva(id);
		setImg(img);
	}

	public String getIdProva() {
		return idProva;
	}

	public void setIdProva(String idProva) {
		this.idProva = idProva;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	}
