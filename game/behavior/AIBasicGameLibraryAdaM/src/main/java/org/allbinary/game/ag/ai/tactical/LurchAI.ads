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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.ag.ai.tactical.LurchAI_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type LurchAI is tagged;
   type LurchAI_Access is access all LurchAI'Class;
   type LurchAI_Access_Array is array (Natural range <>) of LurchAI_Access;
   type LurchAI_Access_Array_Access is access all LurchAI_Access_Array;

   type LurchAI is new BasicAI with record
      currentRelativeAngle : Integer;
      currentSpeed : Integer;
   end record;

   procedure Initialize (This : in out LurchAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);
   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return LurchAI_Access;
   procedure processAI (This : in out LurchAI; allBinaryLayerManager : AllBinaryLayerManager_Access);
   procedure reverse_Id (This : in out LurchAI);
   procedure accelerate (This : in out LurchAI);
   procedure drop (This : in out LurchAI);

end org.allbinary.game.ag.ai.tactical.LurchAI_Package;


