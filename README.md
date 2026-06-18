# Mapeamento Urbano Colaborativo - Plataforma de Zeladoria e Cidadania Digital

## Projeto de extensão acadêmica
* **Instituição:** Universidade Federal de Mato Grosso do Sul (UFMS)  
* **Unidade:** Agência de Educação Digital e a Distância (AGEAD / UFMS Digital)  
* **Curso:** Graduação em Tecnologia da Informação  
* **Disciplina:** Projeto Integrador de Tecnologia da Informação II  
* **Integrantes do grupo:** Laurinda da Silva Leite Correa e Monica Gomes de Souza Silva  

---

## Descrição do projeto
O **Mapeamento Urbano Colaborativo** é uma solução de tecnologia cívica e geoprocessamento participativo desenvolvida para democratizar o acesso à zeladoria urbana e combater a precariedade dos canais de comunicação tradicionais das prefeituras. 

O sistema foi delimitado para atender às demandas de infraestrutura relatadas pelos moradores de três bairros específicos:
* **Parque das Árvores** (São Paulo - SP)
* **Universitário** (Campo Grande - MS)
* **Núcleo Habitacional Buriti** (Campo Grande - MS)

Diferente de sistemas fechados, esta aplicação web dinâmica permite uma leitura coletiva e territorializada do espaço geográfico. Os moradores conseguem visualizar focos acumulados de problemas em tempo real (como falhas de iluminação, acúmulo de resíduos e buracos nas vias), fomentando a fiscalização cidadã, o controle social e apoiando a gestão municipal em aderência estrita ao **Objetivo de Desenvolvimento Sustentável (ODS) 11 da Agenda 2030**.

---

## Tecnologias e Frameworks utilizados
Alinhado com os pré-requisitos técnicos e modelos de qualidade estabelecidos pela norma **ISO/IEC 25010:2023**, o ecossistema utiliza:
* **HTML5 Semântico:** Para garantir acessibilidade estrutural e leitura precisa por tecnologias assistivas.
* **CSS3 & Bootstrap 5 (v5.3.0):** Framework utilitário de estilos empregado para garantir a responsividade (reorganização elástica em telas móveis e desktop) e padronização do *Box Model*.
* **JavaScript Nativo (ES6):** Controle de estados do DOM, eventos de interações e manipulação transacional na interface.
* **Leaflet.js API (v1.9.4) & OpenStreetMap:** Biblioteca cartográfica leve e servidor público de mapas (*Tiles*) para renderização dinâmica de marcadores temáticos e popups.
* **Google Material Icons:** Biblioteca de ícones vetoriais de alto contraste para acessibilidade visual.
* **SGBD PostgreSQL:** Infraestrutura de persistência relacional normalizada em Terceira Forma Normal (3FN) utilizando identificadores universais únicos (`UUID`) e cláusulas de barreira referencial (`ON DELETE RESTRICT`).

---

## Funcionalidades e Requisitos de acessibilidade (WCAG 2.2)
Para atender a usuários com diferentes níveis de letramento digital ou deficiências visuais, a aplicação incorpora um **Menu de acessibilidade flutuante** nativo, em conformidade com as diretrizes internacionais do **Web Content Accessibility Guidelines (WCAG 2.2)** do W3C:
* **Aumento/Diminuição de texto:** Redimensionamento dinâmico e flexível da escala tipográfica global sem quebras na diagramação gráfica.
* **Modo de alto contraste:** Inversão de cores da interface para paleta escura, garantindo as taxas de contraste cromático exigidas pela norma.
* **Protocolo anônimo rastreável:** Opção de registro de ocorrências preservando a identidade do cidadão através de chaves seguras, assegurando a integridade do fluxo e a aderência estrita às premissas de privacidade da Lei Geral de Proteção de Dados (LGPD).

---

##  Estrutura de Diretórios do Repositório

* [**MapeamentoColaborativo**](https://github.com/SheTechies/MapeamentoColaborativo)
  *  [**sql/**](https://github.com/SheTechies/MapeamentoColaborativo/tree/main/sql)
    *  [schema.sql](https://github.com/SheTechies/MapeamentoColaborativo/blob/main/sql/schema.sql) — Script oficial DDL (Estrutura, tabelas e chaves UUID no PostgreSQL)
  *  [index.html](https://github.com/SheTechies/MapeamentoColaborativo/blob/main/index.html) — Interface modular do front-end e renderização cartográfica
  *  [README.md](https://github.com/SheTechies/MapeamentoColaborativo/blob/main/README.md) — Documentação técnica do projeto (Este arquivo)

---

## Instruções de instalação e Uso

### Pré-requisitos
Para executar e testar o protótipo funcional e a modelagem de banco de dados, você necessita de:
1. Um computador ou smartphone com acesso à internet.
2. Um gerenciador de banco de dados relacional ou simulador (como o DB Fiddle) para executar o script contido na pasta [**/sql**](https://github.com/SheTechies/MapeamentoColaborativo/tree/main/sql).
3. Permissão de GPS ativa no navegador para capturar as coordenadas reais do hardware durante as postagens.

### Como rodar localmente
1. **Clonar o repositório:**
   ```bash
   git clone [https://github.com/seu-usuario/mapeamento-urbano-colaborativo.git](https://github.com/seu-usuario/mapeamento-urbano-colaborativo.git)
