source ../../.env.sh
export AWS_DEFAULT_REGION="eu-west-1"
export runner_version="runner_version=2.313.0"
export security_group_id="security_group_id=sg-34f27651"
export custom_shell_commands='custom_shell_commands=["sudo apt-get -y install python3-pip","sudo python3 -m pip install pipx","sudo python3 -m pipx ensurepath","sudo pipx --version","sudo apt-get -y install python3.8-venv","sudo pipx install cumulusci","sudo pipx ensurepath"]'

packer init .
packer validate -var "$runner_version" -var "$security_group_id" -var "$custom_shell_commands" .
packer build -var "$runner_version" -var "$security_group_id" -var "$custom_shell_commands" github_agent.ubuntu.pkr.hcl