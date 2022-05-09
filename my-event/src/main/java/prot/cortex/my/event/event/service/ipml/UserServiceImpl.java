package prot.cortex.my.event.event.service.ipml;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import prot.cortex.my.event.event.entity.user.User;
import prot.cortex.my.event.event.model.UserModel;
import prot.cortex.my.event.event.repository.userRepository.UserRepository;
import prot.cortex.my.event.event.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;

	@Override
	@Transactional
	public void createNewUser(UserModel userModel) {
		User user = new User();
		user.parser(userModel);
		userRepository.save(user);
	}
}
