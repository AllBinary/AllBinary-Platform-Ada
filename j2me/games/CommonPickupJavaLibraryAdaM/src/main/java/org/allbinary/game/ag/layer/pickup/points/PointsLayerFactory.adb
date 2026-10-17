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


package body org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package is

   procedure Initialize_Fields (This : in out PointsLayerFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PointsLayerFactory'Class; points : Integer) is
   begin
      Initialize_Fields (This);
        This.points := points;
   end Initialize;

   function Create (points : Integer) return PointsLayerFactory_Access is
      This : constant PointsLayerFactory_Access := new PointsLayerFactory;
   begin
      PointsLayerFactory_Package.Initialize (This.all, points);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out PointsLayerFactory) return AllBinaryLayer_Access is
   begin
        return PointsLayer_Package.Create (This.points);
   end getInstance;

end org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory_Package;


