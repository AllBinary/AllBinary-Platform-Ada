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
with org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package; use org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.BasicLayerProcessor_Package; use org.allbinary.layer.BasicLayerProcessor_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package is

   package DestroyEventCircularStaticPool_Package renames org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;
   package DestroyedEvent_Package renames org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
   package DestroyedEventHandler_Package renames org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicLayerProcessor_Package renames org.allbinary.layer.BasicLayerProcessor_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type DestroyedLayerProcessor is tagged;
   type DestroyedLayerProcessor_Access is access all DestroyedLayerProcessor'Class;
   type DestroyedLayerProcessor_Access_Array is array (Natural range <>) of DestroyedLayerProcessor_Access;
   type DestroyedLayerProcessor_Access_Array_Access is access all DestroyedLayerProcessor_Access_Array;

   type DestroyedLayerProcessor is new BasicLayerProcessor with null record;
   DESTROYED_LAYER_PROCESSOR : BasicLayerProcessor_Access;

   procedure Initialize (This : in out DestroyedLayerProcessor'Class);
   function Create return DestroyedLayerProcessor_Access;
   procedure init;
   function getInstance return BasicLayerProcessor_Access;
   procedure getInstance;
   procedure process (This : in out DestroyedLayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access);

end org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;


