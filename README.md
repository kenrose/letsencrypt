Auto provision a domain name for a Synology NAS using Let's Encrypt.

Based on:
http://www.thedreaming.org/2020/11/18/synology-lets-encrypt/

I use Dreamhost for DNS.  Feel free to replace with any other provider supported by lego:

https://go-acme.github.io/lego/dns/


The original article was based on DSM6.  This is updated for DSM7.

Two important changes:
  - Support for ec256 instead of rsa4096
  - New command for reloading nginx config after installing the certs.  See [this Reddit thread](https://old.reddit.com/r/synology/comments/olve56/dsm_7_nginx_problem/) for way more context.
