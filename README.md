# Anchore Engine Cloudformation Template

Anchore Engine on AWS via Cloudformation

1. Pull down AnchoreEngine.yaml
2. Update KeyName property in AnchoreEngine.yaml to your AWS key pair name.
3. Run following command: `aws cloudformation create-stack --stack-name anchore-engine --template-body file://AnchoreEngine.yaml`