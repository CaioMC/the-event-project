package prot.cortex.my.event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableAutoConfiguration
@EnableJpaRepositories(basePackages = "prot.cortex.my.event.event.repository")
@EnableTransactionManagement
@EntityScan(basePackages = "prot.cortex.my.event.event.entity")
public class MyEventApplication {
	
//	private static String PROP_DB_DRIVER_CLASS = "spring.datasource.driver-class-name";
//	private static String PROP_DB_URL = "spring.datasource.url";
//	private static String PROP_DB_USER = "spring.datasource.username";
//	private static String PROP_DB_PASS = "spring.datasource.password";
	private static String UNIT_NAME = "prot-event";

	@Autowired
	Environment environment;
	
//	@Bean
//	public DataSource dataSource(){
//	      DriverManagerDataSource dataSource = new DriverManagerDataSource();
//	      dataSource.setDriverClassName(environment.getProperty(PROP_DB_DRIVER_CLASS));
//	      dataSource.setUrl(environment.getProperty(PROP_DB_URL));
//	      dataSource.setUsername(environment.getProperty(PROP_DB_USER));
//	      dataSource.setPassword(environment.getProperty(PROP_DB_PASS));
//	      return (DataSource) dataSource;
//	}

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
	      LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
	      em.setPackagesToScan("com.sweng.giflib.model");
//	      em.setDataSource(this.dataSource());
	      em.setPersistenceUnitName(UNIT_NAME);
	      JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
	      em.setJpaVendorAdapter(vendorAdapter);

	      return em;
	}

	public static void main(String[] args) {
		SpringApplication.run(MyEventApplication.class, args);
	}
}
