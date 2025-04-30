
---

### 📄 `relatorio-observabilidade.md`

```markdown
# Relatório Técnico – Observabilidade do PostgreSQL em Ambiente Docker

## Decisões Técnicas

- Docker Compose foi utilizado para orquestrar os containers de forma simples e reproduzível.
- A imagem oficial do PostgreSQL foi utilizada com variáveis de ambiente definidas no `docker-compose.yml`.
- Prometheus foi escolhido para coleta de métricas, utilizando o postgres-exporter.
- Grafana foi utilizado para visualização, com dashboards configurados automaticamente via provisioning.
- A base de dados utilizada foi a Northwind, por ser leve e representativa para testes.

## Desafios Encontrados

- Ajuste do `DATA_SOURCE_NAME` no postgres-exporter, que inicialmente apresentava erro de autenticação por nome de usuário incorreto.
- Integração do provisioning automático do Grafana, que exigiu a estrutura correta de pastas e arquivos `dashboard.yml` e `datasource.yml`.
- Validação da conectividade entre serviços via rede Docker.

## Lições Aprendidas

- O uso do postgres-exporter junto com Prometheus oferece excelente visibilidade sobre a saúde do banco de dados, com métricas como conexões ativas, transações por segundo e uso de disco.
- É essencial garantir que o postgres-exporter esteja corretamente configurado para autenticar no banco.
- Visualizações claras em dashboards ajudam a detectar tendências de desempenho.
- A observabilidade vai além da monitoração — inclui logs e, idealmente, tracing (que pode ser adicionado futuramente).

## Próximos Passos (Futuros)

- Integração com Grafana Loki para centralização de logs.
- Explorar OpenTelemetry para tracing distribuído da aplicação até o banco de dados.
- Definir alertas no Prometheus com base em limiares críticos.
