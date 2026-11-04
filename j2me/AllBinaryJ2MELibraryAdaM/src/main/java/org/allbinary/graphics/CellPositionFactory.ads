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

limited with org.allbinary.graphics.CellPositionFactory_Package;
package org.allbinary.graphics.CellPositionFactory_Package_References is
   type CellPositionFactory_Access is access all org.allbinary.graphics.CellPositionFactory_Package.CellPositionFactory'Class;
   type CellPositionFactory_Access_Array is array (Natural range <>) of CellPositionFactory_Access;
   type CellPositionFactory_Access_Array_Access is access all CellPositionFactory_Access_Array;
   type CellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of CellPositionFactory_Access_Array_Access;
   type CellPositionFactory_Access_Array_Access_Array_Access is access all CellPositionFactory_Access_Array_Access_Array;
end org.allbinary.graphics.CellPositionFactory_Package_References;

with org.allbinary.graphics.CellPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.graphics.CellPosition_Package_References;

package org.allbinary.graphics.CellPositionFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CellPosition_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access;
   use type CellPosition_Access;
   subtype CellPosition_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array;
   use type CellPosition_Access_Array;
   subtype CellPosition_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access;
   use type CellPosition_Access_Array_Access;
   subtype CellPosition_Access_Array_Access_Array is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array;
   use type CellPosition_Access_Array_Access_Array;
   subtype CellPosition_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPosition_Package_References.CellPosition_Access_Array_Access_Array_Access;
   use type CellPosition_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CellPositionFactory_Access is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access;
   function "=" (Left, Right : CellPositionFactory_Access) return Boolean renames org.allbinary.graphics.CellPositionFactory_Package_References."=";
   subtype CellPositionFactory_Access_Array is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access_Array;
   function "=" (Left, Right : CellPositionFactory_Access_Array) return Boolean renames org.allbinary.graphics.CellPositionFactory_Package_References."=";
   subtype CellPositionFactory_Access_Array_Access is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : CellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPositionFactory_Package_References."=";
   subtype CellPositionFactory_Access_Array_Access_Array is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CellPositionFactory_Package_References."=";
   subtype CellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.CellPositionFactory_Package_References.CellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CellPositionFactory_Package_References."=";

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
   procedure init (This : in out CellPositionFactory; columns : Integer; rows : Integer);
   function getInstanceColRow (This : in out CellPositionFactory; i_column : Integer; i_row : Integer) return CellPosition_Access;
   procedure getInstanceColRow (This : in out CellPositionFactory; i_column : Integer; i_row : Integer);
   function createInstance (This : in out CellPositionFactory; i_column : Integer; i_row : Integer) return CellPosition_Access;
   procedure createInstance (This : in out CellPositionFactory; i_column : Integer; i_row : Integer);
   function getColumns (This : in out CellPositionFactory) return Integer;
   function getRows (This : in out CellPositionFactory) return Integer;

end org.allbinary.graphics.CellPositionFactory_Package;


