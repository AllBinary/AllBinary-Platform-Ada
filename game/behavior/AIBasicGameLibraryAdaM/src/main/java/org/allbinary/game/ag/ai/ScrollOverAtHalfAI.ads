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
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.ag.ai.ScrollOverAtHalfAI_Package is

   package BasicAI_Package renames org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames org.allbinary.game.input.GameInput_Package;
   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;

   type ScrollOverAtHalfAI is tagged;
   type ScrollOverAtHalfAI_Access is access all ScrollOverAtHalfAI'Class;
   type ScrollOverAtHalfAI_Access_Array is array (Natural range <>) of ScrollOverAtHalfAI_Access;
   type ScrollOverAtHalfAI_Access_Array_Access is access all ScrollOverAtHalfAI_Access_Array;

   type ScrollOverAtHalfAI is new BasicAI with null record;

   procedure Initialize (This : in out ScrollOverAtHalfAI'Class; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);
   function Create (ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return ScrollOverAtHalfAI_Access;
   procedure processAI (This : in out ScrollOverAtHalfAI; allBinaryLayerManager : AllBinaryLayerManager_Access);

end org.allbinary.game.ag.ai.ScrollOverAtHalfAI_Package;


