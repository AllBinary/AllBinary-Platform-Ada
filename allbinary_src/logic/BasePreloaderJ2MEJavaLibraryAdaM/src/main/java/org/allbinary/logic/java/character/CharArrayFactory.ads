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
limited with org.allbinary.logic.java.character_Id.CharArrayFactory_Package;
package org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References is
   type CharArrayFactory_Access is access all org.allbinary.logic.java.character_Id.CharArrayFactory_Package.CharArrayFactory'Class;
   type CharArrayFactory_Access_Array is array (Natural range <>) of CharArrayFactory_Access;
   type CharArrayFactory_Access_Array_Access is access all CharArrayFactory_Access_Array;
   type CharArrayFactory_Access_Array_Access_Array is array (Natural range <>) of CharArrayFactory_Access_Array_Access;
   type CharArrayFactory_Access_Array_Access_Array_Access is access all CharArrayFactory_Access_Array_Access_Array;
   type CharArrayFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CharArrayFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CharArrayFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CharArrayFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CharArrayFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CharArrayFactory_Access_Array_Access is (if Value /= null and then Value.all in CharArrayFactory_Access_Array_Object'Class then CharArrayFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CharArrayFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CharArrayFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CharArrayFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CharArrayFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CharArrayFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CharArrayFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CharArrayFactory_Access_Array_Access_Array_Object'Class then CharArrayFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References;

with org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.java.character_Id.CharArrayFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CharArrayFactory_Access is org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.CharArrayFactory_Access;
   function "=" (Left, Right : CharArrayFactory_Access) return Boolean renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References."=";
   subtype CharArrayFactory_Access_Array is org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.CharArrayFactory_Access_Array;
   function "=" (Left, Right : CharArrayFactory_Access_Array) return Boolean renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References."=";
   subtype CharArrayFactory_Access_Array_Access is org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.CharArrayFactory_Access_Array_Access;
   function "=" (Left, Right : CharArrayFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References."=";
   function Java_Box (Value : CharArrayFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.Java_Box;
   function Java_Unbox_CharArrayFactory_Access_Array (Value : access Java_Object'Class) return CharArrayFactory_Access_Array_Access renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.Java_Unbox_CharArrayFactory_Access_Array;
   subtype CharArrayFactory_Access_Array_Access_Array is org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.CharArrayFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CharArrayFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References."=";
   subtype CharArrayFactory_Access_Array_Access_Array_Access is org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.CharArrayFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CharArrayFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References."=";
   function Java_Box (Value : CharArrayFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.Java_Box;
   function Java_Unbox_CharArrayFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CharArrayFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.java.character_Id.CharArrayFactory_Package_References.Java_Unbox_CharArrayFactory_Access_Array_Access_Array;

   type CharArrayFactory is new Java_Object with record
      zeroCharArray : Character_Array_Access;
   end record;
   instance : CharArrayFactory_Access;

   procedure Initialize (This : in out CharArrayFactory'Class);
   function Create return CharArrayFactory_Access;
   function getInstance return CharArrayFactory_Access;
   function getZeroCharArray (This : in out CharArrayFactory) return Character_Array_Access;

end org.allbinary.logic.java.character_Id.CharArrayFactory_Package;


