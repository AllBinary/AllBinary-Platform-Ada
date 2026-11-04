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

limited with org.allbinary.game.layer.special.Special4GameInputProcessor_Package;
package org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References is
   type Special4GameInputProcessor_Access is access all org.allbinary.game.layer.special.Special4GameInputProcessor_Package.Special4GameInputProcessor'Class;
   type Special4GameInputProcessor_Access_Array is array (Natural range <>) of Special4GameInputProcessor_Access;
   type Special4GameInputProcessor_Access_Array_Access is access all Special4GameInputProcessor_Access_Array;
   type Special4GameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of Special4GameInputProcessor_Access_Array_Access;
   type Special4GameInputProcessor_Access_Array_Access_Array_Access is access all Special4GameInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References;

with org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.layer.special.SpecialGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialGameInputProcessor_Package;
limited with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;

package org.allbinary.game.layer.special.Special4GameInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   use type CollidableDestroyableDamageableLayer_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   use type CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Special4GameInputProcessor_Access is org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References.Special4GameInputProcessor_Access;
   function "=" (Left, Right : Special4GameInputProcessor_Access) return Boolean renames org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References."=";
   subtype Special4GameInputProcessor_Access_Array is org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References.Special4GameInputProcessor_Access_Array;
   function "=" (Left, Right : Special4GameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References."=";
   subtype Special4GameInputProcessor_Access_Array_Access is org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References.Special4GameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : Special4GameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References."=";
   subtype Special4GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References.Special4GameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : Special4GameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References."=";
   subtype Special4GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References.Special4GameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Special4GameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.Special4GameInputProcessor_Package_References."=";

   type Special4GameInputProcessor is new SpecialGameInputProcessor with null record;

   procedure Initialize (This : in out Special4GameInputProcessor'Class; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class);
   function Create (collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) return Special4GameInputProcessor_Access;
   procedure processEvent (This : in out Special4GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);

end org.allbinary.game.layer.special.Special4GameInputProcessor_Package;


