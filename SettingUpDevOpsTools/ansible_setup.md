# Setting Up Ansible on Your Machine

## 1. Install Ansible

Ansible can be installed using your package manager or via `pip`. Below are instructions for common operating systems:

### For CentOS Stream 9
1. Enable the EPEL repository:
   ```bash
   sudo dnf install epel-release -y
   ```
2. Install Ansible:
   ```bash
   sudo dnf install ansible -y
   ```

### For Ubuntu
1. Update the package list:
   ```bash
   sudo apt update
   ```
2. Install Ansible:
   ```bash
   sudo apt install ansible -y
   ```

### For Other Distributions
Refer to the [official Ansible installation guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) for distribution-specific instructions.

---

## 2. Verify Ansible Installation

Run the following command to confirm the installation:
```bash
ansible --version
```

Example output:
```plaintext
ansible [core 2.15.0]
  config file = /etc/ansible/ansible.cfg
  python version = 3.9.2
  jinja version = 3.1.2
```

---

## 3. Set Up Ansible Configuration

1. Create a working directory for Ansible, e.g., `~/ansible`:
   ```bash
   mkdir ~/ansible && cd ~/ansible
   ```
2. Create or edit an `ansible.cfg` file in this directory:
   ```ini
   [defaults]
   inventory = ./inventory
   host_key_checking = False
   become = True
   become_method = sudo
   ```

---

## 4. Configure the Inventory File

Create an `inventory` file in your working directory to define the managed nodes:
```ini
[all]
192.168.241.141 ansible_user=kumsam ansible_ssh_pass=your_password ansible_become_password=your_sudo_password
```

Replace:
- `192.168.241.141` with your target machine's IP address.
- `your_password` with the SSH password for the user.
- `your_sudo_password` with the user's sudo password.

If you're using SSH keys, omit `ansible_ssh_pass` and use an SSH key setup.

---

## 5. Test the Connection

Run a simple Ansible ping command to ensure Ansible can connect to the target machine:
```bash
ansible -m ping all
```

Expected output:
```plaintext
192.168.241.141 | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```

---

## 6. Write and Run Playbooks

1. Create a playbook file, e.g., `test_playbook.yml`:
   ```yaml
   - name: Test Playbook
     hosts: all
     tasks:
       - name: Ping the host
         ping:
   ```

2. Run the playbook:
   ```bash
   ansible-playbook test_playbook.yml
   ```

---

Let me know if you need further assistance configuring or troubleshooting!
