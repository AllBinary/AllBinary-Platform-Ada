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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.hardware.NoHardware_Package; use org.allbinary.logic.system.hardware.NoHardware_Package;
with org.allbinary.logic.system.hardware.HardwareFactory_Package; use org.allbinary.logic.system.hardware.HardwareFactory_Package;

package body org.allbinary.logic.system.hardware.SystemHardwareFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   procedure Initialize_Fields (This : in out SystemHardwareFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.hardwareInterface := NoHardware_Package.getInstance;
   end Initialize_Fields;


   function getInstance return SystemHardwareFactory_Access is
   begin
        return SystemHardwareFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out SystemHardwareFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SystemHardwareFactory_Access is
      This : constant SystemHardwareFactory_Access := new SystemHardwareFactory;
   begin
      SystemHardwareFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out SystemHardwareFactory; operatingSystemInterface_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class) return HardwareInterface_Access is
      operatingSystemInterface : constant GenericOperatingSystem_Access := GenericOperatingSystem_Access (operatingSystemInterface_Param);
   begin
        begin
            if (This.hardwareInterface) = (NoHardware_Package.getInstance) then
                This.hardwareInterface := HardwareFactory_Package.getInstance.getInstance (operatingSystemInterface);
            end if;
            This.logUtil.putF (To_Unbounded_String ("Found Hardware"), SystemHardwareFactory_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, SystemHardwareFactory_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
                end;
        end;
        return This.hardwareInterface;
   end getInstance;

   function static_toString return Unbounded_String is
      systemHardwareFactory_Var : SystemHardwareFactory_Access;
      osBuffer : StringMaker_Access;
   begin
        systemHardwareFactory_Var := SystemHardwareFactory_Package.getInstance;
        osBuffer := StringMaker_Package.Create;
        osBuffer.append (To_Unbounded_String ("Hardware Info: " & ASCII.LF & ""));
        if (systemHardwareFactory_Var.hardwareInterface) /= (null) then
            osBuffer.append (Java_Object'Class (systemHardwareFactory_Var.hardwareInterface.all).toString);
        else
            osBuffer.append (StringUtil_Package.getInstance.NULL_STRING);
        end if;
        return osBuffer.toString;
   end static_toString;

   procedure getInstance (This : in out SystemHardwareFactory; operatingSystemInterface_Param : access GenericOperatingSystem_Package.GenericOperatingSystem'Class) is
      Java_Result : constant HardwareInterface_Access := SystemHardwareFactory'Class (This).getInstance (operatingSystemInterface_Param => operatingSystemInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := SystemHardwareFactory_Package.Create;

end org.allbinary.logic.system.hardware.SystemHardwareFactory_Package;


