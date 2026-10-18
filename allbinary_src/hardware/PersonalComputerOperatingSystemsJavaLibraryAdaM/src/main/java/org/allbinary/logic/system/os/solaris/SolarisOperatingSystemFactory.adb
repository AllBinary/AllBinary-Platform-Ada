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


package body org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package is

   procedure Initialize_Fields (This : in out SolarisOperatingSystemFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return SolarisOperatingSystemFactory_Access is
   begin
        return SolarisOperatingSystemFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SolarisOperatingSystemFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SolarisOperatingSystemFactory_Access is
      This : constant SolarisOperatingSystemFactory_Access := new SolarisOperatingSystemFactory;
   begin
      SolarisOperatingSystemFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getOperatingSystemInstance (This : in out SolarisOperatingSystemFactory) return GenericOperatingSystem_Access is
      operatingSystems : OperatingSystems_Access;
      osName : Unbounded_String;
      operatingSystemInterface : GenericOperatingSystem_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            operatingSystems := OperatingSystems_Package.getInstance;
            osName := SystemProperties_Package.getInstance.getName;
            operatingSystemInterface := null;
            if (Java_Compare_To (osName, operatingSystems.SOLARIS)) = (0) then
                operatingSystemInterface := SolarisOS_Package.Create;
            else
                if operatingSystems.isUnknownSpecificOSAllowed then
                    operatingSystemInterface := SolarisOS_Package.Create;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Specific Solaris OS Not Supported: ") & osName));
                end if;
            end if;
            return operatingSystemInterface;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.FACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, SolarisOperatingSystemFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            return NoOperatingSystem_Package.NO_OPERATING_SYSTEM;
                end;
        end;
   end getOperatingSystemInstance;

begin
   null;
   instance := SolarisOperatingSystemFactory_Package.Create;

end org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory_Package;


