-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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

limited with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package;
package org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References is
   type GeologicalGeographicMapCellPositionFactory_Access is access all org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package.GeologicalGeographicMapCellPositionFactory'Class;
   type GeologicalGeographicMapCellPositionFactory_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPositionFactory_Access;
   type GeologicalGeographicMapCellPositionFactory_Access_Array_Access is access all GeologicalGeographicMapCellPositionFactory_Access_Array;
   type GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPositionFactory_Access_Array_Access;
   type GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is access all GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References;

with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;

package org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
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


   subtype GeologicalGeographicMapCellPositionFactory_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References.GeologicalGeographicMapCellPositionFactory_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactory_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References."=";
   subtype GeologicalGeographicMapCellPositionFactory_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References.GeologicalGeographicMapCellPositionFactory_Access_Array;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactory_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References."=";
   subtype GeologicalGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References.GeologicalGeographicMapCellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References."=";
   subtype GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References.GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References."=";
   subtype GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References.GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package_References."=";

   type GeologicalGeographicMapCellPositionFactory is new Java_Object and GeographicMapCellPositionFactoryInterface with record
      resourcePerMapCellType : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out GeologicalGeographicMapCellPositionFactory'Class; resourcePerMapCellType : Integer_Array_Access);
   function Create (resourcePerMapCellType : Integer_Array_Access) return GeologicalGeographicMapCellPositionFactory_Access;
   function getInstance (This : in out GeologicalGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer) return GeographicMapCellPosition_Access;
   procedure getInstance (This : in out GeologicalGeographicMapCellPositionFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; i_column : Integer; i_row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer);

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactory_Package;


