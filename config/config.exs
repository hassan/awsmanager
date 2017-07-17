# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

  config :ex_aws,
    # access_key_id: [{:system, "AWS_ACCESS_KEY_ID"}, {:awscli, "staging", 30}, :instance_role],
    # secret_access_key: [{:system, "AWS_SECRET_ACCESS_KEY"}, {:awscli, "staging", 30}, :instance_role]
    access_key_id: [{:system, "AWS_ACCESS_KEY_ID"}, {:awscli, System.get_env("AWS_PROFILE"), 30}, :instance_role],
    secret_access_key: [{:system, "AWS_SECRET_ACCESS_KEY"}, {:awscli, System.get_env("AWS_PROFILE"), 30}, :instance_role]
# You can configure for your application as:
#
#     config :awsmanager, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:awsmanager, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
