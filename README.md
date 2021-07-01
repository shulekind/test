Для запуска БД выполнить команду:

```
docker run -d -p 1521:1521 \
              -p 18080:8080 \
              --name oracle-xe \
              -e ORACLE_ALLOW_REMOTE=true \
              -e ORACLE_DISABLE_ASYNCH_IO=true \
              -e ORACLE_ENABLE_XDB=true \
              oracleinanutshell/oracle-xe-11g
```

или использовать docker compose:

```
docker compose up -d
```

Данные для авторизации в клиенте:

| Параметр | Значение |
| -------- | -------- |
| username | system   |
| password | oracle   |
| port     | 1521     |
| sid      | xe       |

Для создания таблиц выполнить скрипт `create_tables.sql`.

Для заполнения таблиц выполнить скрипт `fill_tables.sql`.

Выполненные задания находятся в файлах `1.sql`, ... , `8.sql`.

Для очистки таблиц выполнить скрипт `drop_tables.sql`.