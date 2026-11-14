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
limited with org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;
package org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References is
   type RaceTrackPickupLayer_Access is access all org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package.RaceTrackPickupLayer'Class;
   type RaceTrackPickupLayer_Access_Array is array (Natural range <>) of RaceTrackPickupLayer_Access;
   type RaceTrackPickupLayer_Access_Array_Access is access all RaceTrackPickupLayer_Access_Array;
   type RaceTrackPickupLayer_Access_Array_Access_Array is array (Natural range <>) of RaceTrackPickupLayer_Access_Array_Access;
   type RaceTrackPickupLayer_Access_Array_Access_Array_Access is access all RaceTrackPickupLayer_Access_Array_Access_Array;
   type RaceTrackPickupLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackPickupLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackPickupLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackPickupLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackPickupLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackPickupLayer_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackPickupLayer_Access_Array_Object'Class then RaceTrackPickupLayer_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackPickupLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackPickupLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackPickupLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackPickupLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackPickupLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackPickupLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackPickupLayer_Access_Array_Access_Array_Object'Class then RaceTrackPickupLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References;

with org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
limited with org.allbinary.view.event.ViewPositionEventHandler_Package;
with org.allbinary.view.event.ViewPositionEventHandler_Package_References;
with org.allbinary.game.layer.pickup.PickupLayer_Package; use org.allbinary.game.layer.pickup.PickupLayer_Package;

package org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package ViewPositionEventHandler_Package renames Standard.org.allbinary.view.event.ViewPositionEventHandler_Package;
   package Reference_Types is
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   subtype ViewPositionEventHandler_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access;
   use type ViewPositionEventHandler_Access;
   subtype ViewPositionEventHandler_Access_Array is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array;
   use type ViewPositionEventHandler_Access_Array;
   subtype ViewPositionEventHandler_Access_Array_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access;
   use type ViewPositionEventHandler_Access_Array_Access;
   subtype ViewPositionEventHandler_Access_Array_Access_Array is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access_Array;
   use type ViewPositionEventHandler_Access_Array_Access_Array;
   subtype ViewPositionEventHandler_Access_Array_Access_Array_Access is org.allbinary.view.event.ViewPositionEventHandler_Package_References.ViewPositionEventHandler_Access_Array_Access_Array_Access;
   use type ViewPositionEventHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackPickupLayer_Access is org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.RaceTrackPickupLayer_Access;
   function "=" (Left, Right : RaceTrackPickupLayer_Access) return Boolean renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References."=";
   subtype RaceTrackPickupLayer_Access_Array is org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.RaceTrackPickupLayer_Access_Array;
   function "=" (Left, Right : RaceTrackPickupLayer_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References."=";
   subtype RaceTrackPickupLayer_Access_Array_Access is org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.RaceTrackPickupLayer_Access_Array_Access;
   function "=" (Left, Right : RaceTrackPickupLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References."=";
   function Java_Box (Value : RaceTrackPickupLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.Java_Box;
   function Java_Unbox_RaceTrackPickupLayer_Access_Array (Value : access Java_Object'Class) return RaceTrackPickupLayer_Access_Array_Access renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.Java_Unbox_RaceTrackPickupLayer_Access_Array;
   subtype RaceTrackPickupLayer_Access_Array_Access_Array is org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.RaceTrackPickupLayer_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackPickupLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References."=";
   subtype RaceTrackPickupLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.RaceTrackPickupLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackPickupLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References."=";
   function Java_Box (Value : RaceTrackPickupLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.Java_Box;
   function Java_Unbox_RaceTrackPickupLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackPickupLayer_Access_Array_Access_Array_Access renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package_References.Java_Unbox_RaceTrackPickupLayer_Access_Array_Access_Array;

   type RaceTrackPickupLayer is new PickupLayer with record
      viewPositionEventHandler : ViewPositionEventHandler_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out RaceTrackPickupLayer'Class);
   function Create return RaceTrackPickupLayer_Access;
   procedure setTiledLayer (This : in out RaceTrackPickupLayer; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class);
   procedure setDestroyed (This : in out RaceTrackPickupLayer; destroyed : Boolean);

end org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;


