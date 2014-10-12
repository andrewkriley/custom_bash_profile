# Class: custom_bash_profile
#
# This module manages custom_bash_profile
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class custom_bash_profile (
$profile_d_dir = $custom_bash_profile::params::profile_d_dir,

)
inherits custom_bash_profile::params
{
file { $profile_d_dir :
  ensure => directory,
}

file { "${profile_d_dir}/custom_bash_profile.sh" :
  ensure  => file,
  source => "puppet:///modules/custom_bash_profile/custom_bash_profile.sh",
  #mode    => "0755",
}
}
