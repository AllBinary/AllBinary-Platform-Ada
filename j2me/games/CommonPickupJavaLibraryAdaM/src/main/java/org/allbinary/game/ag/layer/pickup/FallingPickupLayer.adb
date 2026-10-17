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


   procedure Initialize (This : in out FallingPickupLayer'Class; remoteInfo : RemoteInfo_Access) is
   begin
        PickupLayer_Package.Initialize (This, FallingPickupLayer_Package.NAME, remoteInfo, 0, CountedPickedUpLayerInterfaceFactory_Package.NULL_COUNTED_PICKUP_LAYER_FACTORY, NullAnimationFactory_Package.getFactoryInstance.getInstance (0), Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 0, 0), ViewPosition_Package.getInstanceD);
   end Initialize;

   function Create (remoteInfo : RemoteInfo_Access) return FallingPickupLayer_Access is
      This : constant FallingPickupLayer_Access := new FallingPickupLayer;
   begin
      Initialize (This.all, remoteInfo);
      return This;
   end Create;

   procedure processTick (This : in out FallingPickupLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        This.setPosition (This.x, (This.y) + (1), This.z);
   end processTick;

   function implmentsTickableInterface (This : in out FallingPickupLayer) return Boolean is
   begin
        return True;
   end implmentsTickableInterface;

   procedure implmentsTickableInterface (This : in out FallingPickupLayer) is
      Java_Result : constant Boolean := FallingPickupLayer'Class (This).implmentsTickableInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end implmentsTickableInterface;

begin
   null;
   NAME := To_Unbounded_String ("FallingPickupLayer");

end org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package;


