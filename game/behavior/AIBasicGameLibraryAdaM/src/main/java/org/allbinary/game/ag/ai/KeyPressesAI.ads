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
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.ag.ai.KeyPressesAI_Package is

   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package HashtableUtil_Package renames Standard.org.allbinary.util.HashtableUtil_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type KeyPressesAI is tagged;
   type KeyPressesAI_Access is access all KeyPressesAI'Class;
   type KeyPressesAI_Access_Array is array (Natural range <>) of KeyPressesAI_Access;
   type KeyPressesAI_Access_Array_Access is access all KeyPressesAI_Access_Array;

   type KeyPressesAI is new BasicAI with record
      on : Boolean;
      keys : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out KeyPressesAI'Class; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access);
   function Create (hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return KeyPressesAI_Access;
   procedure processAI (This : in out KeyPressesAI; allBinaryLayerManager : AllBinaryLayerManager_Access);
   procedure toggle (This : in out KeyPressesAI);
   procedure disable (This : in out KeyPressesAI);
   procedure enable (This : in out KeyPressesAI);
   procedure setOn (This : in out KeyPressesAI; on : Boolean);
   function isOn (This : in out KeyPressesAI) return Boolean;

end org.allbinary.game.ag.ai.KeyPressesAI_Package;


