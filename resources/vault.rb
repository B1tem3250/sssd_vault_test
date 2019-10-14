# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
# Custom resource for reading a Vault secret
resource_name :read_vault

property :path, String, required: true
property :address, String, required: true
property :token, String, required: true
property :role_name, String, required: false

action :read do
  Vault.address = new_resource.address

  Vault.token = new_resource.token

  if property_is_set?(:role_name)
    approle_id = Vault.approle.role_id(new_resource.role_name)
    secret_id = Vault.approle.create_secret_id(new_resource.role_name).data[:secret_id]
    Vault.auth.approle(approle_id, secret_id)
  end

  secret = Vault.logical.read(new_resource.path)
  if secret.nil?
    raise "Could not read secret '#{new_resource.path}'!"
  end

  node.run_state[new_resource.path] = secret
end
