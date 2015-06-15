# Dockerfile for PHP based services


This is the Dockerfile which enables building the base Docker image
to be used by php services.


## Building

  $ docker build .
  
## Installation

1. Install [Docker](https://www.docker.com/)
2. Download image from public [Crakmedia Docker Hub Registry](https://registry.hub.docker.com/repos/crakmedia/) 
	`docker pull crakmedia/php56-fpm-nginx`  

## Versions

### php version (php -v)
    
    PHP 5.6.9 (cli) (built: May 15 2015 09:31:38)
    Copyright (c) 1997-2015 The PHP Group
    Zend Engine v2.6.0, Copyright (c) 1998-2015 Zend Technologies

### nginx version (nginx -v)

    nginx version: nginx/1.6.3

### php-fpm verison (php-fpm -v)

    PHP 5.6.9 (fpm-fcgi) (built: May 15 2015 09:32:11)
    Copyright (c) 1997-2015 The PHP Group
    Zend Engine v2.6.0, Copyright (c) 1998-2015 Zend Technologies

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits

- [Yoanis Gil](https://github.com/yoanisgil)
- [Sylvain Witmeyer](https://github.com/sylwit)

## License

The MIT License

Copyright (c) 2015 Crakmedia http://www.crakmedia.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.