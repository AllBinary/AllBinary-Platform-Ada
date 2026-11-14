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

with AllBinary_Java;
limited with org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package;
package org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References is
   type HardwareFactoryInterface_Access is access all org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package.HardwareFactoryInterface'Class;
   type HardwareFactoryInterface_Access_Array is array (Natural range <>) of HardwareFactoryInterface_Access;
   type HardwareFactoryInterface_Access_Array_Access is access all HardwareFactoryInterface_Access_Array;
   type HardwareFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of HardwareFactoryInterface_Access_Array_Access;
   type HardwareFactoryInterface_Access_Array_Access_Array_Access is access all HardwareFactoryInterface_Access_Array_Access_Array;
   type HardwareFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HardwareFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : HardwareFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HardwareFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HardwareFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HardwareFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in HardwareFactoryInterface_Access_Array_Object'Class then HardwareFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type HardwareFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : HardwareFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : HardwareFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new HardwareFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_HardwareFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return HardwareFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in HardwareFactoryInterface_Access_Array_Access_Array_Object'Class then HardwareFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References;

with org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type HardwareFactoryInterface is interface;
   subtype HardwareFactoryInterface_Access is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access;
   function "=" (Left, Right : HardwareFactoryInterface_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   subtype HardwareFactoryInterface_Access_Array is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access_Array;
   function "=" (Left, Right : HardwareFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   subtype HardwareFactoryInterface_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : HardwareFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   function Java_Box (Value : HardwareFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_HardwareFactoryInterface_Access_Array (Value : access Java_Object'Class) return HardwareFactoryInterface_Access_Array_Access renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.Java_Unbox_HardwareFactoryInterface_Access_Array;
   subtype HardwareFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : HardwareFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   subtype HardwareFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.HardwareFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HardwareFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References."=";
   function Java_Box (Value : HardwareFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_HardwareFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return HardwareFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package_References.Java_Unbox_HardwareFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_HardwareFactoryInterface (Value : HardwareFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.logic.system.hardware.HardwareFactoryInterface_Package;


