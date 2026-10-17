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


package body org.allbinary.game.layer.CollidableVehicleBehavior_Package is

   procedure Initialize_Fields (This : in out CollidableVehicleBehavior'Class) is
   begin
      null;
      This.totalImpactVelocity := 0;
      This.halfImpactVelocityX := 0;
      This.halfImpactVelocityY := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out CollidableVehicleBehavior'Class; collidable : Boolean) is
   begin
        CollidableDestroyableDamageableBehavior_Package.Initialize (This, collidable);
        Initialize_Fields (This);
   end Initialize;

   function Create (collidable : Boolean) return CollidableVehicleBehavior_Access is
      This : constant CollidableVehicleBehavior_Access := new CollidableVehicleBehavior;
   begin
      CollidableVehicleBehavior_Package.Initialize (This.all, collidable);
      return This;
   end Create;

   --  throws Exception
   procedure collide (This : in out CollidableVehicleBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableCompositeLayer_Access) is
      collisionTypeFactory : CollisionTypeFactory_Access;
      collisionType : CollisionType_Access;
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
   begin
        collisionTypeFactory := CollisionTypeFactory_Package.getInstance;
        collisionType := collidableInterfaceCompositeInterface.getCollidableInferface.getCollisionTypeWith (ownerLayer);
        if (collisionType) = (collisionTypeFactory.PICKUP) then
            collidableDestroyableDamageableLayer := (CollidableDestroyableDamageableLayer_Access (ownerLayer));
            collidableDestroyableDamageableLayer.getPickupBehavior.doPickupLayer (PickedUpLayerInterface_Access (collidableInterfaceCompositeInterface));
        elsif (collisionType) = (collisionTypeFactory.COLLISION) then
            CollidableDestroyableDamageableBehavior (This).collide (ownerLayer, collidableInterfaceCompositeInterface);
        else
            This.collideVehicle (ownerLayer, VehiclePropertiesCompositeInterface_Access (collidableInterfaceCompositeInterface));
        end if;
   end collide;

   procedure collideInterface (This : in out CollidableVehicleBehavior; ownerLayer : CollidableCompositeLayer_Access; collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface_Access) is
   begin
        ForcedLogUtil_Package.log (To_Unbounded_String ("Don't Use Interface Version It Is Slower"), This'Unchecked_Access);
   end collideInterface;

   procedure collideVehicle (This : in out CollidableVehicleBehavior; ownerLayer : CollidableCompositeLayer_Access; vehiclePropertiesCompositeInterface : VehiclePropertiesCompositeInterface_Access) is
      ownerVehicleLayerInterface : VehiclePropertiesCompositeInterface_Access;
      ownerVehicleProperties : VehicleProperties_Access;
      vehicleProperties : VehicleProperties_Access;
      impactVelocityX : Long_Long_Integer;
      impactVelocityY : Long_Long_Integer;
   begin
        ownerVehicleLayerInterface := (VehiclePropertiesCompositeInterface_Access (ownerLayer));
        ownerVehicleProperties := ownerVehicleLayerInterface.getVehicleProperties;
        vehicleProperties := vehiclePropertiesCompositeInterface.getVehicleProperties;
        impactVelocityX := (ownerVehicleProperties.getVelocityProperties.getVelocityXBasicDecimalP.getUnscaled) - (vehicleProperties.getVelocityProperties.getVelocityXBasicDecimalP.getUnscaled);
        impactVelocityY := (ownerVehicleProperties.getVelocityProperties.getVelocityYBasicDecimalP.getUnscaled) - (vehicleProperties.getVelocityProperties.getVelocityYBasicDecimalP.getUnscaled);
        if (impactVelocityX) /= (0) then
            This.halfImpactVelocityX := (Java_Shift_Right_Arithmetic (impactVelocityX, 1));
            ownerVehicleProperties.getVelocityProperties.getVelocityXBasicDecimalP.addlong (This.halfImpactVelocityX);
            vehicleProperties.getVelocityProperties.getVelocityXBasicDecimalP.addlong (This.halfImpactVelocityX);
        else
            null;
        end if;
        if (impactVelocityY) /= (0) then
            This.halfImpactVelocityY := (Java_Shift_Right_Arithmetic (impactVelocityY, 1));
            ownerVehicleProperties.getVelocityProperties.getVelocityYBasicDecimalP.addlong (This.halfImpactVelocityY);
            vehicleProperties.getVelocityProperties.getVelocityXBasicDecimalP.addlong (This.halfImpactVelocityY);
        else
            null;
        end if;
        This.collideFriction (ownerVehicleLayerInterface);
        This.collideFriction (vehiclePropertiesCompositeInterface);
        This.totalImpactVelocity := (impactVelocityX) + (impactVelocityY);
   end collideVehicle;

   procedure collideFriction (This : in out CollidableVehicleBehavior; vehiclePropertiesCompositeInterface : VehiclePropertiesCompositeInterface_Access) is
      vehicleFrictionProperties : VehicleFrictionProperties_Access;
   begin
        vehicleFrictionProperties := vehiclePropertiesCompositeInterface.getVehicleProperties.getVehicleFrictionProperties;
        vehiclePropertiesCompositeInterface.getVehicleProperties.getVehicleFrictionProperties.friction (vehiclePropertiesCompositeInterface.getVehicleProperties.getVelocityProperties, vehicleFrictionProperties.getCrashFrictionNominator);
   end collideFriction;

end org.allbinary.game.layer.CollidableVehicleBehavior_Package;


