package prot.cortex.my.event.event.infrastructure;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ProblemList implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<Problem> problems = new ArrayList<Problem>();

	public List<Problem> getProblems() {
		return problems;
	}

	public void setProblems(List<Problem> problems) {
		this.problems = problems;
	}
	
	public void add(Throwable e) {
		Problem problem = new Problem();
		problem.setCode(e.getClass().getSimpleName());
		problem.setDescription(e.getMessage());
		this.problems.add(problem);
	}

	public void add(Problem problem) {
		if (!this.problems.contains(problem)) {
			this.problems.add(problem);
		}
	}
	
	public void addAll(List<Problem> problems) {
		for (Problem problem : problems) {
			if (!this.problems.contains(problem)) {
				this.problems.add(problem);
			}
		}
	}

	public Boolean hasAny() {
		if (this.problems.size() > 0) {
			return true;
		}
		return false;
	}
}
