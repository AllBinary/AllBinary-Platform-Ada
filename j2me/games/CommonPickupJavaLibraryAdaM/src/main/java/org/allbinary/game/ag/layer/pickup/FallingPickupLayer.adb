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


package body org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package is

   procedure Initialize_Fields (This : in out FallingPickupLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out FallingPickupLayer'Class; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
   begin
        PickupLayer_Package.Initialize (This, FallingPickupLayer_Package.NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory_Package.getFactoryInstance.getInstance (0), Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0), ViewPosition_Package.getInstanceD);
   end Initialize;

   function Create (remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class) return FallingPickupLayer_Access is
      This : constant FallingPickupLayer_Access := new FallingPickupLayer;
   begin
      FallingPickupLayer_Package.Initialize (This.all, remoteInfo_Param);
      return This;
   end Create;

   procedure processTick (This : in out FallingPickupLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        This.setPosition (This.x, (This.y) + (1), This.z);
   end processTick;

   function implmentsTickableInterface (This : in out FallingPickupLayer) return Boolean is
   begin
        return True;
   end implmentsTickableInterface;

begin
   null;
   NAME := To_Unbounded_String ("FallingPickupLayer");

end org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package;


