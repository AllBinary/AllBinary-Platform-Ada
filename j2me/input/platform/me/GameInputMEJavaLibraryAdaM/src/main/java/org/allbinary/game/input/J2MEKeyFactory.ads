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
limited with org.allbinary.game.input.J2MEKeyFactory_Package;
package org.allbinary.game.input.J2MEKeyFactory_Package_References is
   type J2MEKeyFactory_Access is access all org.allbinary.game.input.J2MEKeyFactory_Package.J2MEKeyFactory'Class;
   type J2MEKeyFactory_Access_Array is array (Natural range <>) of J2MEKeyFactory_Access;
   type J2MEKeyFactory_Access_Array_Access is access all J2MEKeyFactory_Access_Array;
   type J2MEKeyFactory_Access_Array_Access_Array is array (Natural range <>) of J2MEKeyFactory_Access_Array_Access;
   type J2MEKeyFactory_Access_Array_Access_Array_Access is access all J2MEKeyFactory_Access_Array_Access_Array;
   type J2MEKeyFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : J2MEKeyFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : J2MEKeyFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new J2MEKeyFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_J2MEKeyFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return J2MEKeyFactory_Access_Array_Access is (if Value /= null and then Value.all in J2MEKeyFactory_Access_Array_Object'Class then J2MEKeyFactory_Access_Array_Object'Class (Value.all).Value else null);
   type J2MEKeyFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : J2MEKeyFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : J2MEKeyFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new J2MEKeyFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_J2MEKeyFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return J2MEKeyFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in J2MEKeyFactory_Access_Array_Access_Array_Object'Class then J2MEKeyFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.J2MEKeyFactory_Package_References;

with org.allbinary.game.input.J2MEKeyFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.GameKeyFactory_Package_References;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;

package org.allbinary.game.input.J2MEKeyFactory_Package is

   package Reference_Types is
   subtype GameKeyFactory_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access;
   use type GameKeyFactory_Access;
   subtype GameKeyFactory_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array;
   use type GameKeyFactory_Access_Array;
   subtype GameKeyFactory_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access;
   use type GameKeyFactory_Access_Array_Access;
   subtype GameKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array;
   use type GameKeyFactory_Access_Array_Access_Array;
   subtype GameKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKeyFactory_Package_References.GameKeyFactory_Access_Array_Access_Array_Access;
   use type GameKeyFactory_Access_Array_Access_Array_Access;
   subtype Input_Access is org.allbinary.game.input.Input_Package_References.Input_Access;
   use type Input_Access;
   subtype Input_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array;
   use type Input_Access_Array;
   subtype Input_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access;
   use type Input_Access_Array_Access;
   subtype Input_Access_Array_Access_Array is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array;
   use type Input_Access_Array_Access_Array;
   subtype Input_Access_Array_Access_Array_Access is org.allbinary.game.input.Input_Package_References.Input_Access_Array_Access_Array_Access;
   use type Input_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype J2MEKeyFactory_Access is org.allbinary.game.input.J2MEKeyFactory_Package_References.J2MEKeyFactory_Access;
   function "=" (Left, Right : J2MEKeyFactory_Access) return Boolean renames org.allbinary.game.input.J2MEKeyFactory_Package_References."=";
   subtype J2MEKeyFactory_Access_Array is org.allbinary.game.input.J2MEKeyFactory_Package_References.J2MEKeyFactory_Access_Array;
   function "=" (Left, Right : J2MEKeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.J2MEKeyFactory_Package_References."=";
   subtype J2MEKeyFactory_Access_Array_Access is org.allbinary.game.input.J2MEKeyFactory_Package_References.J2MEKeyFactory_Access_Array_Access;
   function "=" (Left, Right : J2MEKeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.J2MEKeyFactory_Package_References."=";
   function Java_Box (Value : J2MEKeyFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.J2MEKeyFactory_Package_References.Java_Box;
   function Java_Unbox_J2MEKeyFactory_Access_Array (Value : access Java_Object'Class) return J2MEKeyFactory_Access_Array_Access renames org.allbinary.game.input.J2MEKeyFactory_Package_References.Java_Unbox_J2MEKeyFactory_Access_Array;
   subtype J2MEKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.J2MEKeyFactory_Package_References.J2MEKeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : J2MEKeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.J2MEKeyFactory_Package_References."=";
   subtype J2MEKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.J2MEKeyFactory_Package_References.J2MEKeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : J2MEKeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.J2MEKeyFactory_Package_References."=";
   function Java_Box (Value : J2MEKeyFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.J2MEKeyFactory_Package_References.Java_Box;
   function Java_Unbox_J2MEKeyFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return J2MEKeyFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.J2MEKeyFactory_Package_References.Java_Unbox_J2MEKeyFactory_Access_Array_Access_Array;

   type J2MEKeyFactory is new Java_Object with record
      gameKeyFactory : GameKeyFactory_Access;
   end record;
   instance : J2MEKeyFactory_Access;

   procedure Initialize (This : in out J2MEKeyFactory'Class);
   function Create return J2MEKeyFactory_Access;
   function getInstance return J2MEKeyFactory_Access;
   procedure init (This : in out J2MEKeyFactory);
   function isSubmission (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isSubmission (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class);
   function isDelete (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isDelete (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class);
   function isBackSpace (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isBackSpace (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class);
   function isUp (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isUp (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class);
   function isDown (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isDown (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class);
   function isLeft (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isLeft (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class);
   function isRight (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isRight (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class);
   function isEnter (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isEnter (This : in out J2MEKeyFactory; input_Param : access Input_Package.Input'Class);

end org.allbinary.game.input.J2MEKeyFactory_Package;


