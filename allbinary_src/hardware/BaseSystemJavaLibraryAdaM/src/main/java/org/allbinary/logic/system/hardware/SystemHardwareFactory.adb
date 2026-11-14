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


with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.logic.system.hardware.NoHardware_Package; use org.allbinary.logic.system.hardware.NoHardware_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package_References;
with org.allbinary.logic.system.hardware.HardwareFactory_Package; use org.allbinary.logic.system.hardware.HardwareFactory_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface_Package;
with org.allbinary.logic.system.hardware.HardwareFactory_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.system.hardware.NoHardware_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.system.os.OperatingSystemInterface_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.system.hardware.SystemHardwareFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype GenericOperatingSystem_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access;
   function "=" (Left, Right : GenericOperatingSystem_Access) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype GenericOperatingSystem_Access_Array is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array;
   function "=" (Left, Right : GenericOperatingSystem_Access_Array) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype GenericOperatingSystem_Access_Array_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access;
   function "=" (Left, Right : GenericOperatingSystem_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype GenericOperatingSystem_Access_Array_Access_Array is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access_Array;
   function "=" (Left, Right : GenericOperatingSystem_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype GenericOperatingSystem_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.GenericOperatingSystem_Package_References.GenericOperatingSystem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericOperatingSystem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.GenericOperatingSystem_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype HardwareInterface_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access;
   function "=" (Left, Right : HardwareInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   subtype HardwareInterface_Access_Array is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array;
   function "=" (Left, Right : HardwareInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   subtype HardwareInterface_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access;
   function "=" (Left, Right : HardwareInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   subtype HardwareInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HardwareInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   subtype HardwareInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareInterface_Package_References.HardwareInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardwareInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareInterface_Package_References."=";
   procedure Initialize_Fields (This : in out SystemHardwareFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.hardwareInterface := HardwareInterface_Access (NoHardware_Package.getInstance);
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
            if (Java_Object_Access (This.hardwareInterface)) = (Java_Object_Access (NoHardware_Package.getInstance)) then
                This.hardwareInterface := HardwareInterface_Access (HardwareFactory_Package.getInstance.getInstance (operatingSystemInterface));
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


