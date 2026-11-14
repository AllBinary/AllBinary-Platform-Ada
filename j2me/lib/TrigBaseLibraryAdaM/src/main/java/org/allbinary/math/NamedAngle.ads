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
limited with org.allbinary.math.NamedAngle_Package;
package org.allbinary.math.NamedAngle_Package_References is
   type NamedAngle_Access is access all org.allbinary.math.NamedAngle_Package.NamedAngle'Class;
   type NamedAngle_Access_Array is array (Natural range <>) of NamedAngle_Access;
   type NamedAngle_Access_Array_Access is access all NamedAngle_Access_Array;
   type NamedAngle_Access_Array_Access_Array is array (Natural range <>) of NamedAngle_Access_Array_Access;
   type NamedAngle_Access_Array_Access_Array_Access is access all NamedAngle_Access_Array_Access_Array;
   type NamedAngle_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NamedAngle_Access_Array_Access;
   end record;
   function Java_Box (Value : NamedAngle_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NamedAngle_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NamedAngle_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NamedAngle_Access_Array_Access is (if Value /= null and then Value.all in NamedAngle_Access_Array_Object'Class then NamedAngle_Access_Array_Object'Class (Value.all).Value else null);
   type NamedAngle_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NamedAngle_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NamedAngle_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NamedAngle_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NamedAngle_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NamedAngle_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NamedAngle_Access_Array_Access_Array_Object'Class then NamedAngle_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.math.NamedAngle_Package_References;

with org.allbinary.math.NamedAngle_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;

package org.allbinary.math.NamedAngle_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NamedAngle_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access;
   function "=" (Left, Right : NamedAngle_Access) return Boolean renames org.allbinary.math.NamedAngle_Package_References."=";
   subtype NamedAngle_Access_Array is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array;
   function "=" (Left, Right : NamedAngle_Access_Array) return Boolean renames org.allbinary.math.NamedAngle_Package_References."=";
   subtype NamedAngle_Access_Array_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access;
   function "=" (Left, Right : NamedAngle_Access_Array_Access) return Boolean renames org.allbinary.math.NamedAngle_Package_References."=";
   function Java_Box (Value : NamedAngle_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.NamedAngle_Package_References.Java_Box;
   function Java_Unbox_NamedAngle_Access_Array (Value : access Java_Object'Class) return NamedAngle_Access_Array_Access renames org.allbinary.math.NamedAngle_Package_References.Java_Unbox_NamedAngle_Access_Array;
   subtype NamedAngle_Access_Array_Access_Array is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access_Array;
   function "=" (Left, Right : NamedAngle_Access_Array_Access_Array) return Boolean renames org.allbinary.math.NamedAngle_Package_References."=";
   subtype NamedAngle_Access_Array_Access_Array_Access is org.allbinary.math.NamedAngle_Package_References.NamedAngle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NamedAngle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.NamedAngle_Package_References."=";
   function Java_Box (Value : NamedAngle_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.NamedAngle_Package_References.Java_Box;
   function Java_Unbox_NamedAngle_Access_Array_Access_Array (Value : access Java_Object'Class) return NamedAngle_Access_Array_Access_Array_Access renames org.allbinary.math.NamedAngle_Package_References.Java_Unbox_NamedAngle_Access_Array_Access_Array;

   type NamedAngle is new Angle with record
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out NamedAngle'Class; angle : Short_Integer; name : Unbounded_String);
   function Create (angle : Short_Integer; name : Unbounded_String) return NamedAngle_Access;

end org.allbinary.math.NamedAngle_Package;


