package prot.cortex.my.event.event.entity.event;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ACTIVE_EVENT")
public class ActiveEvent implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	@Column(name = "ID", nullable = false)
    private Integer id;
	
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "EVENT_ID", nullable = false)
	private Event event;
}
