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

limited with org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package;
package org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References is
   type BasePatrolAI_Access is access all org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package.BasePatrolAI'Class;
   type BasePatrolAI_Access_Array is array (Natural range <>) of BasePatrolAI_Access;
   type BasePatrolAI_Access_Array_Access is access all BasePatrolAI_Access_Array;
   type BasePatrolAI_Access_Array_Access_Array is array (Natural range <>) of BasePatrolAI_Access_Array_Access;
   type BasePatrolAI_Access_Array_Access_Array_Access is access all BasePatrolAI_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References;

with org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References;
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
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
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


   subtype BasePatrolAI_Access is org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References.BasePatrolAI_Access;
   function "=" (Left, Right : BasePatrolAI_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References."=";
   subtype BasePatrolAI_Access_Array is org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References.BasePatrolAI_Access_Array;
   function "=" (Left, Right : BasePatrolAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References."=";
   subtype BasePatrolAI_Access_Array_Access is org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References.BasePatrolAI_Access_Array_Access;
   function "=" (Left, Right : BasePatrolAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References."=";
   subtype BasePatrolAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References.BasePatrolAI_Access_Array_Access_Array;
   function "=" (Left, Right : BasePatrolAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References."=";
   subtype BasePatrolAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References.BasePatrolAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasePatrolAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package_References."=";

   type BasePatrolAI is new BasicAI with record
      maxDistance : Integer;
      currentDistance : Integer;
      xTotalDistance : Integer;
      lastKeyDirection : Integer;
      keyDirection : Integer;
   end record;
   MAX_DISTANCE : Integer;
   DIRECTION_ARRAY : Integer;
   FIRING_DISTANCE : Integer;
   SPEED : Integer;

   procedure Initialize (This : in out BasePatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return BasePatrolAI_Access;
   procedure update (This : in out BasePatrolAI);
   procedure updateTotalDistance (This : in out BasePatrolAI);
   procedure changeDirectionIfReachedPacingAreaMax (This : in out BasePatrolAI);
   procedure nextDirection (This : in out BasePatrolAI);
   procedure disable (This : in out BasePatrolAI);

end org.allbinary.game.ag.ai.scroller.BasePatrolAI_Package;


