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
with org.allbinary.logic.util.cache.BaseCircularPool_Package; use org.allbinary.logic.util.cache.BaseCircularPool_Package;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

package org.allbinary.layer.AllBinaryLayerCircularPool_Package is

   package BaseCircularPool_Package renames Standard.org.allbinary.logic.util.cache.BaseCircularPool_Package;
   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;

   type AllBinaryLayerCircularPool is tagged;
   type AllBinaryLayerCircularPool_Access is access all AllBinaryLayerCircularPool'Class;
   type AllBinaryLayerCircularPool_Access_Array is array (Natural range <>) of AllBinaryLayerCircularPool_Access;
   type AllBinaryLayerCircularPool_Access_Array_Access is access all AllBinaryLayerCircularPool_Access_Array;

   type AllBinaryLayerCircularPool is new BaseCircularPool with null record;

   procedure Initialize (This : in out AllBinaryLayerCircularPool'Class);
   function Create return AllBinaryLayerCircularPool_Access;
   procedure initAllBinaryLayerCircularPool (This : in out AllBinaryLayerCircularPool; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface'Class; total : Integer);

end org.allbinary.layer.AllBinaryLayerCircularPool_Package;


