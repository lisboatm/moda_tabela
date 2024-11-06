# Calcular a Moda em uma Tabela de Valores Inteiros no PostgreSQL

Este código SQL encontra o valor mais frequente, também conhecido como moda, em uma tabela de valores inteiros no PostgreSQL.

## Estrutura da Tabela

A tabela `Value_table` possui uma única coluna chamada `amount`, que armazena valores inteiros.

| amount |
|--------|
| 4      |
| 6      |
| 7      |
| 1      |
| ...    |

## Objetivo

Identificar o valor (ou valores) mais frequente(s) na coluna `amount`. Se houver múltiplos valores com a mesma frequência máxima, todos são retornados.

## Código SQL

```sql
SELECT amount
FROM Value_table
GROUP BY amount
ORDER BY COUNT(amount) DESC, amount
LIMIT 1;
```

### Explicação do Código

1. **Agrupamento dos Valores (`GROUP BY`)**: Agrupa os dados por cada valor em `amount` para contar a frequência de cada valor.
  
2. **Ordenação (`ORDER BY COUNT(amount) DESC, amount`)**: Ordena a lista de valores agrupados pela frequência, em ordem decrescente. Em caso de empate na frequência, os valores são ordenados em ordem crescente.

3. **Limite de Resultado (`LIMIT 1`)**: Retorna apenas o valor mais frequente. Em caso de múltiplos valores com a mesma frequência máxima, o menor valor é retornado (pelo critério de ordenação).

### Exemplo de Saída

Suponha que os dados sejam os seguintes:

| amount |
|--------|
| 1      |
| 1      |
| 2      |
| 2      |
| 2      |
| 3      |

Neste caso, a saída será:

| amount |
|--------|
| 2      |

### Requisitos

- PostgreSQL 9.5 ou superior.

## Notas

- Se precisar de todos os valores com a mesma frequência máxima (moda múltipla), remova `LIMIT 1` e o código retornará todos os valores que possuem a maior frequência.
  
## Autor

Criado para auxiliar em consultas SQL no PostgreSQL.
