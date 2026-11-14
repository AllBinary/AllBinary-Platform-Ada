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
limited with org.allbinary.init.NoLicense_Package;
package org.allbinary.init.NoLicense_Package_References is
   type NoLicense_Access is access all org.allbinary.init.NoLicense_Package.NoLicense'Class;
   type NoLicense_Access_Array is array (Natural range <>) of NoLicense_Access;
   type NoLicense_Access_Array_Access is access all NoLicense_Access_Array;
   type NoLicense_Access_Array_Access_Array is array (Natural range <>) of NoLicense_Access_Array_Access;
   type NoLicense_Access_Array_Access_Array_Access is access all NoLicense_Access_Array_Access_Array;
   type NoLicense_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoLicense_Access_Array_Access;
   end record;
   function Java_Box (Value : NoLicense_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoLicense_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoLicense_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoLicense_Access_Array_Access is (if Value /= null and then Value.all in NoLicense_Access_Array_Object'Class then NoLicense_Access_Array_Object'Class (Value.all).Value else null);
   type NoLicense_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoLicense_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoLicense_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoLicense_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoLicense_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoLicense_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoLicense_Access_Array_Access_Array_Object'Class then NoLicense_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.init.NoLicense_Package_References;

with org.allbinary.init.NoLicense_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.ClassLoader_Package; use java.lang.ClassLoader_Package;

package org.allbinary.init.NoLicense_Package is

   package ClassLoader_Package renames Standard.java.lang.ClassLoader_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NoLicense_Access is org.allbinary.init.NoLicense_Package_References.NoLicense_Access;
   function "=" (Left, Right : NoLicense_Access) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   subtype NoLicense_Access_Array is org.allbinary.init.NoLicense_Package_References.NoLicense_Access_Array;
   function "=" (Left, Right : NoLicense_Access_Array) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   subtype NoLicense_Access_Array_Access is org.allbinary.init.NoLicense_Package_References.NoLicense_Access_Array_Access;
   function "=" (Left, Right : NoLicense_Access_Array_Access) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   function Java_Box (Value : NoLicense_Access_Array_Access) return Java_Object_Access renames org.allbinary.init.NoLicense_Package_References.Java_Box;
   function Java_Unbox_NoLicense_Access_Array (Value : access Java_Object'Class) return NoLicense_Access_Array_Access renames org.allbinary.init.NoLicense_Package_References.Java_Unbox_NoLicense_Access_Array;
   subtype NoLicense_Access_Array_Access_Array is org.allbinary.init.NoLicense_Package_References.NoLicense_Access_Array_Access_Array;
   function "=" (Left, Right : NoLicense_Access_Array_Access_Array) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   subtype NoLicense_Access_Array_Access_Array_Access is org.allbinary.init.NoLicense_Package_References.NoLicense_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoLicense_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.init.NoLicense_Package_References."=";
   function Java_Box (Value : NoLicense_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.init.NoLicense_Package_References.Java_Box;
   function Java_Unbox_NoLicense_Access_Array_Access_Array (Value : access Java_Object'Class) return NoLicense_Access_Array_Access_Array_Access renames org.allbinary.init.NoLicense_Package_References.Java_Unbox_NoLicense_Access_Array_Access_Array;

   type NoLicense is new Java_Object with null record;

   procedure Initialize (This : in out NoLicense'Class);
   function Create return NoLicense_Access;
   procedure init (classLoader_Param : access ClassLoader_Package.ClassLoader'Class; pathString : Unbounded_String);

end org.allbinary.init.NoLicense_Package;


