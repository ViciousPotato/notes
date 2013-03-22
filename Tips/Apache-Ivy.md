**ivy.xml**
```xml
<ivy-module version="2.0">
    <info organisation="org.apache" module="hello-ivy"/>
    <dependencies>
        <dependency org="commons-lang" name="commons-lang" rev="2.0"/>
        <dependency org="commons-cli" name="commons-cli" rev="1.0"/>
    </dependencies>
</ivy-module>
```

Find dependency statement at http://mvnrepository.com

Add in ant file
```xml
<project xmlns:ivy="antlib:org.apache.ivy.ant" name="hello-ivy" default="run">
    
    ...
    
    <!-- ================================= 
          target: resolve              
         ================================= -->
    <target name="resolve" description="--> retrieve dependencies with ivy">
        <ivy:retrieve />
    </target>
</project>
```