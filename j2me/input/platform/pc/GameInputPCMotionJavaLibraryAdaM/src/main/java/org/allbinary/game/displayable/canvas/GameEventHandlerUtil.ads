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
limited with org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package;
package org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References is
   type GameEventHandlerUtil_Access is access all org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package.GameEventHandlerUtil'Class;
   type GameEventHandlerUtil_Access_Array is array (Natural range <>) of GameEventHandlerUtil_Access;
   type GameEventHandlerUtil_Access_Array_Access is access all GameEventHandlerUtil_Access_Array;
   type GameEventHandlerUtil_Access_Array_Access_Array is array (Natural range <>) of GameEventHandlerUtil_Access_Array_Access;
   type GameEventHandlerUtil_Access_Array_Access_Array_Access is access all GameEventHandlerUtil_Access_Array_Access_Array;
   type GameEventHandlerUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameEventHandlerUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : GameEventHandlerUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameEventHandlerUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameEventHandlerUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameEventHandlerUtil_Access_Array_Access is (if Value /= null and then Value.all in GameEventHandlerUtil_Access_Array_Object'Class then GameEventHandlerUtil_Access_Array_Object'Class (Value.all).Value else null);
   type GameEventHandlerUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameEventHandlerUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameEventHandlerUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameEventHandlerUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameEventHandlerUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameEventHandlerUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameEventHandlerUtil_Access_Array_Access_Array_Object'Class then GameEventHandlerUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References;

with org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameEventHandlerUtil_Access is org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.GameEventHandlerUtil_Access;
   function "=" (Left, Right : GameEventHandlerUtil_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References."=";
   subtype GameEventHandlerUtil_Access_Array is org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.GameEventHandlerUtil_Access_Array;
   function "=" (Left, Right : GameEventHandlerUtil_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References."=";
   subtype GameEventHandlerUtil_Access_Array_Access is org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.GameEventHandlerUtil_Access_Array_Access;
   function "=" (Left, Right : GameEventHandlerUtil_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References."=";
   function Java_Box (Value : GameEventHandlerUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.Java_Box;
   function Java_Unbox_GameEventHandlerUtil_Access_Array (Value : access Java_Object'Class) return GameEventHandlerUtil_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.Java_Unbox_GameEventHandlerUtil_Access_Array;
   subtype GameEventHandlerUtil_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.GameEventHandlerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GameEventHandlerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References."=";
   subtype GameEventHandlerUtil_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.GameEventHandlerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameEventHandlerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References."=";
   function Java_Box (Value : GameEventHandlerUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.Java_Box;
   function Java_Unbox_GameEventHandlerUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return GameEventHandlerUtil_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package_References.Java_Unbox_GameEventHandlerUtil_Access_Array_Access_Array;

   type GameEventHandlerUtil is new Java_Object with null record;

   procedure Initialize (This : in out GameEventHandlerUtil'Class);
   function Create return GameEventHandlerUtil_Access;
   procedure removeAllListeners;

end org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package;


