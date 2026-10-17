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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.layer.BasicLayerProcessor_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type BasicLayerProcessor is tagged;
   type BasicLayerProcessor_Access is access all BasicLayerProcessor'Class;
   type BasicLayerProcessor_Access_Array is array (Natural range <>) of BasicLayerProcessor_Access;
   type BasicLayerProcessor_Access_Array_Access is access all BasicLayerProcessor_Access_Array;

   type BasicLayerProcessor is new Java_Object with record
      logUtil : LogUtil_Access;
      list : BasicArrayList_Access;
   end record;
   NULL_LAYER_PROCESSOR : BasicLayerProcessor_Access;

   procedure Initialize (This : in out BasicLayerProcessor'Class);
   function Create return BasicLayerProcessor_Access;
   procedure add (This : in out BasicLayerProcessor; layerInterface : AllBinaryLayer_Access);
   procedure process (This : in out BasicLayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access);
   function getList (This : in out BasicLayerProcessor) return BasicArrayList_Access;
   procedure getList (This : in out BasicLayerProcessor);

end org.allbinary.layer.BasicLayerProcessor_Package;


