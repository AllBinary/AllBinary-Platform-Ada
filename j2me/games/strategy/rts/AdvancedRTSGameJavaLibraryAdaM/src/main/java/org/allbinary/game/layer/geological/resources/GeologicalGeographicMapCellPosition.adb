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


with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResource_Package; use org.allbinary.game.layer.geological.resources.GeologicalResource_Package;
with org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References;
with org.allbinary.game.layer.geological.resources.GeologicalResource_Package;

package body org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package is

   subtype GeologicalResource_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access;
   function "=" (Left, Right : GeologicalResource_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   subtype GeologicalResource_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array;
   function "=" (Left, Right : GeologicalResource_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   subtype GeologicalResource_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access;
   function "=" (Left, Right : GeologicalResource_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   subtype GeologicalResource_Access_Array_Access_Array is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access_Array;
   function "=" (Left, Right : GeologicalResource_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   subtype GeologicalResource_Access_Array_Access_Array_Access is org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References.GeologicalResource_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeologicalResource_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geological.resources.GeologicalResource_Package_References."=";
   procedure Initialize_Fields (This : in out GeologicalGeographicMapCellPosition'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GeologicalGeographicMapCellPosition'Class; column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer; geologicalResource_Param : access GeologicalResource_Package.GeologicalResource'Class) is
      geologicalResource : constant GeologicalResource_Access := GeologicalResource_Access (geologicalResource_Param);
   begin
        GeographicMapCellPosition_Package.Initialize (This, column, row, columns, rows, width, height);
        Initialize_Fields (This);
        This.geologicalResource := geologicalResource;
   end Initialize;

   function Create (column : Integer; row : Integer; columns : Integer; rows : Integer; width : Integer; height : Integer; geologicalResource_Param : access GeologicalResource_Package.GeologicalResource'Class) return GeologicalGeographicMapCellPosition_Access is
      This : constant GeologicalGeographicMapCellPosition_Access := new GeologicalGeographicMapCellPosition;
   begin
      GeologicalGeographicMapCellPosition_Package.Initialize (This.all, column, row, columns, rows, width, height, geologicalResource_Param);
      return This;
   end Create;

   function getGeologicalResource (This : in out GeologicalGeographicMapCellPosition) return GeologicalResource_Access is
   begin
        return This.geologicalResource;
   end getGeologicalResource;

end org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPosition_Package;


