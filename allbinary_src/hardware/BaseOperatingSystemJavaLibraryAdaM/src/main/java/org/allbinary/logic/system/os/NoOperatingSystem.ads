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
limited with org.allbinary.logic.system.os.NoOperatingSystem_Package;
package org.allbinary.logic.system.os.NoOperatingSystem_Package_References is
   type NoOperatingSystem_Access is access all org.allbinary.logic.system.os.NoOperatingSystem_Package.NoOperatingSystem'Class;
   type NoOperatingSystem_Access_Array is array (Natural range <>) of NoOperatingSystem_Access;
   type NoOperatingSystem_Access_Array_Access is access all NoOperatingSystem_Access_Array;
   type NoOperatingSystem_Access_Array_Access_Array is array (Natural range <>) of NoOperatingSystem_Access_Array_Access;
   type NoOperatingSystem_Access_Array_Access_Array_Access is access all NoOperatingSystem_Access_Array_Access_Array;
   type NoOperatingSystem_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoOperatingSystem_Access_Array_Access;
   end record;
   function Java_Box (Value : NoOperatingSystem_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoOperatingSystem_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoOperatingSystem_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoOperatingSystem_Access_Array_Access is (if Value /= null and then Value.all in NoOperatingSystem_Access_Array_Object'Class then NoOperatingSystem_Access_Array_Object'Class (Value.all).Value else null);
   type NoOperatingSystem_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoOperatingSystem_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoOperatingSystem_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoOperatingSystem_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoOperatingSystem_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoOperatingSystem_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoOperatingSystem_Access_Array_Access_Array_Object'Class then NoOperatingSystem_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.system.os.NoOperatingSystem_Package_References;

with org.allbinary.logic.system.os.NoOperatingSystem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package; use org.allbinary.logic.system.os.GenericOperatingSystem_Package;

package org.allbinary.logic.system.os.NoOperatingSystem_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NoOperatingSystem_Access is org.allbinary.logic.system.os.NoOperatingSystem_Package_References.NoOperatingSystem_Access;
   function "=" (Left, Right : NoOperatingSystem_Access) return Boolean renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References."=";
   subtype NoOperatingSystem_Access_Array is org.allbinary.logic.system.os.NoOperatingSystem_Package_References.NoOperatingSystem_Access_Array;
   function "=" (Left, Right : NoOperatingSystem_Access_Array) return Boolean renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References."=";
   subtype NoOperatingSystem_Access_Array_Access is org.allbinary.logic.system.os.NoOperatingSystem_Package_References.NoOperatingSystem_Access_Array_Access;
   function "=" (Left, Right : NoOperatingSystem_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References."=";
   function Java_Box (Value : NoOperatingSystem_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References.Java_Box;
   function Java_Unbox_NoOperatingSystem_Access_Array (Value : access Java_Object'Class) return NoOperatingSystem_Access_Array_Access renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References.Java_Unbox_NoOperatingSystem_Access_Array;
   subtype NoOperatingSystem_Access_Array_Access_Array is org.allbinary.logic.system.os.NoOperatingSystem_Package_References.NoOperatingSystem_Access_Array_Access_Array;
   function "=" (Left, Right : NoOperatingSystem_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References."=";
   subtype NoOperatingSystem_Access_Array_Access_Array_Access is org.allbinary.logic.system.os.NoOperatingSystem_Package_References.NoOperatingSystem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoOperatingSystem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References."=";
   function Java_Box (Value : NoOperatingSystem_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References.Java_Box;
   function Java_Unbox_NoOperatingSystem_Access_Array_Access_Array (Value : access Java_Object'Class) return NoOperatingSystem_Access_Array_Access_Array_Access renames org.allbinary.logic.system.os.NoOperatingSystem_Package_References.Java_Unbox_NoOperatingSystem_Access_Array_Access_Array;

   type NoOperatingSystem is new GenericOperatingSystem with null record;
   NO_OPERATING_SYSTEM : GenericOperatingSystem_Access;

   procedure Initialize (This : in out NoOperatingSystem'Class);
   function Create return NoOperatingSystem_Access;

end org.allbinary.logic.system.os.NoOperatingSystem_Package;


