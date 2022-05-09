package prot.cortex.my.event.event.repository.eventRepository;

import org.springframework.data.repository.CrudRepository;

import prot.cortex.my.event.event.entity.event.Event;

public interface EventRepository extends CrudRepository<Event, Integer> {

}
