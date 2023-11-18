-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/11/2023 às 04:13
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ong`
--
CREATE DATABASE IF NOT EXISTS `ong` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ong`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `apoie`
--

CREATE TABLE `apoie` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `imagem_home` varchar(100) NOT NULL,
  `id_noticias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `imagem_noticias` varchar(100) NOT NULL,
  `conteudo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `imagem_noticias`, `conteudo`) VALUES
(1, 'img2.webp', 'Como o TEA pode afetar a visão?\r\nO Transtorno do Espectro Autista pode influenciar a percepção visual das pessoas de maneiras diversas.\r\n\r\nAlguns indivíduos com o transtorno experimentam hipersensibilidade ou hipossensibilidade visual, tornando-os extremamente sensíveis ou menos sensíveis a estímulos visuais intensos, como luzes brilhantes ou cores vibrantes.\r\n\r\nIsso pode resultar em desconforto v'),
(2, 'img3.png', 'Crescimento anormal de estrutura cerebral em bebês pode estar relacionado ao autismo\r\nJá se sabia que a amígdala é significativamente maior em crianças em idade escolar diagnosticadas com autismo. Mas, agora, pela primeira vez, pesquisadores da Rede Infantil Brain Imaging Study (IBIS), que inclui a Universidade de Washington, usaram imagens de ressonância magnética (RM) para demonstrar que a amígd'),
(3, 'img4.png', 'Ocitocina intranasal e interação social positiva melhoram os sintomas no autismo\r\nUm recente estudo publicado no medRxiv.org afirma que a nova ocitocina intranasal em dose reduzida, seguida por um período de interação social positiva, melhorou os sintomas em crianças pequenas com transtorno do espectro do autismo.\r\n\r\nEste é o primeiro estudo controlado por placebo a demonstrar mudanças na pontuaçã'),
(4, 'img5.png', 'Marcadores na saliva são relacionados a distúrbios intestinais em crianças com autismo\r\nUm grupo de pesquisadores identificou marcadores na saliva que expressam diferenças em crianças com autismo que apresentam distúrbios gastrointestinais. O estudo foi publicado na Frontiers in Psychiatry e afirma que essa descoberta marca o início de uma compreensão das diferenças biológicas que separam crianças'),
(6, 'img7.webp', 'Novo algoritmo poderia detectar autismo em “impressões digitais” do cérebro\r\nPesquisadores de Stanford desenvolveram um algoritmo que pode ajudar a discernir se alguém tem autismo ao analisar exames cerebrais. Segundo o estudo publicado no Journal of Psychiatric Neuroscience and Therapeutics, o novo algoritmo, impulsionado pelos por inteligência artificial (IA), também prevê a gravidade dos sintomas do autismo em pacientes de forma individual.\r\n\r\nDe acordo com os pesquisadores, o algoritmo analisa os dados coletados por meio de exames de ressonância magnética funcional. Assim, essas varreduras capturam padrões de atividade neural em todo o cérebro. Ao mapear essa atividade ao longo do tempo nas muitas regiões do cérebro, o algoritmo gera “impressões digitais” da atividade neural. Embora únicas para cada indivíduo, assim como as impressões digitais reais, as impressões digitais cerebrais compartilham características semelhantes, permitindo que sejam classificadas.\r\n\r\nO algoritmo selecio'),
(7, 'img8.jpeg', 'O autismo é um conjunto de condições caracterizadas por alteração do comportamento social, da comunicação, da linguagem e\r\npor um repertório restrito de interesses e atividades.\r\n\r\nExistem aproximadamente 70 milhões de autistas no mundo e 2 milhões no Brasil (ONU).\r\nPesquisas da CDC indicam que 1 em cada 36 crianças é autista.\r\n\r\nPor esses dados em torno de 1 à 2% da população está no espectro autista,\r\ncom margem para ampliação.\r\n\r\nHá mais crianças autistas do que com câncer, diabetes, aids/hiv, síndrome de down e paralisia conjuntamente.\r\n\r\nResumidamente, o Transtorno do Espectro Autista (TEA) é um distúrbio do neurodesenvolvimento que se estende por toda a vida e afeta os indivíduos em graus variados.\r\n\r\nE, ao contrário de outros distúrbios, o TEA afeta cada um de um modo diferente, do mesmo que e a gravidade dos sintomas pode variar de leve a grave. \r\n\r\nEm geral, o TEA é diagnosticado já na primeira infância, embora algumas pessoas possam não receber o diagnóstico até mais tarde na'),
(8, 'img9.webp', 'Alguns sinais de autismo já podem aparecer a partir de um ano e meio de idade, até mesmo antes em casos mais graves. Há uma grande importância de se iniciar o tratamento o quanto antes — mesmo que ainda seja apenas uma suspeita clínica, ainda sem diagnóstico fechado —, pois quanto antes comecem as intervenções, maiores são as possibilidade de melhorar a qualidade de vida da pessoa. O tratamento psicológico com mais evidência de eficácia, segundo a Associação Americana de Psiquiatria, é a terapia de intervenção comportamental — aplicada por psicólogos. A mais usada delas é ABA (sigla em inglês para Applied Behavior Analysis — em português, análise aplicada do comportamento). O tratamento para autismo é personalizado e interdisciplinar, ou seja, além da psicologia, pacientes podem se beneficiar com intervenções de fonoaudiologia, terapia ocupacional, entre outros profissionais, conforme a necessidade de cada autista. Na escola, um mediador pode trazer grandes benefícios, no aprendizado e');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sobre`
--

CREATE TABLE `sobre` (
  `id` int(11) NOT NULL,
  `imagem_sobre` varchar(100) NOT NULL,
  `conteudo_sobre` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sobre`
--

INSERT INTO `sobre` (`id`, `imagem_sobre`, `conteudo_sobre`) VALUES
(1, 'img6.png', 'Sobre a Nossa ONG: Transformando Vidas, Construindo Esperança\r\nSeja bem-vindo, aqui é um espaço dedicado à transformação social e ao cultivo de um futuro mais promissor. Fundada com a missão de fazer a diferença na vida das pessoas e comunidades que atendemos, nossa organização é impulsionada por valores de solidariedade, empatia e comprometimento.\r\n\r\nQuem Somos:\r\nSomos uma equipe diversificada e apaixonada, unida por um propósito comum: criar um impacto positivo e duradouro na sociedade. Com membros dedicados, desde voluntários até profissionais especializados, trabalhamos de mãos dadas para enfrentar os desafios mais prementes da nossa comunidade.\r\n\r\nNossa Missão:\r\nNa ONG, acreditamos que cada pessoa merece a oportunidade de prosperar. Nossa missão é proporcionar acesso a recursos, educação e apoio necessários para capacitar indivíduos e comunidades a superar obstáculos e alcançar seu pleno potencial.');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `apoie`
--
ALTER TABLE `apoie`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_noticias` (`id_noticias`);

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sobre`
--
ALTER TABLE `sobre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `apoie`
--
ALTER TABLE `apoie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `sobre`
--
ALTER TABLE `sobre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `home`
--
ALTER TABLE `home`
  ADD CONSTRAINT `fk1_noticias` FOREIGN KEY (`id_noticias`) REFERENCES `noticias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
