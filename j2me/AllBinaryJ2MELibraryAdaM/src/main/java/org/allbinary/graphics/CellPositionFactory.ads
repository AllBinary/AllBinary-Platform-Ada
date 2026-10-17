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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.graphics.CellPositionFactory_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type CellPositionFactory is tagged;
   type CellPositionFactory_Access is access all CellPositionFactory'Class;
   type CellPositionFactory_Access_Array is array (Natural range <>) of CellPositionFactory_Access;
   type CellPositionFactory_Access_Array_Access is access all CellPositionFactory_Access_Array;

   type CellPositionFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      NONE : CellPosition_Access;
      cellPositionArray : CellPosition_Access_Array_Access_Array_Access;
      columns : Integer;
      rows : Integer;
   end record;
   SINGLETON : CellPositionFactory_Access;

   procedure Initialize (This : in out CellPositionFactory'Class);
   function Create return CellPositionFactory_Access;
   function getInstance return CellPositionFactory_Access;
   procedure getInstance;
   procedure init (This : in out CellPositionFactory; columns : Integer; rows : Integer);
   function getInstanceColRow (This : in out CellPositionFactory; i_column : Integer; i_row : Integer) return CellPosition_Access;
   procedure getInstanceColRow (This : in out CellPositionFactory; i_column : Integer; i_row : Integer);
   function createInstance (This : in out CellPositionFactory; i_column : Integer; i_row : Integer) return CellPosition_Access;
   procedure createInstance (This : in out CellPositionFactory; i_column : Integer; i_row : Integer);
   function getColumns (This : in out CellPositionFactory) return Integer;
   procedure getColumns (This : in out CellPositionFactory);
   function getRows (This : in out CellPositionFactory) return Integer;
   procedure getRows (This : in out CellPositionFactory);

end org.allbinary.graphics.CellPositionFactory_Package;


