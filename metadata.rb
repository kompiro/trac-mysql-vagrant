name             'trac-mysql'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures trac-mysql'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends :mysql
depends :apache2
depends :python
depends :trac
depends :apt
