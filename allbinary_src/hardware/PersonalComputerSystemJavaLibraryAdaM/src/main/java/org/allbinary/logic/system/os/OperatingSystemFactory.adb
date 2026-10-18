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


with org.allbinary.logic.communication.log.Log_Package; use org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFactory_Package; use org.allbinary.logic.communication.log.LogFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory_Package; use org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory_Package;
with org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package; use org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package;
with org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package; use org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package;
with org.allbinary.logic.system.os.NoOperatingSystem_Package; use org.allbinary.logic.system.os.NoOperatingSystem_Package;
with org.allbinary.logic.system.os.OperatingSystems_Package; use org.allbinary.logic.system.os.OperatingSystems_Package;
with org.allbinary.logic.system.os.SystemProperties_Package; use org.allbinary.logic.system.os.SystemProperties_Package;

package body org.allbinary.logic.system.os.OperatingSystemFactory_Package is

   package Log_Package renames Standard.org.allbinary.logic.communication.log.Log_Package;
   package LogFactory_Package renames Standard.org.allbinary.logic.communication.log.LogFactory_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package LinuxOperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory_Package;
   package SolarisOperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package;
   package WindowsOperatingSystemFactory_Package renames Standard.org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package;
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
                This.logUtil.putF (To_Unbounded_String ("osName: ") & osName, OperatingSystemFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
                This.hasDetected := True;
                if (Java_Index_Of (osName, Java_Image (operatingSystems.LINUX))) >= (0) then
                    if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                        This.logUtil.putF (To_Unbounded_String ("Found a Linux OS"), OperatingSystemFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
                    end if;
                    This.genericOperatingSystem := LinuxOperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
                elsif (Java_Index_Of (osName, Java_Image (operatingSystems.WINDOWS))) >= (0) then
                    if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                        This.logUtil.putF (To_Unbounded_String ("Found a Windows OS"), OperatingSystemFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
                    end if;
                    This.genericOperatingSystem := WindowsOperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
                elsif (Java_Index_Of (osName, Java_Image (operatingSystems.SOLARIS))) >= (0) then
                    if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                        This.logUtil.putF (To_Unbounded_String ("Found a Solaris OS"), OperatingSystemFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
                    end if;
                    This.genericOperatingSystem := SolarisOperatingSystemFactory_Package.getInstance.getOperatingSystemInstance;
                else
                    Java_Throw (Java_New_Exception ("Exception", StringMaker_Package.Create.append (To_Unbounded_String ("OS Not Supported: ")).append (osName).toString));
                end if;
                log := LogFactory_Package.getInstanceF (StringMaker_Package.Create.append (To_Unbounded_String ("OperatingSystem Info: ")).append (StringUtil_Package.getInstance.toString (This.genericOperatingSystem)).toString, OperatingSystemFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
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
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, OperatingSystemFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE, e);
            end if;
            return NoOperatingSystem_Package.NO_OPERATING_SYSTEM;
                end;
        end;
   end getOperatingSystemInstance;

begin
   null;
   instance := OperatingSystemFactory_Package.Create;

end org.allbinary.logic.system.os.OperatingSystemFactory_Package;


