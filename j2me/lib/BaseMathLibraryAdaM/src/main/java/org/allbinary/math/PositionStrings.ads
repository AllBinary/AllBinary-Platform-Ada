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
limited with org.allbinary.math.PositionStrings_Package;
package org.allbinary.math.PositionStrings_Package_References is
   type PositionStrings_Access is access all org.allbinary.math.PositionStrings_Package.PositionStrings'Class;
   type PositionStrings_Access_Array is array (Natural range <>) of PositionStrings_Access;
   type PositionStrings_Access_Array_Access is access all PositionStrings_Access_Array;
   type PositionStrings_Access_Array_Access_Array is array (Natural range <>) of PositionStrings_Access_Array_Access;
   type PositionStrings_Access_Array_Access_Array_Access is access all PositionStrings_Access_Array_Access_Array;
   type PositionStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PositionStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : PositionStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PositionStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PositionStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PositionStrings_Access_Array_Access is (if Value /= null and then Value.all in PositionStrings_Access_Array_Object'Class then PositionStrings_Access_Array_Object'Class (Value.all).Value else null);
   type PositionStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PositionStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PositionStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PositionStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PositionStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PositionStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PositionStrings_Access_Array_Access_Array_Object'Class then PositionStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.math.PositionStrings_Package_References;

with org.allbinary.math.PositionStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.math.PositionStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PositionStrings_Access is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access;
   function "=" (Left, Right : PositionStrings_Access) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   subtype PositionStrings_Access_Array is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access_Array;
   function "=" (Left, Right : PositionStrings_Access_Array) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   subtype PositionStrings_Access_Array_Access is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access_Array_Access;
   function "=" (Left, Right : PositionStrings_Access_Array_Access) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   function Java_Box (Value : PositionStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.PositionStrings_Package_References.Java_Box;
   function Java_Unbox_PositionStrings_Access_Array (Value : access Java_Object'Class) return PositionStrings_Access_Array_Access renames org.allbinary.math.PositionStrings_Package_References.Java_Unbox_PositionStrings_Access_Array;
   subtype PositionStrings_Access_Array_Access_Array is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access_Array_Access_Array;
   function "=" (Left, Right : PositionStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   subtype PositionStrings_Access_Array_Access_Array_Access is org.allbinary.math.PositionStrings_Package_References.PositionStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PositionStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.PositionStrings_Package_References."=";
   function Java_Box (Value : PositionStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.math.PositionStrings_Package_References.Java_Box;
   function Java_Unbox_PositionStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return PositionStrings_Access_Array_Access_Array_Access renames org.allbinary.math.PositionStrings_Package_References.Java_Unbox_PositionStrings_Access_Array_Access_Array;

   type PositionStrings is new Java_Object with record
      X : Unbounded_String;
      Y : Unbounded_String;
      X_LABEL : Unbounded_String;
      Y_LABEL : Unbounded_String;
      Z_LABEL : Unbounded_String;
      DX_LABEL : Unbounded_String;
      DY_LABEL : Unbounded_String;
      DZ_LABEL : Unbounded_String;
   end record;
   instance : PositionStrings_Access;

   procedure Initialize (This : in out PositionStrings'Class);
   function Create return PositionStrings_Access;
   function getInstance return PositionStrings_Access;

end org.allbinary.math.PositionStrings_Package;


