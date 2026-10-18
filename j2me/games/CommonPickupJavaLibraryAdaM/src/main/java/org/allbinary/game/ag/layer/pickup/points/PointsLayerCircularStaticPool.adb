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


with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package; use org.allbinary.game.ag.layer.pickup.points.PointsLayer_Package;

package body org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package is

   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   procedure Initialize_Fields (This : in out PointsLayerCircularStaticPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PointsLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) is
      allbinaryLayerFactoryInterface : constant AllBinaryLayerFactoryInterface_Access := AllBinaryLayerFactoryInterface_Access (allbinaryLayerFactoryInterface_Param);
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        AllBinaryLayerCircularPool (This).initAllBinaryLayerCircularPool (allbinaryLayerFactoryInterface, total);
   end Initialize;

   function Create (allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) return PointsLayerCircularStaticPool_Access is
      This : constant PointsLayerCircularStaticPool_Access := new PointsLayerCircularStaticPool;
   begin
      PointsLayerCircularStaticPool_Package.Initialize (This.all, allbinaryLayerFactoryInterface_Param, total);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out PointsLayerCircularStaticPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      pointsLayer : PointsLayer_Access;
      scoreableInterface : ScoreableInterface_Access;
   begin
        pointsLayer := PointsLayer_Access (PointsLayerCircularStaticPool'Class (This).getNextInstance);
        scoreableInterface := ScoreableInterface_Access (sourceLayerInterface);
        pointsLayer.visit (scoreableInterface);
   end visit;

end org.allbinary.game.ag.layer.pickup.points.PointsLayerCircularStaticPool_Package;


