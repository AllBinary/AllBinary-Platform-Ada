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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.bounds.BoundsVisitorInterface_Package; use org.allbinary.bounds.BoundsVisitorInterface_Package;
with org.allbinary.bounds.LayerBounds_Package; use org.allbinary.bounds.LayerBounds_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.ag.ai.BoundBounceAI_Package is

   package BoundsVisitorInterface_Package renames Standard.org.allbinary.bounds.BoundsVisitorInterface_Package;
   package LayerBounds_Package renames Standard.org.allbinary.bounds.LayerBounds_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type BoundBounceAI is tagged;
   type BoundBounceAI_Access is access all BoundBounceAI'Class;
   type BoundBounceAI_Access_Array is array (Natural range <>) of BoundBounceAI_Access;
   type BoundBounceAI_Access_Array_Access is access all BoundBounceAI_Access_Array;

   type BoundBounceAI is new BasicAI with record
      currentRelativeAngle : Integer;
      layerBounds : LayerBounds_Access;
      boundsVisitorInterface : BoundsVisitorInterface_Access;
   end record;

   procedure Initialize (This : in out BoundBounceAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access; layerBounds : LayerBounds_Access; boundsVisitorInterface : BoundsVisitorInterface_Access);
   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access; layerBounds : LayerBounds_Access; boundsVisitorInterface : BoundsVisitorInterface_Access) return BoundBounceAI_Access;
   procedure paint (This : in out BoundBounceAI; graphics : Graphics_Access);
   procedure processAI (This : in out BoundBounceAI; allBinaryLayerManager : AllBinaryLayerManager_Access);

end org.allbinary.game.ag.ai.BoundBounceAI_Package;


