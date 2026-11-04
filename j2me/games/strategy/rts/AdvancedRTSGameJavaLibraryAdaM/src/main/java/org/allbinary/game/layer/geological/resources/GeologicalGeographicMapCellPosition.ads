-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

limited with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;
package org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References is
   type GeologicalGeographicMapCellPosition_Access is access all org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package.GeologicalGeographicMapCellPosition'Class;
   type GeologicalGeographicMapCellPosition_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPosition_Access;
   type GeologicalGeographicMapCellPosition_Access_Array_Access is access all GeologicalGeographicMapCellPosition_Access_Array;
   type GeologicalGeographicMapCellPosition_Access_Array_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPosition_Access_Array_Access;
   type GeologicalGeographicMapCellPosition_Access_Array_Access_Array_Access is access all GeologicalGeographicMapCellPosition_Access_Array_Access_Array;
end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References;

with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
limited with org.allbinary.game.layer.geological.resources.GeologicalResource_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References;

package org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
   subtype GeologicalResource_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access;
   use type GeologicalResource_Access;
   subtype GeologicalResource_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array;
   use type GeologicalResource_Access_Array;
   subtype GeologicalResource_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access;
   use type GeologicalResource_Access_Array_Access;
   subtype GeologicalResource_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access_Array;
   use type GeologicalResource_Access_Array_Access_Array;
   subtype GeologicalResource_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access_Array_Access;
   use type GeologicalResource_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GeologicalGeographicMapCellPosition_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References.GeologicalGeographicMapCellPosition_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPosition_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References."=";
   subtype GeologicalGeographicMapCellPosition_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References.GeologicalGeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeologicalGeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References."=";
   subtype GeologicalGeographicMapCellPosition_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References.GeologicalGeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References."=";
   subtype GeologicalGeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References.GeologicalGeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalGeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References."=";
   subtype GeologicalGeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References.GeologicalGeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package_References."=";

   type GeologicalGeographicMapCellPosition is new GeographicMapCellPosition with record
      geologicalResource : GeologicalResource_Access;
   end record;

   procedure Initialize (This : in out GeologicalGeographicMapCellPosition'Class; column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer; geologicalResource_Param : access GeologicalResource_Package.GeologicalResource'Class);
   function Create (column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer; geologicalResource_Param : access GeologicalResource_Package.GeologicalResource'Class) return GeologicalGeographicMapCellPosition_Access;
   function getGeologicalResource (This : in out GeologicalGeographicMapCellPosition) return GeologicalResource_Access;

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;


