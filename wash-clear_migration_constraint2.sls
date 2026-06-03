{% for washresource in ['caspian-vm', 'gale-webserver', 'admin_ip', 'wardrobe-vm', 'duffle-vm', 'helen-vm', 'drinian-vm'] %}
clear_{{ washresource }}_constraints:
   cmd.run:
     - name: crm resource clear {{ washresource }}
{% endfor %}
cleanup_all_resources:
  cmd.run:
    - name: crm resource cleanup
