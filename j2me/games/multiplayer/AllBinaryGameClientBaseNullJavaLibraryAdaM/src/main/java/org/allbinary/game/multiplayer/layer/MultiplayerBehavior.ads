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

limited with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package;
package org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References is
   type MultiplayerBehavior_Access is access all org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package.MultiplayerBehavior'Class;
   type MultiplayerBehavior_Access_Array is array (Natural range <>) of MultiplayerBehavior_Access;
   type MultiplayerBehavior_Access_Array_Access is access all MultiplayerBehavior_Access_Array;
   type MultiplayerBehavior_Access_Array_Access_Array is array (Natural range <>) of MultiplayerBehavior_Access_Array_Access;
   type MultiplayerBehavior_Access_Array_Access_Array_Access is access all MultiplayerBehavior_Access_Array_Access_Array;
end org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References;

with org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MultiplayerBehavior_Access is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access;
   function "=" (Left, Right : MultiplayerBehavior_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References."=";
   subtype MultiplayerBehavior_Access_Array is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access_Array;
   function "=" (Left, Right : MultiplayerBehavior_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References."=";
   subtype MultiplayerBehavior_Access_Array_Access is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access_Array_Access;
   function "=" (Left, Right : MultiplayerBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References."=";
   subtype MultiplayerBehavior_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : MultiplayerBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References."=";
   subtype MultiplayerBehavior_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References.MultiplayerBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiplayerBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package_References."=";

   type MultiplayerBehavior is new Java_Object with null record;
   NULL_MULTIPLAYER_BEHAVIOR : MultiplayerBehavior_Access;

   procedure Initialize (This : in out MultiplayerBehavior'Class; username : Unbounded_String);
   function Create (username : Unbounded_String) return MultiplayerBehavior_Access;
   procedure startTick (This : in out MultiplayerBehavior);
   procedure endTick (This : in out MultiplayerBehavior);
   function getApproximateElapsed (This : in out MultiplayerBehavior) return Long_Long_Integer;

end org.allbinary.game.multiplayer.layer.MultiplayerBehavior_Package;


