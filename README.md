# Salesforce CPQ Bourne Demo

## Environment setup
Prerequisites:
- SFDX CLI installed to machine
- Dev Hub authorised through CLI
```bash
$ sfdx force:project:create -n cpq-bourne-demo
$ cd cpq-bourne-demo
$ sfdx force:org:create -a cpq-scratch -f config/project-scratch-def.json
$ sfdx force:package:install --package 04t4N000000N5OyQAK -u cpq-scratch
$ sfdx force:org:create -a cpq-scratch-2 -f config/project-scratch-def.json
$ sfdx force:package:install --package 04t4N000000N5OyQAK -u cpq-scratch-2
```