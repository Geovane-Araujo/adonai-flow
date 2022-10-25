package br.com.adonai.flow;

import com.jatom.migrationdatabase.postgres.MigrationDataBase;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AdonaiFlowApplication {

    public static void main(String[] args) {
        MigrationDataBase mig = new MigrationDataBase();
        mig.createInformationSchemaIntoSchema();
        mig.executeMigrationDataBaseResourcesIntoSchema();
        SpringApplication.run(AdonaiFlowApplication.class, args);
    }

}
