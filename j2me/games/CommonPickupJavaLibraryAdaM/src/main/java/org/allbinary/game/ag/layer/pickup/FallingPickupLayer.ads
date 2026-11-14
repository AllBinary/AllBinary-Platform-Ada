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
limited with org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package;
package org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References is
   type FallingPickupLayer_Access is access all org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package.FallingPickupLayer'Class;
   type FallingPickupLayer_Access_Array is array (Natural range <>) of FallingPickupLayer_Access;
   type FallingPickupLayer_Access_Array_Access is access all FallingPickupLayer_Access_Array;
   type FallingPickupLayer_Access_Array_Access_Array is array (Natural range <>) of FallingPickupLayer_Access_Array_Access;
   type FallingPickupLayer_Access_Array_Access_Array_Access is access all FallingPickupLayer_Access_Array_Access_Array;
   type FallingPickupLayer_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FallingPickupLayer_Access_Array_Access;
   end record;
   function Java_Box (Value : FallingPickupLayer_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FallingPickupLayer_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FallingPickupLayer_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FallingPickupLayer_Access_Array_Access is (if Value /= null and then Value.all in FallingPickupLayer_Access_Array_Object'Class then FallingPickupLayer_Access_Array_Object'Class (Value.all).Value else null);
   type FallingPickupLayer_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FallingPickupLayer_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FallingPickupLayer_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FallingPickupLayer_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FallingPickupLayer_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FallingPickupLayer_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FallingPickupLayer_Access_Array_Access_Array_Object'Class then FallingPickupLayer_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References;

with org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.pickup.PickupLayer_Package; use org.allbinary.game.layer.pickup.PickupLayer_Package;
limited with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package is

   package PickupLayer_Package renames Standard.org.allbinary.game.layer.pickup.PickupLayer_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   use type RemoteInfo_Access;
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   use type RemoteInfo_Access_Array;
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access;
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   use type RemoteInfo_Access_Array_Access_Array;
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype FallingPickupLayer_Access is org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.FallingPickupLayer_Access;
   function "=" (Left, Right : FallingPickupLayer_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References."=";
   subtype FallingPickupLayer_Access_Array is org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.FallingPickupLayer_Access_Array;
   function "=" (Left, Right : FallingPickupLayer_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References."=";
   subtype FallingPickupLayer_Access_Array_Access is org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.FallingPickupLayer_Access_Array_Access;
   function "=" (Left, Right : FallingPickupLayer_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References."=";
   function Java_Box (Value : FallingPickupLayer_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.Java_Box;
   function Java_Unbox_FallingPickupLayer_Access_Array (Value : access Java_Object'Class) return FallingPickupLayer_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.Java_Unbox_FallingPickupLayer_Access_Array;
   subtype FallingPickupLayer_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.FallingPickupLayer_Access_Array_Access_Array;
   function "=" (Left, Right : FallingPickupLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References."=";
   subtype FallingPickupLayer_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.FallingPickupLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FallingPickupLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References."=";
   function Java_Box (Value : FallingPickupLayer_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.Java_Box;
   function Java_Unbox_FallingPickupLayer_Access_Array_Access_Array (Value : access Java_Object'Class) return FallingPickupLayer_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package_References.Java_Unbox_FallingPickupLayer_Access_Array_Access_Array;

   type FallingPickupLayer is new PickupLayer and TickableInterface with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out FallingPickupLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class);
   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class) return FallingPickupLayer_Access;
   procedure processTick (This : in out FallingPickupLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function implmentsTickableInterface (This : in out FallingPickupLayer) return Boolean;

end org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package;


