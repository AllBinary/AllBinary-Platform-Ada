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

limited with org.allbinary.game.ag.ai.BoundBounceAI_Package;
package org.allbinary.game.ag.ai.BoundBounceAI_Package_References is
   type BoundBounceAI_Access is access all org.allbinary.game.ag.ai.BoundBounceAI_Package.BoundBounceAI'Class;
   type BoundBounceAI_Access_Array is array (Natural range <>) of BoundBounceAI_Access;
   type BoundBounceAI_Access_Array_Access is access all BoundBounceAI_Access_Array;
   type BoundBounceAI_Access_Array_Access_Array is array (Natural range <>) of BoundBounceAI_Access_Array_Access;
   type BoundBounceAI_Access_Array_Access_Array_Access is access all BoundBounceAI_Access_Array_Access_Array;
end org.allbinary.game.ag.ai.BoundBounceAI_Package_References;

with org.allbinary.game.ag.ai.BoundBounceAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.bounds.BoundsVisitorInterface_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package_References;
limited with org.allbinary.bounds.LayerBounds_Package;
with org.allbinary.bounds.LayerBounds_Package_References;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.game.ag.ai.BoundBounceAI_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package BoundsVisitorInterface_Package renames Standard.org.allbinary.bounds.BoundsVisitorInterface_Package;
   package LayerBounds_Package renames Standard.org.allbinary.bounds.LayerBounds_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype BoundsVisitorInterface_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access;
   use type BoundsVisitorInterface_Access;
   subtype BoundsVisitorInterface_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array;
   use type BoundsVisitorInterface_Access_Array;
   subtype BoundsVisitorInterface_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access;
   use type BoundsVisitorInterface_Access_Array_Access;
   subtype BoundsVisitorInterface_Access_Array_Access_Array is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array;
   use type BoundsVisitorInterface_Access_Array_Access_Array;
   subtype BoundsVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.bounds.BoundsVisitorInterface_Package_References.BoundsVisitorInterface_Access_Array_Access_Array_Access;
   use type BoundsVisitorInterface_Access_Array_Access_Array_Access;
   subtype LayerBounds_Access is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access;
   use type LayerBounds_Access;
   subtype LayerBounds_Access_Array is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access_Array;
   use type LayerBounds_Access_Array;
   subtype LayerBounds_Access_Array_Access is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access_Array_Access;
   use type LayerBounds_Access_Array_Access;
   subtype LayerBounds_Access_Array_Access_Array is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access_Array_Access_Array;
   use type LayerBounds_Access_Array_Access_Array;
   subtype LayerBounds_Access_Array_Access_Array_Access is org.allbinary.bounds.LayerBounds_Package_References.LayerBounds_Access_Array_Access_Array_Access;
   use type LayerBounds_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype BoundBounceAI_Access is org.allbinary.game.ag.ai.BoundBounceAI_Package_References.BoundBounceAI_Access;
   function "=" (Left, Right : BoundBounceAI_Access) return Boolean renames org.allbinary.game.ag.ai.BoundBounceAI_Package_References."=";
   subtype BoundBounceAI_Access_Array is org.allbinary.game.ag.ai.BoundBounceAI_Package_References.BoundBounceAI_Access_Array;
   function "=" (Left, Right : BoundBounceAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.BoundBounceAI_Package_References."=";
   subtype BoundBounceAI_Access_Array_Access is org.allbinary.game.ag.ai.BoundBounceAI_Package_References.BoundBounceAI_Access_Array_Access;
   function "=" (Left, Right : BoundBounceAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.BoundBounceAI_Package_References."=";
   subtype BoundBounceAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.BoundBounceAI_Package_References.BoundBounceAI_Access_Array_Access_Array;
   function "=" (Left, Right : BoundBounceAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.BoundBounceAI_Package_References."=";
   subtype BoundBounceAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.BoundBounceAI_Package_References.BoundBounceAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BoundBounceAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.BoundBounceAI_Package_References."=";

   type BoundBounceAI is new BasicAI with record
      currentRelativeAngle : Integer;
      layerBounds : LayerBounds_Access;
      boundsVisitorInterface : BoundsVisitorInterface_Access;
   end record;

   procedure Initialize (This : in out BoundBounceAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class; layerBounds_Param : access LayerBounds_Package.LayerBounds'Class; boundsVisitorInterface_Param : access BoundsVisitorInterface_Package.BoundsVisitorInterface'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class; layerBounds_Param : access LayerBounds_Package.LayerBounds'Class; boundsVisitorInterface_Param : access BoundsVisitorInterface_Package.BoundsVisitorInterface'Class) return BoundBounceAI_Access;
   procedure paint (This : in out BoundBounceAI; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure processAI (This : in out BoundBounceAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.ag.ai.BoundBounceAI_Package;


