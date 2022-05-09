package prot.cortex.my.event.event.infrastructure;

import java.io.Serializable;

public class ResponseWS<E> implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private String status = WSApiConstants.STATUS_OK;
	private E data;
	private ProblemList problemList = new ProblemList();

	public void addProblem(Problem problem) {
		this.problemList.add(problem);
		this.setStatus(WSApiConstants.STATUS_ERROR);
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public E getData() {
		return data;
	}

	public void setData(E data) {
		this.data = data;
	}

	public ProblemList getProblemList() {
		return problemList;
	}

	public void setProblemList(ProblemList problemList) {
		this.problemList = problemList;
	}
}
