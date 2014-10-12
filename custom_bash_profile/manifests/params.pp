class custom_bash_profile::params {  
case $::osfamily {
    "Redhat" : {
      $profile_d_dir = "/etc/profile.d"   #system wide profile parameters
    }
    "Debian" : {
      $profile_d_dir = "/etc/profile.d"
    }

#    "Darwin" : {
#      $profile_d_dir = "/etc/profile.d"
#    }

    default: {
      fail ("Module ${module_name} is not supported on ${::osfamily}")
    }
  }
}
