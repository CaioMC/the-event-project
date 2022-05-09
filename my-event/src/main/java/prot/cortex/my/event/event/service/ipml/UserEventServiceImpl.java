package prot.cortex.my.event.event.service.ipml;

import org.springframework.stereotype.Service;

import prot.cortex.my.event.event.repository.userEventRepository.UserEventRepository;
import prot.cortex.my.event.event.service.UserEventService;

@Service
public class UserEventServiceImpl implements UserEventService {

	private UserEventRepository userEventRepository;	
}
