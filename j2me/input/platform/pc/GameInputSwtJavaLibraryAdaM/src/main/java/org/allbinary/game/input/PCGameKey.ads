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
limited with org.allbinary.game.input.PCGameKey_Package;
package org.allbinary.game.input.PCGameKey_Package_References is
   type PCGameKey_Access is access all org.allbinary.game.input.PCGameKey_Package.PCGameKey'Class;
   type PCGameKey_Access_Array is array (Natural range <>) of PCGameKey_Access;
   type PCGameKey_Access_Array_Access is access all PCGameKey_Access_Array;
   type PCGameKey_Access_Array_Access_Array is array (Natural range <>) of PCGameKey_Access_Array_Access;
   type PCGameKey_Access_Array_Access_Array_Access is access all PCGameKey_Access_Array_Access_Array;
   type PCGameKey_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PCGameKey_Access_Array_Access;
   end record;
   function Java_Box (Value : PCGameKey_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PCGameKey_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PCGameKey_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PCGameKey_Access_Array_Access is (if Value /= null and then Value.all in PCGameKey_Access_Array_Object'Class then PCGameKey_Access_Array_Object'Class (Value.all).Value else null);
   type PCGameKey_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PCGameKey_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PCGameKey_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PCGameKey_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PCGameKey_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PCGameKey_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PCGameKey_Access_Array_Access_Array_Object'Class then PCGameKey_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.PCGameKey_Package_References;

with org.allbinary.game.input.PCGameKey_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;

package org.allbinary.game.input.PCGameKey_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PCGameKey_Access is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access;
   function "=" (Left, Right : PCGameKey_Access) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   subtype PCGameKey_Access_Array is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access_Array;
   function "=" (Left, Right : PCGameKey_Access_Array) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   subtype PCGameKey_Access_Array_Access is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access_Array_Access;
   function "=" (Left, Right : PCGameKey_Access_Array_Access) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   function Java_Box (Value : PCGameKey_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PCGameKey_Package_References.Java_Box;
   function Java_Unbox_PCGameKey_Access_Array (Value : access Java_Object'Class) return PCGameKey_Access_Array_Access renames org.allbinary.game.input.PCGameKey_Package_References.Java_Unbox_PCGameKey_Access_Array;
   subtype PCGameKey_Access_Array_Access_Array is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access_Array_Access_Array;
   function "=" (Left, Right : PCGameKey_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   subtype PCGameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.PCGameKey_Package_References.PCGameKey_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PCGameKey_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PCGameKey_Package_References."=";
   function Java_Box (Value : PCGameKey_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PCGameKey_Package_References.Java_Box;
   function Java_Unbox_PCGameKey_Access_Array_Access_Array (Value : access Java_Object'Class) return PCGameKey_Access_Array_Access_Array_Access renames org.allbinary.game.input.PCGameKey_Package_References.Java_Unbox_PCGameKey_Access_Array_Access_Array;

   type PCGameKey is new Input_Package.Input with null record;

   procedure Initialize (This : in out PCGameKey'Class; keyCode : Integer; name : Unbounded_String);
   function Create (keyCode : Integer; name : Unbounded_String) return PCGameKey_Access;
   function toString (This : in out PCGameKey) return Unbounded_String;
   function getString (keyCode : Integer) return Unbounded_String;
   procedure getString (keyCode : Integer);

end org.allbinary.game.input.PCGameKey_Package;


