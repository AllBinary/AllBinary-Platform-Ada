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
limited with org.allbinary.game.input.Input_Package;
package org.allbinary.game.input.Input_Package_References is
   type Input_Access is access all org.allbinary.game.input.Input_Package.Input'Class;
   type Input_Access_Array is array (Natural range <>) of Input_Access;
   type Input_Access_Array_Access is access all Input_Access_Array;
   type Input_Access_Array_Access_Array is array (Natural range <>) of Input_Access_Array_Access;
   type Input_Access_Array_Access_Array_Access is access all Input_Access_Array_Access_Array;
   type Input_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Input_Access_Array_Access;
   end record;
   function Java_Box (Value : Input_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Input_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Input_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Input_Access_Array_Access is (if Value /= null and then Value.all in Input_Access_Array_Object'Class then Input_Access_Array_Object'Class (Value.all).Value else null);
   type Input_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Input_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Input_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Input_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Input_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Input_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Input_Access_Array_Access_Array_Object'Class then Input_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.Input_Package_References;

with org.allbinary.game.input.Input_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.input.Input_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   function "=" (Left, Right : Input_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   function "=" (Left, Right : Input_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   function Java_Box (Value : Input_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.Input_Package_References.Java_Box;
   function Java_Unbox_Input_Access_Array (Value : access Java_Object'Class) return Input_Access_Array_Access renames org.allbinary.game.input.Input_Package_References.Java_Unbox_Input_Access_Array;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   function "=" (Left, Right : Input_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Input_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.Input_Package_References."=";
   function Java_Box (Value : Input_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.Input_Package_References.Java_Box;
   function Java_Unbox_Input_Access_Array_Access_Array (Value : access Java_Object'Class) return Input_Access_Array_Access_Array_Access renames org.allbinary.game.input.Input_Package_References.Java_Unbox_Input_Access_Array_Access_Array;

   type Input is new Java_Object with record
      id : Integer;
      name : Unbounded_String;
   end record;

   procedure Initialize (This : in out Input'Class; id : Integer; name : Unbounded_String);
   function Create (id : Integer; name : Unbounded_String) return Input_Access;
   function getId (This : in out Input) return Integer;
   procedure setId (This : in out Input; key : Integer);
   function getName (This : in out Input) return Unbounded_String;
   procedure setName (This : in out Input; keyName : Unbounded_String);
   function toString (This : in out Input) return Unbounded_String;

end org.allbinary.game.input.Input_Package;


