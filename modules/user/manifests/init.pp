class user {
user { 'kayttaja':
      ensure  => present,
      password => 'salainen',
      home => '/home/kayttaja',
      shell => '/bin/bash',
      managehome => true,
    }
}
