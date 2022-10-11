#!/usr/bin/env bash
input="projects.txt"
prefix='<?xml version="1.0" encoding="UTF-8"?>
<NikuDataBus xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="../xsd/nikuxog_read.xsd">
  <Header version="7.5" action="read" objectType="document" externalSource="NIKU">
    <args name="documentLocation" value="/docsExport" />
  </Header>
  <DocumentQuery>
    <Filter name="parentObjectID" criteria="EQUALS">'  
suffix='</Filter>
    <Filter name="parentObjectType" criteria="EQUALS">Projects</Filter>
   </DocumentQuery>
  </NikuDataBus>'
while IFS= read -r line
do
   echo "$prefix$line$suffix" > $line.xog
done < "$input"

for i in *.xog; do ./xog -username admin -password password -servername localhost -portnumber 81 -sslenabled false -input $i -output $i.output
done

