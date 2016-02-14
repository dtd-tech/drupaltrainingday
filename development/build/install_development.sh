
drush site-install standard --db-url=mysql://dtd:dtd@localhost/development --account-mail=dtd@dtd.local --account-name=dtd --account-pass=dtd --site-mail=dtd@dtd.local --site-name=Development --uri=development.dtd -y
drush sql-drop
mysql -u root --password=dtd development < ../build/development.sql
drush cr

