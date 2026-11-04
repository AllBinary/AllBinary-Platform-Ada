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

limited with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package;
package org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References is
   type GeologicalGeographicMapCellPositionFactoryInitVisitor_Access is access all org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package.GeologicalGeographicMapCellPositionFactoryInitVisitor'Class;
   type GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPositionFactoryInitVisitor_Access;
   type GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access is access all GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array;
   type GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array is array (Natural range <>) of GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access;
   type GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array_Access is access all GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array;
end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References;

with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;

package org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellPositionFactoryInitVisitorInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
   package Reference_Types is
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
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


   subtype GeologicalGeographicMapCellPositionFactoryInitVisitor_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References.GeologicalGeographicMapCellPositionFactoryInitVisitor_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactoryInitVisitor_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References."=";
   subtype GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References.GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References."=";
   subtype GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References.GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References."=";
   subtype GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References.GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References."=";
   subtype GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References.GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalGeographicMapCellPositionFactoryInitVisitor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package_References."=";

   type GeologicalGeographicMapCellPositionFactoryInitVisitor is new Java_Object and GeographicMapCellPositionFactoryInitVisitorInterface with null record;

   procedure Initialize (This : in out GeologicalGeographicMapCellPositionFactoryInitVisitor'Class);
   function Create return GeologicalGeographicMapCellPositionFactoryInitVisitor_Access;
   procedure visit (This : in out GeologicalGeographicMapCellPositionFactoryInitVisitor; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package;


