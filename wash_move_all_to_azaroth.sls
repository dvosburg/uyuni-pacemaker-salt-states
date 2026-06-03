# Move resources from aslan cluster node to azaroth
# helen-vm
{% set output = salt['cmd.run']('crm resource locate helen-vm') %}
 {% if 'aslan' in output %}
move_helen-vm_azaroth:
  cmd.run:
    - name: crm resource move helen-vm azaroth

{% else %}
show_helen-vm_location:
   cmd.run:
     - name: crm resource locate helen-vm
{% endif %}

# gale-webserver
{% set output = salt['cmd.run']('crm resource locate gale-webserver') %}
 {% if 'aslan' in output %}
move_gale-webserver_azaroth:
  cmd.run:
    - name: crm resource move gale-webserver azaroth


{% else %}
show_gale-webserver_location:
   cmd.run:
     - name: crm resource locate gale-webserver
{% endif %}


# drinian-vm
{% set output = salt['cmd.run']('crm resource locate drinian-vm') %}
 {% if 'aslan' in output %}
move_drinian-vm_azaroth:
  cmd.run:
    - name: crm resource move drinian-vm azaroth


{% else %}
show_drinian-vm_location:
   cmd.run:
     - name: crm resource locate drinian-vm
{% endif %}

# caspian-vm
{% set output = salt['cmd.run']('crm resource locate caspian-vm') %}
 {% if 'aslan' in output %}
move_caspian-vm_azaroth:
  cmd.run:
    - name: crm resource move caspian-vm azaroth


{% else %}
show_caspian-vm_location:
   cmd.run:
     - name: crm resource locate caspian-vm
{% endif %}

# wardrobe-vm
{% set output = salt['cmd.run']('crm resource locate wardrobe-vm') %}
 {% if 'aslan' in output %}
move_wardrobe-vm_azaroth:
  cmd.run:
    - name: crm resource move wardrobe-vm azaroth

{% else %}
show_wardrobe-vm_location:
   cmd.run:
     - name: crm resource locate wardrobe-vm
{% endif %}

# admin_ip
{% set output = salt['cmd.run']('crm resource locate admin_ip') %}
 {% if 'aslan' in output %}
move_admin_ip_azaroth:
  cmd.run:
    - name: crm resource move admin_ip azaroth

{% else %}
show_admin_ip_location:
   cmd.run:
     - name: crm resource locate admin_ip
{% endif %}

# duffle-vm
{% set output = salt['cmd.run']('crm resource locate duffle-vm') %}
 {% if 'aslan' in output %}
move_duffle-vm_azaroth:
  cmd.run:
    - name: crm resource move duffle-vm azaroth


{% else %}
show_duffle-vm_location:
   cmd.run:
     - name: crm resource locate duffle-vm
{% endif %}
