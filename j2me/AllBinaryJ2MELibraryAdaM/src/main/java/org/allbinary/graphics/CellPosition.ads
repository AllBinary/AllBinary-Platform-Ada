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
with org.allbinary.graph.V_Package; use org.allbinary.graph.V_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.graphics.CellPosition_Package is

   package V_Package renames Standard.org.allbinary.graph.V_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type CellPosition is tagged;
   type CellPosition_Access is access all CellPosition'Class;
   type CellPosition_Access_Array is array (Natural range <>) of CellPosition_Access;
   type CellPosition_Access_Array_Access is access all CellPosition_Access_Array;

   type CellPosition is new V with record
      id : Integer;
      column : Integer;
      row : Integer;
   end record;

   procedure Initialize (This : in out CellPosition'Class; column : Integer; row : Integer; columns : Integer; rows : Integer);
   function Create (column : Integer; row : Integer; columns : Integer; rows : Integer) return CellPosition_Access;
   function getColumn (This : in out CellPosition) return Integer;
   function getRow (This : in out CellPosition) return Integer;
   function toString (This : in out CellPosition) return Unbounded_String;
   function toStringCellPosition (basicGeographicMapCellPosition_Param : access CellPosition'Class) return Unbounded_String;
   procedure toStringCellPosition (basicGeographicMapCellPosition_Param : access CellPosition'Class);
   function toStringColRow (i_column : Integer; i_row : Integer) return Unbounded_String;
   procedure toStringColRow (i_column : Integer; i_row : Integer);
   function getId (This : in out CellPosition) return Integer;

end org.allbinary.graphics.CellPosition_Package;


