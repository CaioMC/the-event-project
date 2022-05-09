package prot.cortex.my.event.event.repository.userRepository;

import org.springframework.data.repository.CrudRepository;

import prot.cortex.my.event.event.entity.user.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
}
	