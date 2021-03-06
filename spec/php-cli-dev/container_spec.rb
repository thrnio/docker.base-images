require 'spec_helper'

describe 'PHP CLI Dev:' do
  before(:all) do
    set :os, family: :alpine
    set :backend, :docker
    set :docker_container, ENV['TEST_CONTAINER']
  end

  include_examples 'alpine::version'

  include_examples 'group::app'

  include_examples 'user::app'
  include_examples 'user::root'
  include_examples 'user::www-data'

  include_examples 'directory::app'
  include_examples 'directory::www'

  include_examples 'packages::bash'

  include_examples 'php::cli'
  include_examples 'php::cli::extensions'
  include_examples 'php::dev::cli::extensions'
  include_examples 'php::cli::config'
  include_examples 'php::dev::cli::config'

end
