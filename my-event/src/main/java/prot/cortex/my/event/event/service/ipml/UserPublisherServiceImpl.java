package prot.cortex.my.event.event.service.ipml;

import org.springframework.stereotype.Service;

import prot.cortex.my.event.event.repository.userPublisherRepository.UserPublisherRepository;
import prot.cortex.my.event.event.service.UserPublisherService;

@Service
public class UserPublisherServiceImpl implements UserPublisherService {
	
	private UserPublisherRepository userPublisherRepository;	
}
