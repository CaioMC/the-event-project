package prot.cortex.my.event.event.repository.activeEventRepository;

import org.springframework.data.repository.CrudRepository;

import prot.cortex.my.event.event.entity.event.ActiveEvent;

public interface ActiveEventRepository extends CrudRepository<ActiveEvent, Integer> {

}
