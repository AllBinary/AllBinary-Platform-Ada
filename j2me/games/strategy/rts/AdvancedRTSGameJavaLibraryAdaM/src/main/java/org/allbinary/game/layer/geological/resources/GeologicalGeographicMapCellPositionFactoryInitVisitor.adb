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


with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package; use org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;
with org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResource_Package;

package body org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package is

   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   procedure Initialize_Fields (This : in out GeologicalGeographicMapCellPositionFactoryInitVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GeologicalGeographicMapCellPositionFactoryInitVisitor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GeologicalGeographicMapCellPositionFactoryInitVisitor_Access is
      This : constant GeologicalGeographicMapCellPositionFactoryInitVisitor_Access := new GeologicalGeographicMapCellPositionFactoryInitVisitor;
   begin
      GeologicalGeographicMapCellPositionFactoryInitVisitor_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure visit (This : in out GeologicalGeographicMapCellPositionFactoryInitVisitor; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
      geologicalGeographicMapCellPosition : GeologicalGeographicMapCellPosition_Access;
   begin
        geologicalGeographicMapCellPosition := (GeologicalGeographicMapCellPosition_Access (cellPosition));
        geologicalGeographicMapCellPosition.getGeologicalResource.init;
   end visit;

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package;


