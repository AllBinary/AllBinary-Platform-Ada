--  Generated Code Do Not Modify


package body org.allbinary.logic.system.os.env.RuntimeEnvironmentVariables_Package is

   procedure Initialize_Fields (This : in out RuntimeEnvironmentVariables'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RuntimeEnvironmentVariables'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RuntimeEnvironmentVariables_Access is
      This : constant RuntimeEnvironmentVariables_Access := new RuntimeEnvironmentVariables;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getTest1 (This : in out RuntimeEnvironmentVariables) return Unbounded_String is
   begin
        return System_Package.getProperty (To_Unbounded_String ("java.java.home"));
   end getTest1;

   function getVariable (This : in out RuntimeEnvironmentVariables; var : Unbounded_String) return Unbounded_String is
      environmentVariables : Properties_Access;
   begin
        environmentVariables := This.get;
        return environmentVariables.getProperty (var);
   end getVariable;

   function get (This : in out RuntimeEnvironmentVariables) return Properties_Access is
      process : Process_Access;
      environmentVariables : Properties_Access;
      operatingSystemInterface : GenericOperatingSystem_Access;
      osName : Unbounded_String;
      linuxCommand : Unbounded_String;
      windowsCommand : Unbounded_String;
      solarisCommand : Unbounded_String;
      operatingSystems : OperatingSystems_Access;
      processInputStreamReader : InputStreamReader_Access;
      bufferedReader : BufferedReader_Access;
      keyValuePair : Unbounded_String;
      index : Integer;
      key : Unbounded_String;
      value : Unbounded_String;
   begin
        begin
            process := null;
            environmentVariables := Properties_Package.Create;
            operatingSystemInterface := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
            osName := operatingSystemInterface.getName;
            linuxCommand := To_Unbounded_String ("env");
            windowsCommand := To_Unbounded_String ("cmd.exe /c set");
            solarisCommand := linuxCommand;
            operatingSystems := OperatingSystems_Package.getInstance;
            if (osName.compareTo (operatingSystems.LINUX)) = (0) then
                process := Runtime_Package.getRuntime.exec (linuxCommand);
            elsif ((Index (osName, To_String (operatingSystems.WINDOWS)) - 1)) >= (0) then
                process := Runtime_Package.getRuntime.exec (windowsCommand);
            elsif (osName.compareTo (operatingSystems.SOLARIS)) = (0) then
                process := Runtime_Package.getRuntime.exec (solarisCommand);
            else
                Java_Throw (Java_New_Exception ("Exception"));
            end if;
            processInputStreamReader := InputStreamReader_Package.Create (process.getInputStream);
            bufferedReader := BufferedReader_Package.Create (processInputStreamReader);
            keyValuePair := Null_Unbounded_String;
            while ((Java_Assign (keyValuePair, bufferedReader.readLine))) /= (null) loop
                index := (Index (keyValuePair, To_String ('=')) - 1);
                key := Unbounded_Slice (keyValuePair, (0) + 1, index);
                value := Unbounded_Slice (keyValuePair, ((index) + (1)) + 1, Length (keyValuePair));
                environmentVariables.put (key, value);
            end loop;
            return environmentVariables;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("get()"), e);
            end if;
            return null;
                end;
        end;
   end get;

   function getTempDir (This : in out RuntimeEnvironmentVariables) return Unbounded_String is
   begin
        begin
            return System_Package.getProperty (To_Unbounded_String ("java.io.tmpdir"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getTempDir()"), e);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end getTempDir;

   function getLibraryPath (This : in out RuntimeEnvironmentVariables) return Unbounded_String is
   begin
        begin
            return System_Package.getProperty (To_Unbounded_String ("java.library.path"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getLibraryPath()"), e);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end getLibraryPath;

   function getClassPath (This : in out RuntimeEnvironmentVariables) return Unbounded_String is
   begin
        begin
            return System_Package.getProperty (To_Unbounded_String ("java.class.path"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getClassPath()"), e);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end getClassPath;

   procedure updateLibraryPath (This : in out RuntimeEnvironmentVariables; libPath : Unbounded_String) is
      existingPath : Unbounded_String;
   begin
        begin
            existingPath := This.getLibraryPath;
            System_Package.setProperty (To_Unbounded_String ("java.library.path"), libPath & To_Unbounded_String (":") & existingPath);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("updateLibraryPath()"), e);
            end if;
                end;
        end;
   end updateLibraryPath;

   function getUserHome (This : in out RuntimeEnvironmentVariables) return Unbounded_String is
   begin
        begin
            return System_Package.getProperty (To_Unbounded_String ("user.home"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getUserHome()"), e);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end getUserHome;

   function getUserDir (This : in out RuntimeEnvironmentVariables) return Unbounded_String is
   begin
        begin
            return System_Package.getProperty (To_Unbounded_String ("user.dir"));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getUserDir()"), e);
            end if;
            return Null_Unbounded_String;
                end;
        end;
   end getUserDir;

   procedure set (This : in out RuntimeEnvironmentVariables) is
   begin
        begin
            null;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("get()"), e);
            end if;
                end;
        end;
   end set;

   procedure setVariable (This : in out RuntimeEnvironmentVariables; var : Unbounded_String; val : Unbounded_String) is
      process : Process_Access;
      operatingSystemInterface : GenericOperatingSystem_Access;
      operatingSystems : OperatingSystems_Access;
      osName : Unbounded_String;
      windowsCommand : Unbounded_String;
   begin
        begin
            process := null;
            operatingSystemInterface := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
            operatingSystems := OperatingSystems_Package.getInstance;
            osName := operatingSystemInterface.getName;
            windowsCommand := To_Unbounded_String ("cmd.exe /c set") & var & To_Unbounded_String ("=") & val;
            if (osName.compareTo (operatingSystems.LINUX)) = (0) then
                Java_Throw (Java_New_Exception ("Exception"));
            elsif ((Index (osName, To_String (operatingSystems.WINDOWS)) - 1)) >= (0) then
                process := Runtime_Package.getRuntime.exec (windowsCommand);
            elsif (osName.compareTo (operatingSystems.SOLARIS)) = (0) then
                Java_Throw (Java_New_Exception ("Exception"));
            else
                Java_Throw (Java_New_Exception ("Exception"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.OSERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("setVariable()"), e);
            end if;
                end;
        end;
   end setVariable;

   procedure getTest1 (This : in out RuntimeEnvironmentVariables) is
      Java_Result : constant Unbounded_String := RuntimeEnvironmentVariables'Class (This).getTest1;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTest1;

   procedure getVariable (This : in out RuntimeEnvironmentVariables; var : Unbounded_String) is
      Java_Result : constant Unbounded_String := RuntimeEnvironmentVariables'Class (This).getVariable (var);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVariable;

   procedure get (This : in out RuntimeEnvironmentVariables) is
      Java_Result : constant Properties_Access := RuntimeEnvironmentVariables'Class (This).get;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure getTempDir (This : in out RuntimeEnvironmentVariables) is
      Java_Result : constant Unbounded_String := RuntimeEnvironmentVariables'Class (This).getTempDir;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTempDir;

   procedure getLibraryPath (This : in out RuntimeEnvironmentVariables) is
      Java_Result : constant Unbounded_String := RuntimeEnvironmentVariables'Class (This).getLibraryPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLibraryPath;

   procedure getClassPath (This : in out RuntimeEnvironmentVariables) is
      Java_Result : constant Unbounded_String := RuntimeEnvironmentVariables'Class (This).getClassPath;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClassPath;

   procedure getUserHome (This : in out RuntimeEnvironmentVariables) is
      Java_Result : constant Unbounded_String := RuntimeEnvironmentVariables'Class (This).getUserHome;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserHome;

   procedure getUserDir (This : in out RuntimeEnvironmentVariables) is
      Java_Result : constant Unbounded_String := RuntimeEnvironmentVariables'Class (This).getUserDir;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUserDir;

end org.allbinary.logic.system.os.env.RuntimeEnvironmentVariables_Package;


