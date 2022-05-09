package prot.cortex.my.event.event.infrastructure;

import java.io.Serializable;

public class Problem implements Serializable {
	private static final long serialVersionUID = 1L;

	private String code;
	private String description;

	public Problem() {
	}

	public Problem(String description) {
		this.description = description;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
