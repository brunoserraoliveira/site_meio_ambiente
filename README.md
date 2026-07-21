# 🌿 Site Meio Ambiente - Clima em Ação (Serra Talhada)

Página web oficial desenvolvida pelo **NTI (Núcleo de Tecnologia da Informação)** da Prefeitura Municipal de Serra Talhada para a **Secretaria de Meio Ambiente**. 

O portal serve como uma central para divulgação de iniciativas ecológicas e captação de inscrições de projetos liderados pela juventude local frente aos desafios climáticos.

## 🚀 Funcionalidades e Estrutura

- **Frontend Otimizado:** Desenvolvido em HTML5 e CSS3 puro (sem frameworks pesados) para garantir carregamento ultrarrápido e compatibilidade máxima.
- **Design Responsivo:** Adaptado perfeitamente para dispositivos móveis, tablets e desktops (Mobile First).
- **Integração Google Forms:** Formulário de captação embutido (`iframe`) com ajuste de proporção para evitar quebra de layout.
- **Containerização:** Projeto 100% conteinerizado usando **Docker**.
- **Proxy e Segurança:** Orquestração de rotas e emissão automática de certificados SSL (HTTPS) gerenciados pelo **Traefik** no subdomínio `climaemacaost.ntidev.tech`.

## 🛠️ Tecnologias Utilizadas

- **HTML5 & CSS3** (Tipografia: Google Fonts - Poppins)
- **Docker & Docker Compose** (Imagem base: Nginx)
- **Traefik** (Proxy reverso e SSL Let's Encrypt)
- **GitHub Actions** (CI/CD Automático)
- **VPS Hostinger** (Ambiente de Produção - Ubuntu)

## 🔄 Pipeline de Deploy Automático (CI/CD)

Este projeto possui uma esteira de integração e entrega contínua (CI/CD) configurada no GitHub Actions (`.github/workflows/deploy.yml`). 

Sempre que um novo código é enviado (push) para a branch `main`, a pipeline:
1. Constrói uma nova imagem Docker.
2. Envia a imagem para o Docker Hub (`brunooliverserra/site_meio_ambiente:latest`).
3. Acessa a VPS Hostinger via SSH.
4. Faz o pull da nova imagem e atualiza os containers em produção sem tempo de inatividade.

## 💻 Como rodar localmente

Se precisar testar o container na sua máquina antes de subir:

1. Clone o repositório:
   ```bash
   git clone git@github.com:brunoserraoliveira/site_meio_ambiente.git