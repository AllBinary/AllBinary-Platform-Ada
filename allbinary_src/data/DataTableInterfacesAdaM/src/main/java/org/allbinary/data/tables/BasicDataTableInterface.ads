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

package org.allbinary.data.tables.BasicDataTableInterface_Package is


   type BasicDataTableInterface is interface;
   type BasicDataTableInterface_Access is access all BasicDataTableInterface'Class;
   type BasicDataTableInterface_Access_Array is array (Natural range <>) of BasicDataTableInterface_Access;
   type BasicDataTableInterface_Access_Array_Access is access all BasicDataTableInterface_Access_Array;
   function createTable (This : in out BasicDataTableInterface) return Unbounded_String is abstract;
   function dropTable (This : in out BasicDataTableInterface) return Unbounded_String is abstract;

end org.allbinary.data.tables.BasicDataTableInterface_Package;


