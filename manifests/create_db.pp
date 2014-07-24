#
#
#
#
#
#
class galaxy::create_db {
  $app_directory = $galaxy::params::app_directory
  exec { 'create_db.sh':
    require =>  Class ['galaxy::common_startup'],
    path    => '/usr/bin:/usr/sbin:/bin:/sbin',
    cwd     => $app_directory,
    user    => 'galaxy',
    group   => 'galaxy',
    command => 'sh create_db.sh',
    timeout => 500,
  }
}