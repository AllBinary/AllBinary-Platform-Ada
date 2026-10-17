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


package body org.allbinary.game.layer.geological.resources.GeologicalGeographicMapCellPositionFactoryInitVisitor_Package is

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


