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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.game.ag.ai.ScrollOverAtEndAI_Package is

   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type ScrollOverAtEndAI is tagged;
   type ScrollOverAtEndAI_Access is access all ScrollOverAtEndAI'Class;
   type ScrollOverAtEndAI_Access_Array is array (Natural range <>) of ScrollOverAtEndAI_Access;
   type ScrollOverAtEndAI_Access_Array_Access is access all ScrollOverAtEndAI_Access_Array;
   type ScrollOverAtEndAI_Access_Array_Access_Array is array (Natural range <>) of ScrollOverAtEndAI_Access_Array_Access;
   type ScrollOverAtEndAI_Access_Array_Access_Array_Access is access all ScrollOverAtEndAI_Access_Array_Access_Array;

   type ScrollOverAtEndAI is new BasicAI with null record;

   procedure Initialize (This : in out ScrollOverAtEndAI'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return ScrollOverAtEndAI_Access;
   procedure processAI (This : in out ScrollOverAtEndAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);

end org.allbinary.game.ag.ai.ScrollOverAtEndAI_Package;


