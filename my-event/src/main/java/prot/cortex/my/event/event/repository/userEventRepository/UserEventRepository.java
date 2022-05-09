package prot.cortex.my.event.event.repository.userEventRepository;

import org.springframework.data.repository.CrudRepository;

import prot.cortex.my.event.event.entity.userEvent.UserEvent;

public interface UserEventRepository extends CrudRepository<UserEvent, Integer>{

}
