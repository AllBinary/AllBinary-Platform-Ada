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
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;

package org.allbinary.layer.LayerManagerLoggingBase_Package is


   type LayerManagerLoggingBase is tagged;
   type LayerManagerLoggingBase_Access is access all LayerManagerLoggingBase'Class;
   type LayerManagerLoggingBase_Access_Array is array (Natural range <>) of LayerManagerLoggingBase_Access;
   type LayerManagerLoggingBase_Access_Array_Access is access all LayerManagerLoggingBase_Access_Array;

   type LayerManagerLoggingBase is new Java_Object with null record;

   procedure Initialize (This : in out LayerManagerLoggingBase'Class);
   function Create return LayerManagerLoggingBase_Access;
   procedure append (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure appendAt (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   procedure remove (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure removeResult (This : in out LayerManagerLoggingBase; layerManager_Param : access LayerManager_Package.LayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; result : Boolean);
   procedure clear (This : in out LayerManagerLoggingBase);

end org.allbinary.layer.LayerManagerLoggingBase_Package;


