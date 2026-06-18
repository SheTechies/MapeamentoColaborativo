-- =================================================================
-- SCRIPT DE MODELAGEM FÍSICA RELACIONAL (POSTGRESQL)
-- PROJETO INTEGRADOR II
-- AUTORAS: LAURINDA CORREA E MONICA GOMES
-- =================================================================

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1. Tabela Papel
CREATE TABLE tbl_papeis (
    id_papel UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(30) NOT NULL UNIQUE
);

-- 2. Tabela Categoria
CREATE TABLE tbl_categorias (
    id_categoria UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(100) NOT NULL UNIQUE,
    descricao TEXT
);

-- 3. Tabela Bairro
CREATE TABLE tbl_bairros (
    id_bairro UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(150) NOT NULL,
    municipio VARCHAR(150) NOT NULL,
    uf VARCHAR(2) NOT NULL
);

-- 4. Tabela Localizacao
CREATE TABLE tbl_localizacoes (
    id_local UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    latitude NUMERIC(10, 8) NOT NULL,
    longitude NUMERIC(11, 8) NOT NULL,
    logradouro VARCHAR(255),
    id_bairro UUID NOT NULL,
    CONSTRAINT fk_localizacao_bairro FOREIGN KEY (id_bairro)
        REFERENCES tbl_bairros(id_bairro) ON DELETE RESTRICT
);

-- 5. Tabela Usuário
CREATE TABLE tbl_usuarios (
    id_usuario UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    id_papel UUID NOT NULL,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    consentimento_lgpd BOOLEAN DEFAULT FALSE NOT NULL,
    CONSTRAINT fk_usuario_papel FOREIGN KEY (id_papel)
        REFERENCES tbl_papeis(id_papel) ON DELETE RESTRICT
);

-- 6. Tabela Ocorrência
CREATE TABLE tbl_ocorrencias (
    id_ocorrencia UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    protocolo VARCHAR(50) NOT NULL UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT NOT NULL,
    data_abertura TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    prioridade VARCHAR(20) DEFAULT 'média' NOT NULL,
    status_atual VARCHAR(30) DEFAULT 'aberta' NOT NULL,
    id_usuario UUID,
    id_categoria UUID NOT NULL,
    id_local UUID NOT NULL,
    CONSTRAINT fk_ocorrencia_usuario FOREIGN KEY (id_usuario)
        REFERENCES tbl_usuarios(id_usuario) ON DELETE SET NULL,
    CONSTRAINT fk_ocorrencia_categoria FOREIGN KEY (id_categoria)
        REFERENCES tbl_categorias(id_categoria) ON DELETE RESTRICT,
    CONSTRAINT fk_ocorrencia_local FOREIGN KEY (id_local)
        REFERENCES tbl_localizacoes(id_local) ON DELETE RESTRICT
);
