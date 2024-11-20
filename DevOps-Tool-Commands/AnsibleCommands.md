
# Ansible Commands

## 1. **Inventory Management**
- List all hosts in the inventory:
  ```bash
  ansible all --list-hosts
  ```

- Check connectivity to all hosts:
  ```bash
  ansible all -m ping
  ```

- Run a command on all hosts:
  ```bash
  ansible all -a "uptime"
  ```

## 2. **Ad-Hoc Commands**
- Run a shell command:
  ```bash
  ansible all -m shell -a "df -h"
  ```

- Copy a file to remote hosts:
  ```bash
  ansible all -m copy -a "src=/local/path dest=/remote/path"
  ```

- Manage packages:
  - Install a package:
    ```bash
    ansible all -m yum -a "name=nginx state=present"
    ```
  - Remove a package:
    ```bash
    ansible all -m yum -a "name=nginx state=absent"
    ```

- Manage services:
  - Start a service:
    ```bash
    ansible all -m service -a "name=nginx state=started"
    ```
  - Stop a service:
    ```bash
    ansible all -m service -a "name=nginx state=stopped"
    ```

## 3. **Playbook Management**
- Run a playbook:
  ```bash
  ansible-playbook playbook.yml
  ```

- Run a playbook with a specific inventory:
  ```bash
  ansible-playbook -i inventory.ini playbook.yml
  ```

- Check a playbook's syntax:
  ```bash
  ansible-playbook playbook.yml --syntax-check
  ```

- Run a playbook in check mode (dry run):
  ```bash
  ansible-playbook playbook.yml --check
  ```

## 4. **Roles Management**
- Create a new role:
  ```bash
  ansible-galaxy init <role_name>
  ```

- List installed roles:
  ```bash
  ansible-galaxy list
  ```

- Install a role:
  ```bash
  ansible-galaxy install <role_name>
  ```

- Remove a role:
  ```bash
  ansible-galaxy remove <role_name>
  ```

## 5. **Gathering Facts**
- Collect and display facts:
  ```bash
  ansible all -m setup
  ```

- Display specific facts:
  ```bash
  ansible all -m setup -a "filter=ansible_facts_key"
  ```

## 6. **Vault Management**
- Encrypt a file:
  ```bash
  ansible-vault encrypt file.yml
  ```

- Decrypt a file:
  ```bash
  ansible-vault decrypt file.yml
  ```

- Edit an encrypted file:
  ```bash
  ansible-vault edit file.yml
  ```

- Create a new encrypted file:
  ```bash
  ansible-vault create file.yml
  ```

- Run a playbook with an encrypted file:
  ```bash
  ansible-playbook playbook.yml --ask-vault-pass
  ```

## 7. **Configuration and Logs**
- View Ansible configuration:
  ```bash
  ansible-config view
  ```

- Display Ansible environment variables:
  ```bash
  ansible-config dump
  ```

- Enable debug mode while running a playbook:
  ```bash
  ansible-playbook playbook.yml -vvv
  ```

## 8. **Miscellaneous**
- Check the version of Ansible:
  ```bash
  ansible --version
  ```

- Get help for a module:
  ```bash
  ansible-doc <module_name>
  ```

- List all available modules:
  ```bash
  ansible-doc -l
  ```

- Test inventory file:
  ```bash
  ansible-inventory --list
  ```

---

### Notes:
- Replace `all` with a specific host group or hostname from your inventory if needed.
- Ensure your inventory file is correctly configured and accessible.
