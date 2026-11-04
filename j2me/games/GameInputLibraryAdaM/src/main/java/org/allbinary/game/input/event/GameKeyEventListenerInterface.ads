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

limited with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;
package org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References is
   type GameKeyEventListenerInterface_Access is access all org.allbinary.game.input.event.GameKeyEventListenerInterface_Package.GameKeyEventListenerInterface'Class;
   type GameKeyEventListenerInterface_Access_Array is array (Natural range <>) of GameKeyEventListenerInterface_Access;
   type GameKeyEventListenerInterface_Access_Array_Access is access all GameKeyEventListenerInterface_Access_Array;
   type GameKeyEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of GameKeyEventListenerInterface_Access_Array_Access;
   type GameKeyEventListenerInterface_Access_Array_Access_Array_Access is access all GameKeyEventListenerInterface_Access_Array_Access_Array;
end org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References;

with org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.DownGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.UpGameKeyEventListenerInterface_Package;
with org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package; use org.allbinary.game.input.event.PressGameKeyEventListenerInterface_Package;

package org.allbinary.game.input.event.GameKeyEventListenerInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type GameKeyEventListenerInterface is interface and DownGameKeyEventListenerInterface and UpGameKeyEventListenerInterface and PressGameKeyEventListenerInterface;
   subtype GameKeyEventListenerInterface_Access is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   subtype GameKeyEventListenerInterface_Access_Array is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access_Array;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   subtype GameKeyEventListenerInterface_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   subtype GameKeyEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   subtype GameKeyEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References.GameKeyEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEventListenerInterface_Package_References."=";
   function Java_Object_Access_From_GameKeyEventListenerInterface (Value : GameKeyEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.game.input.event.GameKeyEventListenerInterface_Package;


