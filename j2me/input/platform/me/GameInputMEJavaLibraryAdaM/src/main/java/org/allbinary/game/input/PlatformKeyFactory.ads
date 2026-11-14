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
limited with org.allbinary.game.input.PlatformKeyFactory_Package;
package org.allbinary.game.input.PlatformKeyFactory_Package_References is
   type PlatformKeyFactory_Access is access all org.allbinary.game.input.PlatformKeyFactory_Package.PlatformKeyFactory'Class;
   type PlatformKeyFactory_Access_Array is array (Natural range <>) of PlatformKeyFactory_Access;
   type PlatformKeyFactory_Access_Array_Access is access all PlatformKeyFactory_Access_Array;
   type PlatformKeyFactory_Access_Array_Access_Array is array (Natural range <>) of PlatformKeyFactory_Access_Array_Access;
   type PlatformKeyFactory_Access_Array_Access_Array_Access is access all PlatformKeyFactory_Access_Array_Access_Array;
   type PlatformKeyFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformKeyFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformKeyFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformKeyFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformKeyFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformKeyFactory_Access_Array_Access is (if Value /= null and then Value.all in PlatformKeyFactory_Access_Array_Object'Class then PlatformKeyFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PlatformKeyFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformKeyFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformKeyFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformKeyFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformKeyFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformKeyFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlatformKeyFactory_Access_Array_Access_Array_Object'Class then PlatformKeyFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.PlatformKeyFactory_Package_References;

with org.allbinary.game.input.PlatformKeyFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.Input_Package_References;

package org.allbinary.game.input.PlatformKeyFactory_Package is

   package Reference_Types is
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


   subtype PlatformKeyFactory_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access;
   function "=" (Left, Right : PlatformKeyFactory_Access) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   subtype PlatformKeyFactory_Access_Array is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array;
   function "=" (Left, Right : PlatformKeyFactory_Access_Array) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   subtype PlatformKeyFactory_Access_Array_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformKeyFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   function Java_Box (Value : PlatformKeyFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PlatformKeyFactory_Package_References.Java_Box;
   function Java_Unbox_PlatformKeyFactory_Access_Array (Value : access Java_Object'Class) return PlatformKeyFactory_Access_Array_Access renames org.allbinary.game.input.PlatformKeyFactory_Package_References.Java_Unbox_PlatformKeyFactory_Access_Array;
   subtype PlatformKeyFactory_Access_Array_Access_Array is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformKeyFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   subtype PlatformKeyFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.PlatformKeyFactory_Package_References.PlatformKeyFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformKeyFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlatformKeyFactory_Package_References."=";
   function Java_Box (Value : PlatformKeyFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.PlatformKeyFactory_Package_References.Java_Box;
   function Java_Unbox_PlatformKeyFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PlatformKeyFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.PlatformKeyFactory_Package_References.Java_Unbox_PlatformKeyFactory_Access_Array_Access_Array;

   type PlatformKeyFactory is new Java_Object with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out PlatformKeyFactory'Class);
   function Create return PlatformKeyFactory_Access;
   function getInstance return PlatformKeyFactory_Access;
   function getString (This : in out PlatformKeyFactory; keyCode : Integer) return Unbounded_String;
   procedure getString (This : in out PlatformKeyFactory; keyCode : Integer);
   function isSubmission (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isSubmission (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class);
   function isDelete (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isDelete (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class);
   function isBackSpace (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isBackSpace (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class);
   function isLeft (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isLeft (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class);
   function isRight (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isRight (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class);
   function isUp (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isUp (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class);
   function isDown (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isDown (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class);
   function isEnter (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class) return Boolean;
   procedure isEnter (This : in out PlatformKeyFactory; input_Param : access Input_Package.Input'Class);

end org.allbinary.game.input.PlatformKeyFactory_Package;


