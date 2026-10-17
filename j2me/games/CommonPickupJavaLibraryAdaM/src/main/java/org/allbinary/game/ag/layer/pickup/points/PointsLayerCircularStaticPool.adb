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


package body org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package is

   procedure Initialize_Fields (This : in out PointsLayerCircularStaticPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PointsLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface_Access; total : Integer) is
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        AllBinaryLayerCircularPool (This).initAllBinaryLayerCircularPool (allbinaryLayerFactoryInterface, total);
   end Initialize;

   function Create (allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface_Access; total : Integer) return PointsLayerCircularStaticPool_Access is
      This : constant PointsLayerCircularStaticPool_Access := new PointsLayerCircularStaticPool;
   begin
      Initialize (This.all, allbinaryLayerFactoryInterface, total);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out PointsLayerCircularStaticPool; sourceLayerInterface : AllBinaryLayer_Access) is
      pointsLayer : PointsLayer_Access;
      scoreableInterface : ScoreableInterface_Access;
   begin
        pointsLayer := PointsLayer_Access (This.getNextInstance);
        scoreableInterface := ScoreableInterface_Access (sourceLayerInterface);
        pointsLayer.visit (scoreableInterface);
   end visit;

end org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package;


