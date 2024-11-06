
# Pg-Transfer

Uma ferramenta de migração de banco de dados PostgreSQL baseada em Docker para backup e restauração.

## Visão Geral

Este repositório fornece uma abordagem estruturada para migrações de banco de dados PostgreSQL utilizando containers Docker, organizados em duas pastas principais: `backup-postgres` e `restore-postgres`. Cada diretório é projetado com Dockerfiles e configurações docker-compose dedicadas para facilitar operações de backup ou restauração.

### Estrutura de Pastas

- **backup-postgres**: Contém scripts e configurações necessárias para backups de banco de dados.
- **restore-postgres**: Contém scripts e configurações necessárias para restauração de banco de dados.

## Instalação

1. Clone este repositório para o seu ambiente local.
2. Navegue até a pasta desejada (`backup-postgres` ou `restore-postgres`).
3. Inicialize o ambiente de containers Docker com `docker-compose up -d`.

## Detalhes Funcionais

### Processo de Backup

O diretório `backup-postgres` está equipado com um script de shell (`backup.sh`) que é executado dentro de um container Docker para realizar backups de banco de dados. Este script gera um dump SQL do banco de dados PostgreSQL especificado, que é armazenado na pasta de backup designada com um nome de arquivo contendo o timestamp.

### Processo de Restauração

O diretório `restore-postgres` inclui um script `restore.sh` para facilitar a restauração de bancos de dados PostgreSQL. Este script aplica um dump SQL da pasta `dump` ao banco de dados de destino dentro de um ambiente gerenciado pelo Docker.

## Licenciamento

Este projeto está licenciado sob a Licença MIT, proporcionando liberdade para uso, modificação e distribuição do código com restrições mínimas.

## Notas Adicionais

- Certifique-se de que os arquivos `Dockerfile` e `docker-compose.yml` estão configurados corretamente para o seu ambiente.
- Personalizações podem ser necessárias para configurações de banco de dados ou redes específicas.
- Variáveis de ambiente nos arquivos `.env` são usadas para gerenciar conexões e credenciais de banco de dados; ajuste conforme necessário.
