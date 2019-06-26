# audit-demo

# note
only windows and ubuntu are supported platform families at this time

# How to utilize this cookbook
Add this cookbook to your berksfile
```ruby
cookbook 'audit-demo', git: 'https://github.com/chef-customers/audit-demo'
```

# Prerequisites
1. Upload the included rules and notifications using knife-analytics
```
for rule in $(ls rules); do knife rule create $rule;done
for notif in $(ls notifications); do knife notification create $notif;done
```

# Walkthrough - Ubuntu - Purely controls
1. add the default recipe from this cookbook to your nodes run_list
2. after a first chef-client with audit_mode enabled (`chef-client --audit-mode enabled`) run you should see the telnet control fail and log a message to hipchat (the Demo - System Integrity room)
![](https://s3.amazonaws.com/uploads.hipchat.com/7557/932165/yRnUmetnGCTVcni/upload.png)
3. add the ubuntu-remediation recipe to your nodes run_list and execute another run
4. all controls should report green after the telnet package is removed from the machine, these should show up in hipchat

# Walkthrough - Windows - Controls and Rules
1. add the default recipe from this cookbook to your nodes run_list
2. after a first chef-client with audit_mode enabled (`chef-client --audit-mode enabled`) run you should see all of the controls fail if the machine is not already a webserver
3. add the windows-remediate recipe to your machines run_list and complete another run, all of the audit controls should pass and verify that your machine has been setup correctly
4. now add the windows-admin-group recipe to your nodes run_list and execute a run
5. your analytics server should trigger an alert as well as notify hipchat that the Administrators group was modified on the node
6. run chef again and note that the notification does not trigger
7. manually delete the generated user through the control panel and trigger another run
8. note that the notification is again triggered

