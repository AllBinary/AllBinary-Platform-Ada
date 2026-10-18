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


package body org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package is

   procedure Initialize_Fields (This : in out LifeLayerCircularStaticPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LifeLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) is
      allbinaryLayerFactoryInterface : constant AllBinaryLayerFactoryInterface_Access := AllBinaryLayerFactoryInterface_Access (allbinaryLayerFactoryInterface_Param);
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        AllBinaryLayerCircularPool (This).initAllBinaryLayerCircularPool (allbinaryLayerFactoryInterface, total);
   end Initialize;

   function Create (allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) return LifeLayerCircularStaticPool_Access is
      This : constant LifeLayerCircularStaticPool_Access := new LifeLayerCircularStaticPool;
   begin
      LifeLayerCircularStaticPool_Package.Initialize (This.all, allbinaryLayerFactoryInterface_Param, total);
      return This;
   end Create;

   --  throws Exception
   procedure visit (This : in out LifeLayerCircularStaticPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      lifeLayer : LifeLayer_Access;
      lifeInterfaceCompositeInterface : LifeInterfaceCompositeInterface_Access;
      lifeInterface : Life_Access;
   begin
        lifeLayer := LifeLayer_Access (LifeLayerCircularStaticPool'Class (This).getNextInstance);
        lifeInterfaceCompositeInterface := LifeInterfaceCompositeInterface_Access (sourceLayerInterface);
        lifeInterface := lifeInterfaceCompositeInterface.getLifeInterface;
        lifeLayer.visit (lifeInterface);
   end visit;

end org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package;


