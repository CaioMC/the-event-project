package prot.cortex.my.event.event.service.ipml;

import org.springframework.stereotype.Service;

import prot.cortex.my.event.event.repository.activeEventRepository.ActiveEventRepository;
import prot.cortex.my.event.event.service.ActiveEventService;

@Service
public class ActiveEventServiceImpl implements ActiveEventService {
	
	private ActiveEventRepository activeEventRepository;
}
