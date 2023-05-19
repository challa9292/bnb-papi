#!/bin/bash
​
sed -i~ "/<servers>/ a\
<server>\
  <id>mule-ee</id>\
  <username>${nexus_username}</username>\
  <password>${nexus_password}</password>\
</server>\
<server>\
  <id>anypoint-exchange-v2</id>\
  <username>${exchange_username}</username>\
  <password>${exchange_password}</password>\
</server>" /usr/share/maven/conf/settings.xml
​
sed -i "/<profiles>/ a\
<profile>\
  <id>mule</id>\
  <activation>\
    <activeByDefault>true</activeByDefault>\
  </activation>\
  <repositories>\
    <repository>\
      <id>mule-ee</id>\
    <name>mule-ee</name>\
    <url>https://repository.mulesoft.org/nexus-ee/content/repositories/releases-ee/</url>\
    <layout>default</layout>\
    <releases>\
      <enabled>true</enabled>\
    </releases>\
    <snapshots>\
      <enabled>true</enabled>\
    </snapshots>\
  </repository>\
  <repository>\
    <id>anypoint-exchange</id>\
    <name>Anypoint Exchange for Orgranization</name>\
    <url>https://maven.anypoint.mulesoft.com/api/v1/organizations/3cad1818-6332-4235-94ee-84f1193e0179/maven</url>\
    <layout>default</layout>\
    <releases>\
      <enabled>true</enabled>\
    </releases>\
    <snapshots>\
      <enabled>true</enabled>\
    </snapshots>\
  </repository>\
  <repository>\
    <id>mulesoft-releases</id>\
    <name>Mulesoft Repository</name>\
    <url>http://repository.mulesoft.org/releases/</url>\
    <layout>default</layout>\
  </repository>\
    <repository>\
    <id>mulesoft-private</id>\
    <name>Mulesoft Repository</name>\
    <url>https://repository.mulesoft.org/nexus/content/repositories/private/</url>\
    <layout>default</layout>\
  </repository>\
  </repositories>\
  <pluginRepositories>\
    <pluginRepository>\
      <id>private-repo</id>\
      <url>https://example.com/path/to/maven/repo/</url>\
    </pluginRepository>\
  </pluginRepositories>\
</profile>" /usr/share/maven/conf/settings.xml
