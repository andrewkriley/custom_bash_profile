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

			{ case $::osfamily  {
			
			    "Redhat" , "Debian" : {
			      notify {'You are using a supported OS Family': }
			
						file { "/usr/local/bin/dynmotd" :
						  ensure => file,
						  source => "puppet:///modules/custom_bash_profile/dynmotd",
			        mode => "0755",			  
						  }
						  
						file { $profile_d_dir :
						  ensure => directory,
						  }
						
						file { "${profile_d_dir}/custom_bash_profile.sh" :
						  ensure  => file,
						  source => "puppet:///modules/custom_bash_profile/custom_bash_profile.sh",
						  mode    => "0755",
						      }      
						  }  
						     
						 default: {
						      fail ("Module ${module_name} is not supported on ${::osfamily}")
			         }   
              }
        }
