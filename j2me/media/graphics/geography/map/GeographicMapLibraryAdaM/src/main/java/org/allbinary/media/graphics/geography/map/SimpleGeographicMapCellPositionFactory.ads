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

limited with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
package org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References is
   type SimpleGeographicMapCellPositionFactory_Access is access all org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package.SimpleGeographicMapCellPositionFactory'Class;
   type SimpleGeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of SimpleGeographicMapCellPositionFactory_Access;
   type SimpleGeographicMapCellPositionFactory_Access_Array_Access is access all SimpleGeographicMapCellPositionFactory_Access_Array;
   type SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of SimpleGeographicMapCellPositionFactory_Access_Array_Access;
   type SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References;

with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package is

   package Reference_Types is
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SimpleGeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References.SimpleGeographicMapCellPositionFactory_Access;
   function "=" (Left, Right : SimpleGeographicMapCellPositionFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References."=";
   subtype SimpleGeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References.SimpleGeographicMapCellPositionFactory_Access_Array;
   function "=" (Left, Right : SimpleGeographicMapCellPositionFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References."=";
   subtype SimpleGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References.SimpleGeographicMapCellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : SimpleGeographicMapCellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References."=";
   subtype SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References.SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References."=";
   subtype SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References.SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleGeographicMapCellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package_References."=";

   type SimpleGeographicMapCellPositionFactory is new Java_Object and GeographicMapCellPositionFactoryInterface with null record;
   NULL_GEOGRAPHIC_MAP_CELL_POSITION : GeographicMapCellPosition_Access;

   procedure Initialize (This : in out SimpleGeographicMapCellPositionFactory'Class);
   function Create return SimpleGeographicMapCellPositionFactory_Access;
   function getInstance (This : in out SimpleGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   procedure getInstance (This : in out SimpleGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer);

end org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;


