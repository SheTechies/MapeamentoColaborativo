# Mapeamento Urbano Colaborativo - Plataforma de Zeladoria e Cidadania Digital

##  Projeto de Extensão Acadêmica
* **Instituição:** Universidade Federal de Mato Grosso do Sul (UFMS)  
* **Unidade:** Agência de Educação Digital e a Distância (AGEAD / UFMS Digital)  
* **Curso:** Graduação em Tecnologia da Informação  
* **Disciplina:** Projeto Integrador de Tecnologia da Informação II  
* **Banca Examinadora:** Avaliação do Módulo 2 – Desenvolvimento Web com Frameworks e HTML/CSS  
* **Integrantes do Grupo:** Laurinda da Silva Leite Correa e Monica Gomes de Souza Silva  

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
Alinhado com os pré-requisitos técnicos e modelos de qualidade estabelecidos pela norma **ISO/IEC 25010:2023**, o front-end dinâmico utiliza:
* **HTML5 Semântico:** Para garantir acessibilidade estrutural e leitura precisa por tecnologias assistivas.
* **CSS3 & Bootstrap 5 (v5.3.0):** Framework utilitário de estilos empregado para garantir a responsividade (reorganização elástica em telas móveis e desktop) e padronização do *Box Model*.
* **JavaScript Nativo (ES6):** Controle de estados do DOM, eventos de curtidas/comentários e manipulação transacional.
* **Leaflet.js API (v1.9.4):** Biblioteca cartográfica leve usada para renderizar mapas, popups informativos e marcadores temáticos.
* **OpenStreetMap API:** Provedor e servidor público de mapas (*Tiles*).
* **Google Material Icons:** Biblioteca de ícones vetoriais de alto contraste para acessibilidade visual.

---

## Funcionalidades e Requisitos de acessibilidade (WCAG 2.2)
Para atender a usuários com diferentes níveis de letramento digital ou deficiências visuais, a aplicação incorpora um **Menu de acessibilidade flutuante** nativo, em conformidade com as diretrizes internacionais do **Web Content Accessibility Guidelines (WCAG 2.2)** do W3C:
* **Aumento/Diminuição de texto:** Redimensionamento dinâmico e flexível da escala tipográfica global sem quebras na diagramação gráfica.
* **Modo de alto contraste:** Inversão de cores da interface para paleta escura, garantindo as taxas de contraste cromático exigidas pela norma.
* **Protocolo anônimo rastreável:** Opção de login sem e-mail, gerando um token identificador baseado em *timestamp* que assegura a integridade do fluxo e protege o cidadão em denúncias sensíveis (Conformidade com a LGPD).

---

## Modelagem de persistência e Visão futura (UML)
Nesta fase do protótipo, a persistência de dados das ocorrências, curtidas, fotos e comentários é executada no lado do cliente (*client-side*) via strings JSON gravadas no `localStorage` do navegador. 
Esta decisão técnica simula as regras de integridade e os atributos de chaves primárias e relacionamentos projetados no **Diagrama de Classes UML** e as chamadas assíncronas do **Diagrama de Sequência UML** do grupo. Futuramente, pretende-se substituir a camada de dados local por chamadas REST da API (`fetch`) conectadas de forma robusta ao banco de dados relacional **PostgreSQL**.

---

## Instruções de instalação e Uso

### Pré-requisitos
Para executar e testar o protótipo funcional, você necessita apenas de:
1. Um computador ou smartphone com acesso à internet.
2. Um navegador web moderno atualizado (Google Chrome, Mozilla Firefox, Microsoft Edge ou Safari).
3. Permissão de GPS ativa no navegador para capturar as coordenadas reais do hardware durante as postagens (caso negado, o sistema aplica automaticamente coordenadas da região central de Campo Grande-MS).

### Como rodar localmente
1. **Clonar o repositório:**
   ```bash
   git clone [https://github.com/seu-usuario/mapeamento-urbano-colaborativo.git](https://github.com/seu-usuario/mapeamento-urbano-colaborativo.git)
