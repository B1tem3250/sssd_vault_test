default['sssd_ldap']['sssd_conf_sensitive'] = false
default['sssd_ldap']['filter_users'] = %w(root named avahi haldaemon dbus radiusd news nscd)
default['sssd_ldap']['filter_groups'] = %w(root named avahi haldaemon dbus radiusd news nscd)
default['sssd_ldap']['sssd_conf']['debug_level'] = '3'
default['sssd_ldap']['sssd_conf']['autofs_provider'] = 'ldap'
default['sssd_ldap']['sssd_conf']['id_provider'] = 'ldap'
default['sssd_ldap']['sssd_conf']['auth_provider'] = 'ldap'
default['sssd_ldap']['sssd_conf']['enumerate'] = 'False'
default['sssd_ldap']['sssd_conf']['pam_id_timeout'] = '600'
default['sssd_ldap']['sssd_conf']['ldap_referrals'] = 'False'
default['sssd_ldap']['sssd_conf']['cache_credentials'] = 'true'
default['sssd_ldap']['sssd_conf']['ldap_schema'] = 'AD'
default['sssd_ldap']['sssd_conf']['ldap_id_mapping'] = 'True'
default['sssd_ldap']['sssd_conf']['ldap_opt_timeout'] = '60'
default['sssd_ldap']['sssd_conf']['ldap_network_timeout'] = '60'
default['sssd_ldap']['sssd_conf']['ldap_search_timeout'] = '60'
default['sssd_ldap']['sssd_conf']['ldap_page_size'] = '2000'
default['sssd_ldap']['sssd_conf']['case_sensitive'] = 'False'
default['sssd_ldap']['sssd_conf']['ldap_force_upper_case_realm'] = 'False'
default['sssd_ldap']['sssd_conf']['ldap_uri'] = 'ldap://10.0.0.1, ldap://10.0.0.2'
default['sssd_ldap']['sssd_conf']['ldap_user_search_base'] = 'dc=company,dc=co,dc=za'
default['sssd_ldap']['sssd_conf']['ldap_user_object_class'] = 'user'
default['sssd_ldap']['sssd_conf']['ldap_user_name'] = 'uid'
default['sssd_ldap']['sssd_conf']['override_homedir'] = '/home/%u'
default['sssd_ldap']['sssd_conf']['override_shell'] = '/bin/bash'
default['sssd_ldap']['sssd_conf']['ldap_group_search_base'] = 'ou=DomainGroups,dc=company,dc=co,dc=za'
default['sssd_ldap']['sssd_conf']['ldap_group_object_class'] = 'group'
default['sssd_ldap']['sssd_conf']['ldap_tls_reqcert'] = 'never'
default['sssd_ldap']['sssd_conf']['ldap_default_bind_dn'] = nil
default['sssd_ldap']['sssd_conf']['ldap_default_authtok'] = nil
default['sssd_ldap']['sssd_conf']['ldap_default_authtok_type'] = 'password'
default['sssd_ldap']['simple_allow_groups'] = %w(somegroupname soneothergroupname)
default['sssd_ldap']['authconfig_params'] = '--enablesssd --enablesssdauth --enablelocauthorize --update'
default['sssd_ldap']['sssd_conf']['access_provider'] = 'simple'
default['sssd_ldap']['uninstall_nscd'] = true
default['sssd_ldap']['sssd_conf']['ldap_tls_cacert'] = nil
default['sssd_ldap']['sssd_conf']['ldap_search_base'] = nil
default['sssd_ldap']['sssd_conf']['min_id'] = nil
default['sssd_ldap']['sssd_conf']['max_id'] = nil
default['sssd_ldap']['sssd_conf']['ldap_access_filter'] = nil
default['sssd_ldap']['sssd_conf']['ignore_group_members'] = 'True'
