export ANSIBLE_HOME := justfile_directory() + "/ansible"

@ansible-requirements:
    ansible-galaxy install -r ansible/requirements.yml

@ansible-provision:
    ansible-playbook -i ansible/inventory.yml ansible/microk8s-lab.yml
