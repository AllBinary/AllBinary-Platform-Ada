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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.layer.LayerInterfaceFactoryInterface_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type LayerInterfaceFactoryInterface is interface;
   type LayerInterfaceFactoryInterface_Access is access all LayerInterfaceFactoryInterface'Class;
   type LayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of LayerInterfaceFactoryInterface_Access;
   type LayerInterfaceFactoryInterface_Access_Array_Access is access all LayerInterfaceFactoryInterface_Access_Array;
   function getNextInstance (This : in out LayerInterfaceFactoryInterface; hashtable_Param : access ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access is abstract;

end org.allbinary.layer.LayerInterfaceFactoryInterface_Package;


