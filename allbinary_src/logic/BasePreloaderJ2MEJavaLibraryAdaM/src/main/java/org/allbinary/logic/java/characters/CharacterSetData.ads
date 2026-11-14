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
limited with org.allbinary.logic.java.characters.CharacterSetData_Package;
package org.allbinary.logic.java.characters.CharacterSetData_Package_References is
   type CharacterSetData_Access is access all org.allbinary.logic.java.characters.CharacterSetData_Package.CharacterSetData'Class;
   type CharacterSetData_Access_Array is array (Natural range <>) of CharacterSetData_Access;
   type CharacterSetData_Access_Array_Access is access all CharacterSetData_Access_Array;
   type CharacterSetData_Access_Array_Access_Array is array (Natural range <>) of CharacterSetData_Access_Array_Access;
   type CharacterSetData_Access_Array_Access_Array_Access is access all CharacterSetData_Access_Array_Access_Array;
   type CharacterSetData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CharacterSetData_Access_Array_Access;
   end record;
   function Java_Box (Value : CharacterSetData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CharacterSetData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CharacterSetData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CharacterSetData_Access_Array_Access is (if Value /= null and then Value.all in CharacterSetData_Access_Array_Object'Class then CharacterSetData_Access_Array_Object'Class (Value.all).Value else null);
   type CharacterSetData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CharacterSetData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CharacterSetData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CharacterSetData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CharacterSetData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CharacterSetData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CharacterSetData_Access_Array_Access_Array_Object'Class then CharacterSetData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.characters.CharacterSetData_Package_References;

with org.allbinary.logic.java.characters.CharacterSetData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.characters.CharacterSetData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CharacterSetData_Access is org.allbinary.logic.java.characters.CharacterSetData_Package_References.CharacterSetData_Access;
   function "=" (Left, Right : CharacterSetData_Access) return Boolean renames org.allbinary.logic.java.characters.CharacterSetData_Package_References."=";
   subtype CharacterSetData_Access_Array is org.allbinary.logic.java.characters.CharacterSetData_Package_References.CharacterSetData_Access_Array;
   function "=" (Left, Right : CharacterSetData_Access_Array) return Boolean renames org.allbinary.logic.java.characters.CharacterSetData_Package_References."=";
   subtype CharacterSetData_Access_Array_Access is org.allbinary.logic.java.characters.CharacterSetData_Package_References.CharacterSetData_Access_Array_Access;
   function "=" (Left, Right : CharacterSetData_Access_Array_Access) return Boolean renames org.allbinary.logic.java.characters.CharacterSetData_Package_References."=";
   function Java_Box (Value : CharacterSetData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.characters.CharacterSetData_Package_References.Java_Box;
   function Java_Unbox_CharacterSetData_Access_Array (Value : access Java_Object'Class) return CharacterSetData_Access_Array_Access renames org.allbinary.logic.java.characters.CharacterSetData_Package_References.Java_Unbox_CharacterSetData_Access_Array;
   subtype CharacterSetData_Access_Array_Access_Array is org.allbinary.logic.java.characters.CharacterSetData_Package_References.CharacterSetData_Access_Array_Access_Array;
   function "=" (Left, Right : CharacterSetData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.characters.CharacterSetData_Package_References."=";
   subtype CharacterSetData_Access_Array_Access_Array_Access is org.allbinary.logic.java.characters.CharacterSetData_Package_References.CharacterSetData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CharacterSetData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.characters.CharacterSetData_Package_References."=";
   function Java_Box (Value : CharacterSetData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.characters.CharacterSetData_Package_References.Java_Box;
   function Java_Unbox_CharacterSetData_Access_Array_Access_Array (Value : access Java_Object'Class) return CharacterSetData_Access_Array_Access_Array_Access renames org.allbinary.logic.java.characters.CharacterSetData_Package_References.Java_Unbox_CharacterSetData_Access_Array_Access_Array;

   type CharacterSetData is new Java_Object with record
      US_ASCII : Unbounded_String;
      ISO_8859_1 : Unbounded_String;
      UTF_8 : Unbounded_String;
      UTF_16 : Unbounded_String;
      UTF_16BE : Unbounded_String;
      UTF_16LE : Unbounded_String;
   end record;
   instance : CharacterSetData_Access;

   procedure Initialize (This : in out CharacterSetData'Class);
   function Create return CharacterSetData_Access;
   function getInstance return CharacterSetData_Access;

end org.allbinary.logic.java.characters.CharacterSetData_Package;


