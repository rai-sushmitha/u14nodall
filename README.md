u14nodall
================

Shippable CI image for node.js on ubuntu 14.04 with commonly used services. Available versions are:

1. 0.10
2. 0.12
3. 4.23

**Services:**

1. cassandra 2.1
2. elasticsearch 1.5
3. memcached 1.4
4. mongodb 3.0
5. mysql 5.6
6. neo4j 2.2
7. postgres 9.4
8. rabbitmq 3.5
9. redis 3.0
10. selenium 2.45
11. sqllite 3
12. couchdb 1.6
13. rethinkdb 2.0
14. riak latest

## How to use
You can use this image to run node.js builds on Shippable. Just update your
`shippable.yml` file and add the `build_image` directive. You should also
activate the appropriate nvm so your build runs against the
correct version of node.js. The node.js versions you specify in the `node.js`
directive in the YML will be available in the `$SHIPPABLE_NODE_VERSION` environment variable. Here's a sample YML file to get you going:

````
language: node_js
node_js:
  - 0.10
  - 0.12
  - 4.23

build_image: drydock/u14nodall:prod

before_install:
  # activate the nvm
  - source ~/.nvm/nvm.sh && nvm install $SHIPPABLE_NODE_VERSION
  - node --version
  - npm install -g grunt-cli

install:
  - npm install

script:
  - grunt

````

