# Docker
Repositório para temas referente ao Docker

#### Índice
1. [Documentação docker](#Documentação-docker)
2. [Download docker](#Download-docker)
3. [Instalação](#Instalação)
	1. [Windows](#InstW)
	2. [Linux](#InstL)
4. [Executar ambiente docker](#Executar-ambiente-docker)
	1. [Para verificar a versão](#version)
	2. [Imagens](#image)
		1. [Download image](#download)
		2. [Construir uma imagem](#build)
		3. [Remover uma imagem](#rmi)
	3. [Container](#container)
		1. [Criar container ](#criar)
		2. [Executar docker container](#executar)
		3. [Acessar container docker](#acess)
		4. [Sair do container docker](#exit)
		5. [Parar container](#stop)
		6. [Iniciar um container parado](#play)
		7. [Parar container](#pause)
		8. [Status de um container](#stats)
		9. [Logs do container](#logs)
		10. [Poder de processamento do consumido pelo container](#power)
		11. [Remover um container](#rm)
5. [Arquivo Dockerfile](#dockerfile)
	1. [Tags Docker](#tgsdockerfile)
6. [Docker --help](#dockerhelp)
7. [Docker-compose](#Docker-compose)
	1. [Iniciar ambiente com container](#Docker-compose-start)
	2. [Verificar container iniciados com docker-compose](#Docker-compose-container)
	3. [Docker-compose --help](#Docker-compose-help)




## [1. Documentação docker](https://docs.docker.com/docker-for-windows/install/) <a name="Documentação-docker"></a>

## [2. Download docker](https://hub.docker.com/editions/community/docker-ce-desktop-windows/) <a name="Download-docker"></a>

## 3. Instalação <a name="Instalação"></a>

#### 3.1 Windows <a name="InstW"></a>

- Clique duas vezes em Docker Desktop Installer.exe para executar o instalador.

- Quando solicitado, certifique-se de que a opção Ativar recursos do Windows do Hyper-V esteja selecionada na página Configuração.

- Siga as instruções do assistente de instalação para autorizar o instalador e continue com a instalação.

- Quando a instalação for bem-sucedida, clique em Fechar para concluir o processo de instalação.

- Se a sua conta de administrador for diferente da sua conta de usuário, você deve adicionar o usuário ao grupo docker-users . Execute o  Gerenciamento do computador  como administrador e navegue até  Usuários e grupos locais > Grupos  >  docker-users . Clique com o botão direito para adicionar o usuário ao grupo. Saia e faça login novamente para que as alterações tenham efeito.

- OBS.: O recurso de contêiner do Windows está disponível no Windows Server, Windows Server 2019, Windows Server 2016 e Windows 10 Professional e Enterprise Editions (versão 1607 e posterior).
- A função Hyper-V deve ser instalada antes de executar o isolamento do Hyper-V
- Os hosts de contêiner do Windows Server devem ter o Windows instalado na unidade c:. Essa restrição não se aplica se apenas os contêineres isolados do Hyper-V forem implantados.
- No windows deve estar instalado o WSL e WSL2 para uso dos comandos Docker.  

### [3.2 Link Requisitos Minimos](https://docs.microsoft.com/pt-br/virtualization/windowscontainers/deploy-containers/system-requirements) <a name="Requisitos minimos:"></a>

### [3.3 Link Instalação do WSL e WSL 2 no windows 10](https://docs.microsoft.com/pt-br/windows/wsl/install-win10) <a name="Instalação do WSL e WSL 2 no windows 10:"></a>


#### 3.4 Linux <a name="InstL"></a>

- Primeiro, atualize sua lista atual de pacotes:
```shell
sudo apt update
```
- Em seguida, instale alguns pacotes de pré-requisitos que permitem que o apt utilize pacotes via HTTPS:
```shell
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```
- Então adicione a chave GPG para o repositório oficial do Docker em seu sistema:
```shell
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
- Adicione o repositório do Docker às fontes do APT:
```shell
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
``` 
- A seguir, atualize o banco de dados de pacotes com os pacotes Docker do repositório recém adicionado:
```shell
sudo apt update
```
- Instale o Docker:
```shell
sudo apt install docker-ce
```

## 4. Executar ambiente docker <a name="Executar-ambiente-docker"></a>


#### 4.1 Para verificar a versão <a name="version"></a>
```shell
docker version
```

### 4.2 Imagens <a name="image"></a>

#### 4.2.1 Download image <a name="download"></a>
```shell
docker pull debian
```

#### 4.2.2 Construir uma imagem <a name="build"></a>
```shell
docker build -t <imagem_name> .
``` 
Ou 
```shell
docker build -t <imagem_name> <arquivo>
```

	Parâmetros:
	- t Para definir o nome da imagem.

#### 4.2.3 Remover uma imagem <a name="rmi"></a>
```shell
docker rmi image
```

### 4.3 Container <a name="container"></a>

#### Criar container <a name="criar"></a>
```shell
docker container run <opções> <image>
```

#### 4.3.1 Executar docker container <a name="executar"></a>
```shell
docker run hello-world
```

	Parâmetros:
	- t Para que se tenha um terminal de console no container.
	- i Para que se tenha uma interatividate com o container.
	- d Para rodar o container como um processo, em background.
	- --name define um nome para o container.

#### 4.3.2 Acessar container docker <a name="acess"></a>
```shell
docker ps -a
docker exec -it <container> bash
```

#### 4.3.3 Sair do container docker <a name="exit"></a>
```shell
exit
```

#### 4.3.4 Parar container  <a name="stop"></a>
```shell
docker stop <container_id/container_name>
```

#### 4.3.5 Iniciar um container parado  <a name="play"></a>
```shell
docker start <container_id/container_name>
```

#### 4.3.6 Pausar um container  <a name="pause"></a>
```shell
docker pause <container_id/container_name>
```

#### 4.3.7 Retomar um container da pausa <a name="playpause"></a>
```shell
docker unpause <container_id/container_name>
```

#### 4.3.8 Status de um container <a name="stats"></a>
```shell
docker stats <container_id/container_name>
```

#### 4.3.9 Logs do container <a name="logs"></a>
```shell
docker logs <container_id/container_name>
```

#### 4.3.10 Poder de processamento do consumido pelo container <a name="power"></a>
```shell
docker top <container_id/container_name>
```

#### 4.3.11 Remover um container <a name="rm"></a>
```shell
docker rm <container_id/container_name>
```

#### 4.3.12 Comando pesquisa versoes de imagens disponiveis no docker hub, exemplo abaixo pesquisa imagens disponiveis da Distro Debian:  <a name="search"></a>
```shell
docker search debian
```
#### 4.3.13 demonstra todas as altrações dentro de um container <a name="diff"></a>
```shell
docker diff <container_id/container_name>
```

## 5. Arquivo Dockerfile <a name="dockerfile"></a>

#### 5.1 Tags Docker <a name="tagsdockerfile"></a>

- <b>FROM</b>: Set da imagem base através da instrução FROM seguida pelo nome da imagem que queremos utilizar.

- <b>LABEL</b>: Definir informações sobre a nossa imagem.

- <b>RUN</b>: Responsável por executar comandos conhecidos pelo shell ou linux.

- <b>COPY</b>: Responsável por copiar arquivos de fora para dentro da imagem.

- <b>VOLUME</b>: salva os arquivos em nossa máquina física, para não serem apagados ao remover os containers.

- <b>EXPOSE</b>: Responsável por expor uma porta para acesso no container. Lembrando que a instrução EXPOSE não faz o mapeamento de porta, apenas deixa explícito que uma determinada porta pode ser mapeada durante a criação do container que utilizar essa imagem.

- <b>ENV</b>: Responsável por definir váriaveis de ambiente.

- <b>WORKDIR</b>: Definir a pasta de trabalho de nosso container, ela é a pasta que será direcionado quando acessarmos nosso container.

- <b>ENTRYPOINT</b>: define um caminho onde o comando informado é executado no CMD.

- <b>CMD</b>: Executa uma instrução para o docker.		


## 6. Docker --help <a name="dockerhelp"></a>
```
Usage:  docker [OPTIONS] COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default
                           "C:\\Users\\Infra\\.docker")
  -c, --context string     Name of the context to use to connect to the
                           daemon (overrides DOCKER_HOST env var and
                           default context set with "docker context use")
  -D, --debug              Enable debug mode
  -H, --host list          Daemon socket(s) to connect to
  -l, --log-level string   Set the logging level
                           ("debug"|"info"|"warn"|"error"|"fatal")
                           (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default
                           "C:\\Users\\Infra\\.docker\\ca.pem")
      --tlscert string     Path to TLS certificate file (default
                           "C:\\Users\\Infra\\.docker\\cert.pem")
      --tlskey string      Path to TLS key file (default
                           "C:\\Users\\Infra\\.docker\\key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  app*        Docker App (Docker Inc., v0.9.1-beta3)
  builder     Manage builds
  buildx*     Build with BuildKit (Docker Inc., v0.4.2-docker)
  config      Manage Docker configs
  container   Manage containers
  context     Manage contexts
  image       Manage images
  manifest    Manage Docker image manifests and manifest lists
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  scan*       Docker Scan (Docker Inc., v0.5.0)
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  trust       Manage trust on Docker images
  volume      Manage volumes

Commands:
  attach      Attach local standard input, output, and error streams to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.
To get more help with docker, check out guides at https://docs.docker.com/go/guides/
```

## 7. Docker-compose <a name="docker-compose"></a>

#### 7.1 Iniciar ambiente com container <a name="docker-compose-start"></a>
```shell
docker-compose up
```

	Parâmetros:
	-d Libera o terminal para uso.

#### 7.2 Verificar container iniciados com docker-compose <a name="docker-compose-containers"></a>
```shell
docker-compose ps
```

#### 7.2 Docker-compose --help <a name="docker-compose-help"></a>
```shell
Define and run multi-container applications with Docker.

Usage:
  docker-compose [-f <arg>...] [options] [COMMAND] [ARGS...]
  docker-compose -h|--help

Options:
  -f, --file FILE             Specify an alternate compose file
                              (default: docker-compose.yml)
  -p, --project-name NAME     Specify an alternate project name
                              (default: directory name)
  --verbose                   Show more output
  --log-level LEVEL           Set log level (DEBUG, INFO, WARNING, ERROR, CRITICAL)
  --no-ansi                   Do not print ANSI control characters
  -v, --version               Print version and exit
  -H, --host HOST             Daemon socket to connect to

  --tls                       Use TLS; implied by --tlsverify
  --tlscacert CA_PATH         Trust certs signed only by this CA
  --tlscert CLIENT_CERT_PATH  Path to TLS certificate file
  --tlskey TLS_KEY_PATH       Path to TLS key file
  --tlsverify                 Use TLS and verify the remote
  --skip-hostname-check       Don't check the daemon's hostname against the
                              name specified in the client certificate
  --project-directory PATH    Specify an alternate working directory
                              (default: the path of the Compose file)
  --compatibility             If set, Compose will attempt to convert deploy
                              keys in v3 files to their non-Swarm equivalent

Commands:
  build              Build or rebuild services
  bundle             Generate a Docker bundle from the Compose file
  config             Validate and view the Compose file
  create             Create services
  down               Stop and remove containers, networks, images, and volumes
  events             Receive real time events from containers
  exec               Execute a command in a running container
  help               Get help on a command
  images             List images
  kill               Kill containers
  logs               View output from containers
  pause              Pause services
  port               Print the public port for a port binding
  ps                 List containers
  pull               Pull service images
  push               Push service images
  restart            Restart services
  rm                 Remove stopped containers
  run                Run a one-off command
  scale              Set number of containers for a service
  start              Start services
  stop               Stop services
  top                Display the running processes
  unpause            Unpause services
  up                 Create and start containers
  version            Show the Docker-Compose version information
```