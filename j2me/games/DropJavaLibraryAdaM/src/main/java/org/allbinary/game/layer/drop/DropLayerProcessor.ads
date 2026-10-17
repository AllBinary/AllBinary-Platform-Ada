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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.BasicLayerProcessor_Package; use org.allbinary.layer.BasicLayerProcessor_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.drop.DropLayerInterface_Package; use org.allbinary.game.layer.drop.DropLayerInterface_Package;

package org.allbinary.game.layer.drop.DropLayerProcessor_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicLayerProcessor_Package renames Standard.org.allbinary.layer.BasicLayerProcessor_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type DropLayerProcessor is tagged;
   type DropLayerProcessor_Access is access all DropLayerProcessor'Class;
   type DropLayerProcessor_Access_Array is array (Natural range <>) of DropLayerProcessor_Access;
   type DropLayerProcessor_Access_Array_Access is access all DropLayerProcessor_Access_Array;

   type DropLayerProcessor is new BasicLayerProcessor with null record;
   LAYER_PROCESSOR : BasicLayerProcessor_Access;

   procedure Initialize (This : in out DropLayerProcessor'Class);
   function Create return DropLayerProcessor_Access;
   function getInstance return BasicLayerProcessor_Access;
   procedure process (This : in out DropLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager'Class);

end org.allbinary.game.layer.drop.DropLayerProcessor_Package;


