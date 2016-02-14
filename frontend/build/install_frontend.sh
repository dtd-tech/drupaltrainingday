
drush site-install wizzlern_dtd_frontend --db-url=mysql://dtd:dtd@localhost/frontend --account-mail=dtd@dtd.local --account-name=dtd --account-pass=dtd --site-mail=dtd@dtd.local --site-name=Frontend --uri=frontend.dtd -y
drush sql-drop -y
mysql -u root --password=dtd frontend < ../build/frontend.sql
drush cr --uri=frontend.dtd -y
drush sql-dump > ../build/frontend.sql
