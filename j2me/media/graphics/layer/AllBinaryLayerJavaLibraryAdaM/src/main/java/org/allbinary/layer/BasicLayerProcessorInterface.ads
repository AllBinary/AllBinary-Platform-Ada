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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.layer.BasicLayerProcessorInterface_Package is


   type BasicLayerProcessorInterface is interface;
   type BasicLayerProcessorInterface_Access is access all BasicLayerProcessorInterface'Class;
   type BasicLayerProcessorInterface_Access_Array is array (Natural range <>) of BasicLayerProcessorInterface_Access;
   type BasicLayerProcessorInterface_Access_Array_Access is access all BasicLayerProcessorInterface_Access_Array;
   procedure process (This : in out BasicLayerProcessorInterface; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is abstract;

end org.allbinary.layer.BasicLayerProcessorInterface_Package;


