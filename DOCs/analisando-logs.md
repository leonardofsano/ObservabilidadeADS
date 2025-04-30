# Analisando Logs do PostgreSQL

## Como acessar os logs

Neste projeto, os logs do PostgreSQL são acessados diretamente através do comando `docker logs`, pois o container é configurado para utilizar o logging padrão do Docker (STDOUT).

### Comando para visualizar os logs

```bash
docker logs observabilidadebancodados-db-1
```

### O que observar nos logs

Os logs do PostgreSQL incluem:

- Mensagens de inicialização do banco.

- Erros de autenticação ou conexão.

- Consultas SQL que excedem tempo limite (dependendo da configuração).

- Mensagens de checkpoint e WAL.

Exemplo de log relevante:
LOG:  database system was shut down at 2024-04-01 12:00:00 UTC
LOG:  database system is ready to accept connections
ERROR:  syntax error at or near "WRONG" at character 15