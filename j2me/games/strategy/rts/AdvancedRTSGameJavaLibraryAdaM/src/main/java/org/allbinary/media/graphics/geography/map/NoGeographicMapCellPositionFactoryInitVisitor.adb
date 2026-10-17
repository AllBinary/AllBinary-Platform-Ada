-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.media.graphics.geography.map.NoGeographicMapCellPositionFactoryInitVisitor_Package is

   procedure Initialize_Fields (This : in out NoGeographicMapCellPositionFactoryInitVisitor'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoGeographicMapCellPositionFactoryInitVisitor'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NoGeographicMapCellPositionFactoryInitVisitor_Access is
      This : constant NoGeographicMapCellPositionFactoryInitVisitor_Access := new NoGeographicMapCellPositionFactoryInitVisitor;
   begin
      NoGeographicMapCellPositionFactoryInitVisitor_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure visit (This : in out NoGeographicMapCellPositionFactoryInitVisitor; tiledLayer_Param : access AllBinaryTiledLayer'Class; cellPosition_Param : access GeographicMapCellPosition'Class) is
      tiledLayer : AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      cellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        null;
   end visit;

end org.allbinary.media.graphics.geography.map.NoGeographicMapCellPositionFactoryInitVisitor_Package;


