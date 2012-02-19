# Manage user gitconfig.
#
# See git-config (1) for more details.
#
# Parameters
#
#  [*ensure*]  - Set or destroy the .gitconfig file. (present|absent)
#  [*root*]    - The root directory in which to place .gitconfig. Default /home/USER.
#   *user*     - The user in question.
#  [*email*]   - The user's email address. Default USER@FQDN
#   *realname* - The user's 'real' name. Default USER
#
define git::resource::config($ensure=file, $root="/home/$user", $user, $email="$user@$fqdn", $realname=$user) {
  file { "$root/.gitconfig":
    ensure => $ensure,
    content => template('git/gitconfig.erb'),
    require => [File[$root], User[$user]],
  }
}
