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

limited with org.allbinary.game.ag.ai.scroller.FlockingAI_Package;
package org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References is
   type FlockingAI_Access is access all org.allbinary.game.ag.ai.scroller.FlockingAI_Package.FlockingAI'Class;
   type FlockingAI_Access_Array is array (Natural range <>) of FlockingAI_Access;
   type FlockingAI_Access_Array_Access is access all FlockingAI_Access_Array;
   type FlockingAI_Access_Array_Access_Array is array (Natural range <>) of FlockingAI_Access_Array_Access;
   type FlockingAI_Access_Array_Access_Array_Access is access all FlockingAI_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References;

with org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.ag.ai.scroller.FlockingAI_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
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


   subtype FlockingAI_Access is org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References.FlockingAI_Access;
   function "=" (Left, Right : FlockingAI_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References."=";
   subtype FlockingAI_Access_Array is org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References.FlockingAI_Access_Array;
   function "=" (Left, Right : FlockingAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References."=";
   subtype FlockingAI_Access_Array_Access is org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References.FlockingAI_Access_Array_Access;
   function "=" (Left, Right : FlockingAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References."=";
   subtype FlockingAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References.FlockingAI_Access_Array_Access_Array;
   function "=" (Left, Right : FlockingAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References."=";
   subtype FlockingAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References.FlockingAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FlockingAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.FlockingAI_Package_References."=";

   type FlockingAI is new BasicAI with record
      allowedDistance : Integer;
   end record;

   procedure Initialize (This : in out FlockingAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return FlockingAI_Access;
   procedure processAI (This : in out FlockingAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getXYDistance (This : in out FlockingAI; allBinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) return Integer;
   procedure getXYDistance (This : in out FlockingAI; allBinaryLayer_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.ai.scroller.FlockingAI_Package;


