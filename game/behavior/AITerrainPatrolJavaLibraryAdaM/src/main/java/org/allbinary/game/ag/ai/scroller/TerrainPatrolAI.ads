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
limited with org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package;
package org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References is
   type TerrainPatrolAI_Access is access all org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package.TerrainPatrolAI'Class;
   type TerrainPatrolAI_Access_Array is array (Natural range <>) of TerrainPatrolAI_Access;
   type TerrainPatrolAI_Access_Array_Access is access all TerrainPatrolAI_Access_Array;
   type TerrainPatrolAI_Access_Array_Access_Array is array (Natural range <>) of TerrainPatrolAI_Access_Array_Access;
   type TerrainPatrolAI_Access_Array_Access_Array_Access is access all TerrainPatrolAI_Access_Array_Access_Array;
   type TerrainPatrolAI_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TerrainPatrolAI_Access_Array_Access;
   end record;
   function Java_Box (Value : TerrainPatrolAI_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TerrainPatrolAI_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TerrainPatrolAI_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TerrainPatrolAI_Access_Array_Access is (if Value /= null and then Value.all in TerrainPatrolAI_Access_Array_Object'Class then TerrainPatrolAI_Access_Array_Object'Class (Value.all).Value else null);
   type TerrainPatrolAI_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TerrainPatrolAI_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TerrainPatrolAI_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TerrainPatrolAI_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TerrainPatrolAI_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TerrainPatrolAI_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TerrainPatrolAI_Access_Array_Access_Array_Object'Class then TerrainPatrolAI_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References;

with org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package_References;
limited with org.allbinary.game.terrain.TerrainEventListener_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.math.Angle_Package;
with org.allbinary.math.Angle_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package; use org.allbinary.game.ag.ai.scroller.PacePatrolAI_Package;

package org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package is

   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package BasicTerrainInfo_Package renames Standard.org.allbinary.game.terrain.BasicTerrainInfo_Package;
   package TerrainEventListener_Package renames Standard.org.allbinary.game.terrain.TerrainEventListener_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Angle_Package renames Standard.org.allbinary.math.Angle_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   use type GameInput_Access;
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   use type GameInput_Access_Array;
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   use type GameInput_Access_Array_Access;
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   use type GameInput_Access_Array_Access_Array;
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   use type GameInput_Access_Array_Access_Array_Access;
   subtype BasicTerrainInfo_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access;
   use type BasicTerrainInfo_Access;
   subtype BasicTerrainInfo_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array;
   use type BasicTerrainInfo_Access_Array;
   subtype BasicTerrainInfo_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access;
   use type BasicTerrainInfo_Access_Array_Access;
   subtype BasicTerrainInfo_Access_Array_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array;
   use type BasicTerrainInfo_Access_Array_Access_Array;
   subtype BasicTerrainInfo_Access_Array_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array_Access;
   use type BasicTerrainInfo_Access_Array_Access_Array_Access;
   subtype TerrainEventListener_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access;
   use type TerrainEventListener_Access;
   subtype TerrainEventListener_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array;
   use type TerrainEventListener_Access_Array;
   subtype TerrainEventListener_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access;
   use type TerrainEventListener_Access_Array_Access;
   subtype TerrainEventListener_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array;
   use type TerrainEventListener_Access_Array_Access_Array;
   subtype TerrainEventListener_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array_Access;
   use type TerrainEventListener_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   use type Angle_Access;
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   use type Angle_Access_Array;
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   use type Angle_Access_Array_Access;
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   use type Angle_Access_Array_Access_Array;
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   use type Angle_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TerrainPatrolAI_Access is org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.TerrainPatrolAI_Access;
   function "=" (Left, Right : TerrainPatrolAI_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References."=";
   subtype TerrainPatrolAI_Access_Array is org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.TerrainPatrolAI_Access_Array;
   function "=" (Left, Right : TerrainPatrolAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References."=";
   subtype TerrainPatrolAI_Access_Array_Access is org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.TerrainPatrolAI_Access_Array_Access;
   function "=" (Left, Right : TerrainPatrolAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References."=";
   function Java_Box (Value : TerrainPatrolAI_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.Java_Box;
   function Java_Unbox_TerrainPatrolAI_Access_Array (Value : access Java_Object'Class) return TerrainPatrolAI_Access_Array_Access renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.Java_Unbox_TerrainPatrolAI_Access_Array;
   subtype TerrainPatrolAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.TerrainPatrolAI_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainPatrolAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References."=";
   subtype TerrainPatrolAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.TerrainPatrolAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainPatrolAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References."=";
   function Java_Box (Value : TerrainPatrolAI_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.Java_Box;
   function Java_Unbox_TerrainPatrolAI_Access_Array_Access_Array (Value : access Java_Object'Class) return TerrainPatrolAI_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package_References.Java_Unbox_TerrainPatrolAI_Access_Array_Access_Array;

   type TerrainPatrolAI is new PacePatrolAI with record
      terrainEventListener : TerrainEventListener_Access;
      DOWN : Angle_Access;
      CLIFF : BasicTerrainInfo_Access;
   end record;

   procedure Initialize (This : in out TerrainPatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return TerrainPatrolAI_Access;
   procedure update (This : in out TerrainPatrolAI);
   procedure changeDirectionIfCliffReached (This : in out TerrainPatrolAI);

end org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package;


