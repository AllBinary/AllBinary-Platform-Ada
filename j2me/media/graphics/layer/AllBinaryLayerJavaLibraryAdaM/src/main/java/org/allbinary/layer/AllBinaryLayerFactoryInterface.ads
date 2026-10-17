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

package org.allbinary.layer.AllBinaryLayerFactoryInterface_Package is


   type AllBinaryLayerFactoryInterface is interface;
   type AllBinaryLayerFactoryInterface_Access is access all AllBinaryLayerFactoryInterface'Class;
   type AllBinaryLayerFactoryInterface_Access_Array is array (Natural range <>) of AllBinaryLayerFactoryInterface_Access;
   type AllBinaryLayerFactoryInterface_Access_Array_Access is access all AllBinaryLayerFactoryInterface_Access_Array;
   function getInstance (This : in out AllBinaryLayerFactoryInterface) return AllBinaryLayer_Access is abstract;

end org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;


