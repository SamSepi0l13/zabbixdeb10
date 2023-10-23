# Adicionar o repositório do Zabbix e atualizar o sistema no Debian 10
echo "Adicionando o repositório do Zabbix e atualizando o sistema no Debian 10..."
wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-4+debian10_all.deb
dpkg -i zabbix-release_6.0-4+debian10_all.deb
apt update

# Instalar o Agente Zabbix 2 e seus plugins
echo "Instalando o Agente Zabbix 2 e seus plugins no Debian 10..."
apt install zabbix-agent2 zabbix-agent2-plugin-*

# Iniciar o serviço do Agente Zabbix 2
echo "Iniciando o serviço do Agente Zabbix 2..."
systemctl start zabbix-agent2

# Habilitar o serviço para iniciar automaticamente na inicialização do sistema
echo "Habilitando o serviço para iniciar automaticamente na inicialização do sistema..."
systemctl enable zabbix-agent2
cd /root
