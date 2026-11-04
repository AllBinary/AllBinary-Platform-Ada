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

limited with org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package;
package org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References is
   type CachingGeographicMapCellPositionFactory_Access is access all org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package.CachingGeographicMapCellPositionFactory'Class;
   type CachingGeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of CachingGeographicMapCellPositionFactory_Access;
   type CachingGeographicMapCellPositionFactory_Access_Array_Access is access all CachingGeographicMapCellPositionFactory_Access_Array;
   type CachingGeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of CachingGeographicMapCellPositionFactory_Access_Array_Access;
   type CachingGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all CachingGeographicMapCellPositionFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References;

with org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package is

   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype CachingGeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References.CachingGeographicMapCellPositionFactory_Access;
   function "=" (Left, Right : CachingGeographicMapCellPositionFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References."=";
   subtype CachingGeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References.CachingGeographicMapCellPositionFactory_Access_Array;
   function "=" (Left, Right : CachingGeographicMapCellPositionFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References."=";
   subtype CachingGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References.CachingGeographicMapCellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : CachingGeographicMapCellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References."=";
   subtype CachingGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References.CachingGeographicMapCellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CachingGeographicMapCellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References."=";
   subtype CachingGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References.CachingGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CachingGeographicMapCellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package_References."=";

   type CachingGeographicMapCellPositionFactory is new BasicGeographicMapCellPositionFactory with null record;

   procedure Initialize (This : in out CachingGeographicMapCellPositionFactory'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) return CachingGeographicMapCellPositionFactory_Access;
   function createInstance (This : in out CachingGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   procedure createInstance (This : in out CachingGeographicMapCellPositionFactory; i_column : Integer; i_row : Integer; width : Integer; height : Integer);

end org.allbinary.media.graphics.geography.map.CachingGeographicMapCellPositionFactory_Package;


