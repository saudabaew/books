package com.saudabaew.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;

/**
 * Created by 1 on 20.01.2018.
 */
@PropertySource("WEB-INF/classes/db.properties")
public class DatabaseConfig {
    @Value("${db.type}")
    private String type;

    @Value("${db.driver}")
    private String driver;

    @Value("${db.dialect}")
    private String dialect;

    @Value("${db.host}")
    private String host;

    @Value("${db.port}")
    private String port;

    @Value("${db.name}")
    private String dbName;

    @Value("${db.user}")
    private String user;

    @Value("${db.password}")
    private String pass;

    @Bean
    public DataSource dataSource() throws PropertyVetoException {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        dataSource.setDriverClass(driver);
        dataSource.setJdbcUrl(String.format("jdbc:%s://%s:%s/%s?useSSL=false", type, host, port, dbName));
        dataSource.setUser(user);
        dataSource.setPassword(pass);

        dataSource.setMinPoolSize(5);
        dataSource.setAcquireIncrement(5);
        dataSource.setMaxPoolSize(20);

        return dataSource;
    }

    @Bean   // setting JPA vendor as hibernate
    public JpaVendorAdapter jpaVendorAdapter() {
        HibernateJpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
        adapter.setDatabase(Database.valueOf(type.toUpperCase()));
        adapter.setShowSql(true);
        adapter.setGenerateDdl(false);
        adapter.setDatabasePlatform(dialect);
        return adapter;
    }

    @Bean("entityManagerFactory")   // setting EntityManagerFactory
    public LocalContainerEntityManagerFactoryBean localContainerEntityManagerFactoryBean(
            DataSource dataSource, JpaVendorAdapter jpaVendorAdapter) {

        LocalContainerEntityManagerFactoryBean bean = new LocalContainerEntityManagerFactoryBean();
        bean.setDataSource(dataSource);
        bean.setJpaVendorAdapter(jpaVendorAdapter);
        /*Properties properties = new Properties();;
        properties.setProperty("hibernate.hbm2ddl.auto", "create");
        bean.setJpaProperties(properties);*/
        bean.setPackagesToScan("net.ukrtel.ddns.ff.utilities.entities");
        return bean;
    }
}
