%~d0
cd %~dp0
java -Dtalend.component.manager.m2.repository="%cd%/../lib" -Xms256M -Xmx1024M -cp .;../lib/routines.jar;../lib/advancedPersistentLookupLib-1.2.jar;../lib/bcprov-jdk15on-1.60.jar;../lib/commons-collections-3.2.2.jar;../lib/commons-lang-2.6.jar;../lib/commons-logging-1.1.3.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/hsqldb.jar;../lib/jackcess-2.1.12.jar;../lib/jackcess-encrypt-2.1.4.jar;../lib/jboss-serialization.jar;../lib/log4j-1.2.17.jar;../lib/mariadb-java-client-2.2.1.jar;../lib/talend-ucanaccess-utils-1.0.0.jar;../lib/trove.jar;../lib/ucanaccess-2.0.9.5.jar;job01_customer_dim_0_1.jar; orion_project.job01_customer_dim_0_1.Job01_Customer_Dim  --context=Default %*