# Salesforce CPQ Bourne Demo

## Environment setup
Prerequisites:
- SFDX CLI installed to machine
- Dev Hub authorised through CLI with at least 2 scratch org allocations free

## Demo
1. Setup for Org 1
```bash
$ sfdx force:project:create -n cpq-bourne-demo
$ cd cpq-bourne-demo
$ sfdx force:org:create -a cpq-scratch -f config/project-scratch-def.json
$ sfdx force:package:install --package 04t4N000000N5OyQAK -u cpq-scratch
$ sfdx force:package:install --package 04t2v0000007RE9 -u cpq-scratch
$ sfdx force:user:permset:assign -n JsonBourneSfdx -u cpq-scratch
$ sfdx force:source:push -u cpq-scratch
$ sfdx force:user:permset:assign -n Migration_ID_FLS -u cpq-scratch
```
2. Create CPQ configuration
3. Extract CPQ configuration
```bash
$ mkdir data
$ sfdx bourne:export -u cpq-scratch -c config/bourne-config.json -a
```
4. Setup for Org 2
```bash
$ sfdx force:org:create -a cpq-scratch-2 -f config/project-scratch-def.json
$ sfdx force:package:install --package 04t4N000000N5OyQAK -u cpq-scratch-2
$ sfdx force:package:install --package 04t2v0000007RE9 -u cpq-scratch-2
$ sfdx force:user:permset:assign -n JsonBourneSfdx -u cpq-scratch-2
$ sfdx force:source:push -u cpq-scratch-2
$ sfdx force:user:permset:assign -n Migration_ID_FLS -u cpq-scratch-2
```
5. Import CPQ configuration
```bash
$ sfdx bourne:import -u cpq-scratch-2 -c config/bourne-config.json -a
```