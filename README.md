**What is it ?**

Productivity booster is a simple bash/sed script to block 
your access to common distraction services such as facebook, twitter etc. :-)

**Configuration**

Linux:
* Edit your /etc/hosts file 
* Define distraction services in the hosts file, each domain in the following format (with the #prodboost at the beginning of each file):
````
#prodboost 0.0.0.0 some.distraction.domain 
````

For example: 
`````
#prodboost 0.0.0.0 reddit.com
#prodboost 0.0.0.0 www.reddit.com
#prodboost 0.0.0.0 twitter.com
#prodboost 0.0.0.0 www.twitter.com
#prodboost 0.0.0.0 facebook.com
#prodboost 0.0.0.0 www.facebook.com
`````



**Usage**
````
productivity-boost.sh on
````

````
productivity-boost.sh off
````

Enjoy :-)
