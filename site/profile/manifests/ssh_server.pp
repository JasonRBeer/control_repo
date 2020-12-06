class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCo4yyJxhCHM9h07vIc15/FrlhEJiTjtQH3cFFPD6bmAe88g8OelUqlv585T1TmBTbf/EROJlM0DjzzjGaD+GCHRsAz7A9Wt0qUl93HwqxlVMJNNBr3iJO0+qg8Jgj3EobFl1HJbVtbQBo5JUPzsclRjvOjlJpQgNQ8dsXLLoT08BwsJ4R4QNo2iCSomY+b/vgjvfvu6W0YOCBEWvuHuFwasvJP5VNv1Utp9Gv0Y8zjH/7rctq2FX1aMxS6/uv/VY406WpHmbxXEWj7YdvBUQYMNoQ13e8hahB+0lGHKe4lrBzpvqoKDkOV/xkfYy7+aeZRrXo23zslKPYdOGQZvHBN',
  }  
}
