# Anchore Engine Cloudformation Template

Anchore Engine on AWS via Cloudformation

 - Single Ubuntu 16.04 EC2 instance
 - Anchore Engine with Docker Compsoe

1. Pull down https://raw.githubusercontent.com/valancej/Anchore-Engine-Cloudformation/master/AnchoreEngine.yaml
2. Update KeyName property in AnchoreEngine.yaml to your AWS key pair name.
3. Update inbound rules to authorize only a specific IP address or range of addresses to access your instance.
3. Run following command: `aws cloudformation create-stack --stack-name anchore-engine --template-body file://AnchoreEngine.yaml`

Optional:

Install Anchore-CLI: https://github.com/anchore/anchore-cli 