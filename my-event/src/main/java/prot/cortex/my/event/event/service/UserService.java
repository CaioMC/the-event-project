package prot.cortex.my.event.event.service;

import org.springframework.stereotype.Service;

import prot.cortex.my.event.event.model.UserModel;

@Service
public interface UserService {
	
	public void createNewUser(UserModel userModel);
}
