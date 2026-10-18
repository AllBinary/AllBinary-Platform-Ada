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


with org.allbinary.game.layer.pickup.PickupLayer_Package; use org.allbinary.game.layer.pickup.PickupLayer_Package;

package body org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package is

   procedure Initialize_Fields (This : in out PickupLayerCircularStaticPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out PickupLayerCircularStaticPool'Class) is
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PickupLayerCircularStaticPool_Access is
      This : constant PickupLayerCircularStaticPool_Access := new PickupLayerCircularStaticPool;
   begin
      PickupLayerCircularStaticPool_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return PickupLayerCircularStaticPool_Access is
   begin
        return PickupLayerCircularStaticPool_Package.SINGLETON;
   end getInstance;

   --  throws Exception
   function getInstanceXYZ (This : in out PickupLayerCircularStaticPool; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; x : Integer; y : Integer; z : Integer) return PickedUpLayerInterface_Access is
      pickedUpLayerInterfaceFactoryInterface : constant PickedUpLayerInterfaceFactoryInterface_Access := PickedUpLayerInterfaceFactoryInterface_Access (pickedUpLayerInterfaceFactoryInterface_Param);
      pickupLayer : PickupLayer_Access;
   begin
        pickupLayer := PickupLayer_Access (PickupLayerCircularStaticPool'Class (This).getNextInstance);
        pickupLayer.initXYZ (x, y, z);
        pickupLayer.init (pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.getAnimationInterface);
        return PickedUpLayerInterface_Access (pickupLayer);
   end getInstanceXYZ;

   procedure getInstanceXYZ (This : in out PickupLayerCircularStaticPool; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; x : Integer; y : Integer; z : Integer) is
      Java_Result : constant PickedUpLayerInterface_Access := PickupLayerCircularStaticPool'Class (This).getInstanceXYZ (pickedUpLayerInterfaceFactoryInterface_Param => pickedUpLayerInterfaceFactoryInterface_Param, x => x, y => y, z => z);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceXYZ;

begin
   null;
   SINGLETON := PickupLayerCircularStaticPool_Package.Create;

end org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package;


