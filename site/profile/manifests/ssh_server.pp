class profile::ssh_server {
  package {'openssh-server':
    ensure => 'present',
    }
  
  service {'sshd':
    ensure => 'running',
    enable => 'true',
    }
    
  ssh_authorized_key { 'root@puppetmaster.vm':
    ensure => present,
    user => root,
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8bfEJKHjY4ZqJvE6guMOm5ALtw+CcqGM3o9PNBWquhhtZ8LZI81JxFVHeZoWqtI7dclU/a8/jo6aQxp+dQG8Ox/SbQs2AqEOdNqeJpFtxWnR+O/q84A5jIa/yNDF5bKabXgcLXbknZWBw9pVMZA+bUQgTEwdV+GS/bSQb8sZ1i8I4ICpJl59wT8VyZqMihlIIA96Hxyr5RETmYNuP2ip0KS2ygB/sAH3t50IZ6uUqcA6I7J/PWUglgL5C1rlScY5uxJNvahrZQ1S78QmMRxBttS9mCuEnzKGoccO4FUJ1CBMXT7bHnQv0hazI8sLkjz11pdQe7lTh8BeFcIO1za2j',
  }

}
