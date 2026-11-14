-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.input.RTSPlayerGameInputProcessor_Package;
package org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References is
   type RTSPlayerGameInputProcessor_Access is access all org.allbinary.game.input.RTSPlayerGameInputProcessor_Package.RTSPlayerGameInputProcessor'Class;
   type RTSPlayerGameInputProcessor_Access_Array is array (Natural range <>) of RTSPlayerGameInputProcessor_Access;
   type RTSPlayerGameInputProcessor_Access_Array_Access is access all RTSPlayerGameInputProcessor_Access_Array;
   type RTSPlayerGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of RTSPlayerGameInputProcessor_Access_Array_Access;
   type RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access is access all RTSPlayerGameInputProcessor_Access_Array_Access_Array;
   type RTSPlayerGameInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSPlayerGameInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSPlayerGameInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSPlayerGameInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSPlayerGameInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSPlayerGameInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in RTSPlayerGameInputProcessor_Access_Array_Object'Class then RTSPlayerGameInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type RTSPlayerGameInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RTSPlayerGameInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RTSPlayerGameInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RTSPlayerGameInputProcessor_Access_Array_Access_Array_Object'Class then RTSPlayerGameInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References;

with org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
limited with org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.input.RTSPlayerGameInput_Package_References;

package org.allbinary.game.input.RTSPlayerGameInputProcessor_Package is

   package Reference_Types is
   subtype RTSPlayerGameInput_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access;
   use type RTSPlayerGameInput_Access;
   subtype RTSPlayerGameInput_Access_Array is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array;
   use type RTSPlayerGameInput_Access_Array;
   subtype RTSPlayerGameInput_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access;
   use type RTSPlayerGameInput_Access_Array_Access;
   subtype RTSPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access_Array;
   use type RTSPlayerGameInput_Access_Array_Access_Array;
   subtype RTSPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access_Array_Access;
   use type RTSPlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSPlayerGameInputProcessor_Access is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   subtype RTSPlayerGameInputProcessor_Access_Array is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access_Array;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   subtype RTSPlayerGameInputProcessor_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   function Java_Box (Value : RTSPlayerGameInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_RTSPlayerGameInputProcessor_Access_Array (Value : access Java_Object'Class) return RTSPlayerGameInputProcessor_Access_Array_Access renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.Java_Unbox_RTSPlayerGameInputProcessor_Access_Array;
   subtype RTSPlayerGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   subtype RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   function Java_Box (Value : RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_RTSPlayerGameInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.Java_Unbox_RTSPlayerGameInputProcessor_Access_Array_Access_Array;

   type RTSPlayerGameInputProcessor is new GameInputProcessor with record
      rtsPlayerGameInput : RTSPlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out RTSPlayerGameInputProcessor'Class; rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class);
   function Create (rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class) return RTSPlayerGameInputProcessor_Access;

end org.allbinary.game.input.RTSPlayerGameInputProcessor_Package;


