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


with org.allbinary.logic.system.os.OperatingSystemInterface_Package; use org.allbinary.logic.system.os.OperatingSystemInterface_Package;
with org.allbinary.logic.system.os.OperatingSystemInterface_Package_References;
with org.allbinary.logic.system.hardware.NoHardware_Package; use org.allbinary.logic.system.hardware.NoHardware_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package; use org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.HardwareInterface_Package_References;
with org.allbinary.logic.system.hardware.HardwareInterface_Package;
with org.allbinary.logic.system.hardware.NoHardware_Package;

package body org.allbinary.logic.system.hardware.HardwareFactory_Package is

   subtype OperatingSystemInterface_Access is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access;
   function "=" (Left, Right : OperatingSystemInterface_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   subtype OperatingSystemInterface_Access_Array is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access_Array;
   function "=" (Left, Right : OperatingSystemInterface_Access_Array) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   subtype OperatingSystemInterface_Access_Array_Access is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access_Array_Access;
   function "=" (Left, Right : OperatingSystemInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   subtype OperatingSystemInterface_Access_Array_Access_Array is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OperatingSystemInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
   subtype OperatingSystemInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.OperatingSystemInterface_Package_References.OperatingSystemInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OperatingSystemInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.OperatingSystemInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out HardwareFactory'Class) is
   begin
      null;
      This.SINGLETON := HardwareInterface_Access (NoHardware_Package.getInstance);
   end Initialize_Fields;


   function getInstance return HardwareFactory_Access is
   begin
        return HardwareFactory_Access (HardwareFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out HardwareFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return HardwareFactory_Access is
      This : constant HardwareFactory_Access := new HardwareFactory;
   begin
      HardwareFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out HardwareFactory; os_Param : access OperatingSystemInterface_Package.OperatingSystemInterface'Class) return HardwareInterface_Access is
      os : constant OperatingSystemInterface_Access := OperatingSystemInterface_Access (os_Param);
   begin
        begin
            return This.SINGLETON;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out HardwareFactory; os_Param : access OperatingSystemInterface_Package.OperatingSystemInterface'Class) is
      Java_Result : constant HardwareInterface_Access := HardwareFactory'Class (This).getInstance (os_Param => os_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := HardwareFactory_Package.Create;

end org.allbinary.logic.system.hardware.HardwareFactory_Package;


