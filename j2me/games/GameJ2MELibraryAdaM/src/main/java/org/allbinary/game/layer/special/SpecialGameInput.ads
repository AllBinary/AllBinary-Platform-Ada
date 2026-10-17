-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.layer.special.SpecialGameInputInterface_Package; use org.allbinary.game.layer.special.SpecialGameInputInterface_Package;

package org.allbinary.game.layer.special.SpecialGameInput_Package is

   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;

   type SpecialGameInput is tagged;
   type SpecialGameInput_Access is access all SpecialGameInput'Class;
   type SpecialGameInput_Access_Array is array (Natural range <>) of SpecialGameInput_Access;
   type SpecialGameInput_Access_Array_Access is access all SpecialGameInput_Access_Array;

   type SpecialGameInput is new SpecialGameInputInterface with null record;

   procedure Initialize (This : in out SpecialGameInput'Class);
   function Create return SpecialGameInput_Access;
   procedure up (This : in out SpecialGameInput);
   procedure down (This : in out SpecialGameInput);
   procedure right (This : in out SpecialGameInput);
   procedure left (This : in out SpecialGameInput);
   procedure strafeLeft (This : in out SpecialGameInput);
   procedure strafeRight (This : in out SpecialGameInput);
   procedure fire (This : in out SpecialGameInput; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special1 (This : in out SpecialGameInput; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special2 (This : in out SpecialGameInput; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special3 (This : in out SpecialGameInput; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special4 (This : in out SpecialGameInput; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure special5 (This : in out SpecialGameInput; layerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access);
   procedure paint (This : in out SpecialGameInput; graphics : Graphics_Access);
   procedure paintThreed (This : in out SpecialGameInput; graphics : Graphics_Access);

end org.allbinary.game.layer.special.SpecialGameInput_Package;


