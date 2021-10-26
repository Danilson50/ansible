# Descrição das Pastas

Podemos ver os seguintes arquivos nas pastas:

|Pasta                |Conteúdo                 |
|----------------|-------------------------------|
|terraform|`Arquivos utilizados para criar o ambiente via Terraform`            
|Ansible|`Arquivos utilizados nos Playbooks do Ansible`
            |



# Iniciando Docker Terraform

 **Iniciando Amazon CLI**
```sh
  docker run -it --rm -v ${PWD}:/app -w /app --entrypoint sh  hashicorp/terraform:light
```
   **Pacotes Necessarios** 
```sh
 apk add ansible
 apk add py3-pip
 pip install pywinrm
 ansible-galaxy collection install ansible.windows
```


# Login da conta Amazon
***Configuração realizada dentro do docker***

```sh
export AWS_ACCESS_KEY_ID= ****
export AWS_SECRET_ACCESS_KEY= ****
```


# Comandos uteis no Ansible

***Acessar a pasta com os arquivos .tf***
```sh
ansible servidores_ubuntu -i ansible_host --user ubuntu --key-file /app/Ansible/terraform.pem -m ping
ansible servidores_windows -i ansible_host  -m win_ping
ansible-playbook  -i ansible_host  playbook.yml
```


# Apagar infraestrutura criada pelo Terraform
- Somente se foi utilizado ambiente AWS criado no inicio

```sh
cd terraform/
```
```sh
terraform destroy
 ```

 # Sair do Docker
 
```sh
exit
```
