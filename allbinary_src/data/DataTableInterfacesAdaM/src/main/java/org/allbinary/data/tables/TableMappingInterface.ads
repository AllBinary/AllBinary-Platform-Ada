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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.data.tables.TableMappingInterface_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type TableMappingInterface is interface;
   type TableMappingInterface_Access is access all TableMappingInterface'Class;
   type TableMappingInterface_Access_Array is array (Natural range <>) of TableMappingInterface_Access;
   type TableMappingInterface_Access_Array_Access is access all TableMappingInterface_Access_Array;
   function getKey (This : in out TableMappingInterface) return Java_Object_Access is abstract;
   function toVector (This : in out TableMappingInterface) return BasicArrayList_Access is abstract;
   function toHashMap (This : in out TableMappingInterface) return HashMap_Access is abstract;

end org.allbinary.data.tables.TableMappingInterface_Package;


