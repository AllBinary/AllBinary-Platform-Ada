--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.logic.system.os.OperatingSystemFactory_Package is

   procedure Initialize_Fields (This : in out OperatingSystemFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.genericOperatingSystem := NoOperatingSystem_Package.NO_OPERATING_SYSTEM;
      This.hasDetected := False;
   end Initialize_Fields;


   function getInstance return OperatingSystemFactory_Access is
   begin
        return OperatingSystemFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OperatingSystemFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OperatingSystemFactory_Access is
      This : constant OperatingSystemFactory_Access := new OperatingSystemFactory;
   begin
      OperatingSystemFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getOperatingSystemInstance (This : in out OperatingSystemFactory) return GenericOperatingSystem_Access is
      operatingSystems : OperatingSystems_Access;
      systemProperties : SystemProperties_Access;
      osName : Unbounded_String;
      osArch : Unbounded_String;
      osVersion : Unbounded_String;
      log : Log_Access;
   begin
        begin
            operatingSystems := OperatingSystems_Package.getInstance;
            systemProperties := SystemProperties_Package.getInstance;
            osName := systemProperties.getName;
            osArch := systemProperties.getArch;
            osVersion := systemProperties.getVersion;
            if not (This.hasDetected) then
                This.logUtil.putF (To_Unbounded_String ("osName: ") & osName, This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
                This.hasDetected := True;
                if ((Index (osName, To_String (operatingSystems.LINUX)) - 1)) >= (0) then
                    if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                        This.logUtil.putF (To_Unbounded_String ("Found a Linux OS"), This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
                    end if;
                    This.genericOperatingSystem := LinuxOperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
                elsif ((Index (osName, To_String (operatingSystems.WINDOWS)) - 1)) >= (0) then
                    if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                        This.logUtil.putF (To_Unbounded_String ("Found a Windows OS"), This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
                    end if;
                    This.genericOperatingSystem := WindowsOperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
                elsif ((Index (osName, To_String (operatingSystems.SOLARIS)) - 1)) >= (0) then
                    if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                        This.logUtil.putF (To_Unbounded_String ("Found a Solaris OS"), This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
                    end if;
                    This.genericOperatingSystem := SolarisOperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
                else
                    Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("OS Not Supported: ")).append (osName).toString));
                end if;
                log := LogFactory_Package.getInstanceF (StringMaker_Package.Create.append (To_Unbounded_String ("OperatingSystem Info: ")).append (StringUtil_Package.getInstance.toString (This.genericOperatingSystem)).toString, This'Unchecked_Access, This.commonStrings.GET_INSTANCE);
                Ada.Text_IO.Put_Line (Java_Image (log.toString));
                This.logUtil.putL (log);
            end if;
            return This.genericOperatingSystem;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.GET_INSTANCE, e);
            end if;
            return NoOperatingSystem_Package.NO_OPERATING_SYSTEM;
                end;
        end;
   end getOperatingSystemInstance;

begin
   null;
   instance := OperatingSystemFactory_Package.Create;

end org.allbinary.logic.system.os.OperatingSystemFactory_Package;


