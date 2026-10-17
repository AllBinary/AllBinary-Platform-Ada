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


package body org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package is

   procedure Initialize_Fields (This : in out WindowsOperatingSystemFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return WindowsOperatingSystemFactory_Access is
   begin
        return WindowsOperatingSystemFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out WindowsOperatingSystemFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WindowsOperatingSystemFactory_Access is
      This : constant WindowsOperatingSystemFactory_Access := new WindowsOperatingSystemFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getOperatingSystemInstance (This : in out WindowsOperatingSystemFactory) return GenericOperatingSystem_Access is
      operatingSystems : OperatingSystems_Access;
      osName : Unbounded_String;
      operatingSystemInterface : GenericOperatingSystem_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            operatingSystems := OperatingSystems_Package.getInstance;
            osName := SystemProperties_Package.getInstance.getName;
            operatingSystemInterface := null;
            if (osName.compareTo (operatingSystems.WINDOWS_NT)) = (0) then
                operatingSystemInterface := WindowsOS_Package.Create;
            elsif (osName.compareTo (operatingSystems.WINDOWS_10)) = (0) then
                operatingSystemInterface := WindowsOS_Package.Create;
            elsif (osName.compareTo (operatingSystems.WINDOWS_11)) = (0) then
                operatingSystemInterface := WindowsOS_Package.Create;
            elsif (osName.compareTo (operatingSystems.WINDOWS2000)) = (0) then
                operatingSystemInterface := WindowsOS_Package.Create;
            elsif (osName.compareTo (operatingSystems.WINDOWS_XP)) = (0) then
                operatingSystemInterface := WindowsOS_Package.Create;
            elsif (osName.compareTo (operatingSystems.WINDOWS_VISTA)) = (0) then
                operatingSystemInterface := WindowsOS_Package.Create;
            else
                if operatingSystems.isUnknownSpecificOSAllowed then
                    operatingSystemInterface := WindowsOS_Package.Create;
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Specific Windows OS Not Supported: ") & osName));
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
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            return NoOperatingSystem_Package.NO_OPERATING_SYSTEM;
                end;
        end;
   end getOperatingSystemInstance;

   procedure getInstance is
      Java_Result : constant WindowsOperatingSystemFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getOperatingSystemInstance (This : in out WindowsOperatingSystemFactory) is
      Java_Result : constant GenericOperatingSystem_Access := WindowsOperatingSystemFactory'Class (This).getOperatingSystemInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOperatingSystemInstance;

begin
   null;
   instance := WindowsOperatingSystemFactory_Package.Create;

end org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory_Package;


