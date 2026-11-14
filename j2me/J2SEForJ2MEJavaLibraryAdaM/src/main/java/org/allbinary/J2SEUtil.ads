-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.J2SEUtil_Package;
package org.allbinary.J2SEUtil_Package_References is
   type J2SEUtil_Access is access all org.allbinary.J2SEUtil_Package.J2SEUtil'Class;
   type J2SEUtil_Access_Array is array (Natural range <>) of J2SEUtil_Access;
   type J2SEUtil_Access_Array_Access is access all J2SEUtil_Access_Array;
   type J2SEUtil_Access_Array_Access_Array is array (Natural range <>) of J2SEUtil_Access_Array_Access;
   type J2SEUtil_Access_Array_Access_Array_Access is access all J2SEUtil_Access_Array_Access_Array;
   type J2SEUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : J2SEUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : J2SEUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new J2SEUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_J2SEUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return J2SEUtil_Access_Array_Access is (if Value /= null and then Value.all in J2SEUtil_Access_Array_Object'Class then J2SEUtil_Access_Array_Object'Class (Value.all).Value else null);
   type J2SEUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : J2SEUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : J2SEUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new J2SEUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_J2SEUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return J2SEUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in J2SEUtil_Access_Array_Access_Array_Object'Class then J2SEUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.J2SEUtil_Package_References;

with org.allbinary.J2SEUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with java.util.Map_Package; use java.util.Map_Package;
with java.util.Set_Package; use java.util.Set_Package;

package org.allbinary.J2SEUtil_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Map_Package renames Standard.java.util.Map_Package;
   package Set_Package renames Standard.java.util.Set_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype J2SEUtil_Access is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access;
   function "=" (Left, Right : J2SEUtil_Access) return Boolean renames org.allbinary.J2SEUtil_Package_References."=";
   subtype J2SEUtil_Access_Array is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access_Array;
   function "=" (Left, Right : J2SEUtil_Access_Array) return Boolean renames org.allbinary.J2SEUtil_Package_References."=";
   subtype J2SEUtil_Access_Array_Access is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access_Array_Access;
   function "=" (Left, Right : J2SEUtil_Access_Array_Access) return Boolean renames org.allbinary.J2SEUtil_Package_References."=";
   function Java_Box (Value : J2SEUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.J2SEUtil_Package_References.Java_Box;
   function Java_Unbox_J2SEUtil_Access_Array (Value : access Java_Object'Class) return J2SEUtil_Access_Array_Access renames org.allbinary.J2SEUtil_Package_References.Java_Unbox_J2SEUtil_Access_Array;
   subtype J2SEUtil_Access_Array_Access_Array is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access_Array_Access_Array;
   function "=" (Left, Right : J2SEUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.J2SEUtil_Package_References."=";
   subtype J2SEUtil_Access_Array_Access_Array_Access is org.allbinary.J2SEUtil_Package_References.J2SEUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : J2SEUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.J2SEUtil_Package_References."=";
   function Java_Box (Value : J2SEUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.J2SEUtil_Package_References.Java_Box;
   function Java_Unbox_J2SEUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return J2SEUtil_Access_Array_Access_Array_Access renames org.allbinary.J2SEUtil_Package_References.Java_Unbox_J2SEUtil_Access_Array_Access_Array;

   type J2SEUtil is new Java_Object with null record;
   instance : J2SEUtil_Access;

   procedure Initialize (This : in out J2SEUtil'Class);
   function Create return J2SEUtil_Access;
   function getInstance return J2SEUtil_Access;
   function getHashMapAsArray (This : in out J2SEUtil; hashMap_Param : access HashMap_Package.HashMap'Class) return Java_Object_Access_Array_Access;
   procedure getHashMapAsArray (This : in out J2SEUtil; hashMap_Param : access HashMap_Package.HashMap'Class);
   function getMapAsArray (This : in out J2SEUtil; map_Param : access Map_Package.Map'Class) return Java_Object_Access_Array_Access;
   procedure getMapAsArray (This : in out J2SEUtil; map_Param : access Map_Package.Map'Class);
   function getSetAsArray (This : in out J2SEUtil; set_Param : access Set_Package.Set'Class) return Java_Object_Access_Array_Access;
   procedure getSetAsArray (This : in out J2SEUtil; set_Param : access Set_Package.Set'Class);

end org.allbinary.J2SEUtil_Package;


