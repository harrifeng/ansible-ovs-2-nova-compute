



## TOTAL
#ansible-playbook -i hosts   site.yml


## per roles
#ansible-playbook -i hosts   run_role.yml   -e "ROLE=docker-stop"  -e "TARGET=localhost"
ansible-playbook -i hosts   run_role.yml   -e "ROLE=common"       -e "TARGET=localhost"
#ansible-playbook -i hosts   run_role.yml   -e "ROLE=network"      -e "TARGET=localhost"
#ansible-playbook -i hosts   run_role.yml   -e "ROLE=config-nova"  -e "TARGET=localhost"
#ansible-playbook -i hosts   run_role.yml   -e "ROLE=docker-start" -e "TARGET=localhost"
#ansible-playbook -i hosts   run_role.yml   -e "ROLE=post-config"  -e "TARGET=localhost"



