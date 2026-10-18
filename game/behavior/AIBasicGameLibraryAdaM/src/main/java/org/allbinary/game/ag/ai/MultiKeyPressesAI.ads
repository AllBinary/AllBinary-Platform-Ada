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
with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.ag.ai.KeyPressesAI_Package; use org.allbinary.game.ag.ai.KeyPressesAI_Package;

package org.allbinary.game.ag.ai.MultiKeyPressesAI_Package is

   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package GameTickTimeDelayHelper_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelper_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type MultiKeyPressesAI is tagged;
   type MultiKeyPressesAI_Access is access all MultiKeyPressesAI'Class;
   type MultiKeyPressesAI_Access_Array is array (Natural range <>) of MultiKeyPressesAI_Access;
   type MultiKeyPressesAI_Access_Array_Access is access all MultiKeyPressesAI_Access_Array;
   type MultiKeyPressesAI_Access_Array_Access_Array is array (Natural range <>) of MultiKeyPressesAI_Access_Array_Access;
   type MultiKeyPressesAI_Access_Array_Access_Array_Access is access all MultiKeyPressesAI_Access_Array_Access_Array;

   type MultiKeyPressesAI is new KeyPressesAI with record
      toggleTimeHelper : TimeDelayHelper_Access;
      gameTickTimeDelayHelper : GameTickTimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out MultiKeyPressesAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return MultiKeyPressesAI_Access;
   procedure processAI (This : in out MultiKeyPressesAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure update (This : in out MultiKeyPressesAI);
   procedure toggle (This : in out MultiKeyPressesAI);
   procedure disable (This : in out MultiKeyPressesAI);
   procedure enable (This : in out MultiKeyPressesAI);

end org.allbinary.game.ag.ai.MultiKeyPressesAI_Package;


