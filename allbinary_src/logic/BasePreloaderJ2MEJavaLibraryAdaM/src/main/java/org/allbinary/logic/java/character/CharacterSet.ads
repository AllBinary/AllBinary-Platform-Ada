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
limited with org.allbinary.logic.java.character_Id.CharacterSet_Package;
package org.allbinary.logic.java.character_Id.CharacterSet_Package_References is
   type CharacterSet_Access is access all org.allbinary.logic.java.character_Id.CharacterSet_Package.CharacterSet'Class;
   type CharacterSet_Access_Array is array (Natural range <>) of CharacterSet_Access;
   type CharacterSet_Access_Array_Access is access all CharacterSet_Access_Array;
   type CharacterSet_Access_Array_Access_Array is array (Natural range <>) of CharacterSet_Access_Array_Access;
   type CharacterSet_Access_Array_Access_Array_Access is access all CharacterSet_Access_Array_Access_Array;
   type CharacterSet_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CharacterSet_Access_Array_Access;
   end record;
   function Java_Box (Value : CharacterSet_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CharacterSet_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CharacterSet_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CharacterSet_Access_Array_Access is (if Value /= null and then Value.all in CharacterSet_Access_Array_Object'Class then CharacterSet_Access_Array_Object'Class (Value.all).Value else null);
   type CharacterSet_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CharacterSet_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CharacterSet_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CharacterSet_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CharacterSet_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CharacterSet_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CharacterSet_Access_Array_Access_Array_Object'Class then CharacterSet_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.character_Id.CharacterSet_Package_References;

with org.allbinary.logic.java.character_Id.CharacterSet_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.character_Id.CharacterSet_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CharacterSet_Access is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access;
   function "=" (Left, Right : CharacterSet_Access) return Boolean renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References."=";
   subtype CharacterSet_Access_Array is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access_Array;
   function "=" (Left, Right : CharacterSet_Access_Array) return Boolean renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References."=";
   subtype CharacterSet_Access_Array_Access is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access_Array_Access;
   function "=" (Left, Right : CharacterSet_Access_Array_Access) return Boolean renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References."=";
   function Java_Box (Value : CharacterSet_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References.Java_Box;
   function Java_Unbox_CharacterSet_Access_Array (Value : access Java_Object'Class) return CharacterSet_Access_Array_Access renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References.Java_Unbox_CharacterSet_Access_Array;
   subtype CharacterSet_Access_Array_Access_Array is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access_Array_Access_Array;
   function "=" (Left, Right : CharacterSet_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References."=";
   subtype CharacterSet_Access_Array_Access_Array_Access is org.allbinary.logic.java.character_Id.CharacterSet_Package_References.CharacterSet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CharacterSet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References."=";
   function Java_Box (Value : CharacterSet_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References.Java_Box;
   function Java_Unbox_CharacterSet_Access_Array_Access_Array (Value : access Java_Object'Class) return CharacterSet_Access_Array_Access_Array_Access renames org.allbinary.logic.java.character_Id.CharacterSet_Package_References.Java_Unbox_CharacterSet_Access_Array_Access_Array;

   type CharacterSet is new Java_Object with null record;

   procedure Initialize (This : in out CharacterSet'Class);
   function Create return CharacterSet_Access;
   function toString (This : in out CharacterSet) return Unbounded_String;

end org.allbinary.logic.java.character_Id.CharacterSet_Package;


