package prot.cortex.my.event.event.service.ipml;

import org.springframework.stereotype.Service;

import prot.cortex.my.event.event.repository.eventRepository.EventRepository;
import prot.cortex.my.event.event.service.EventService;

@Service
public class EventServiceImpl implements EventService {
	
	private EventRepository eventRepository;
}
