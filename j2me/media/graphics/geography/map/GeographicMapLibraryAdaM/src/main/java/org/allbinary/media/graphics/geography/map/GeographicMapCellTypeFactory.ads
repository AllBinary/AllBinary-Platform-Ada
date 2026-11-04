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

limited with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
package org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References is
   type GeographicMapCellTypeFactory_Access is access all org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class;
   type GeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of GeographicMapCellTypeFactory_Access;
   type GeographicMapCellTypeFactory_Access_Array_Access is access all GeographicMapCellTypeFactory_Access_Array;
   type GeographicMapCellTypeFactory_Access_Array_Access_Array is array (Natural range <>) of GeographicMapCellTypeFactory_Access_Array_Access;
   type GeographicMapCellTypeFactory_Access_Array_Access_Array_Access is access all GeographicMapCellTypeFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;

with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;

package org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package is

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
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";

   type GeographicMapCellTypeFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access;
   end record;
   instance : GeographicMapCellTypeFactory_Access;

   procedure Initialize (This : in out GeographicMapCellTypeFactory'Class);
   function Create return GeographicMapCellTypeFactory_Access;
   function getInstance return GeographicMapCellTypeFactory_Access;
   function get (This : in out GeographicMapCellTypeFactory; type_Id : Integer) return GeographicMapCellType_Access;
   procedure get (This : in out GeographicMapCellTypeFactory; type_Id : Integer);
   function getGeographicMapCellTypeArray (This : in out GeographicMapCellTypeFactory) return GeographicMapCellType_Access_Array_Access;
   function getStartType (This : in out GeographicMapCellTypeFactory) return Integer;
   function getEndType (This : in out GeographicMapCellTypeFactory) return Integer;
   function getEmptyType (This : in out GeographicMapCellTypeFactory) return Integer;
   function isPath (This : in out GeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean;
   procedure isPath (This : in out GeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class);

end org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;


