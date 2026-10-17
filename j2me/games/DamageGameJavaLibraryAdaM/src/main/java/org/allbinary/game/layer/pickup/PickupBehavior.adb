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


package body org.allbinary.game.layer.pickup.PickupBehavior_Package is

   procedure Initialize_Fields (This : in out PickupBehavior'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
   end Initialize_Fields;


   function getNullInstance return PickupBehavior_Access is
   begin
        if (PickupBehavior_Package.NULL_PICKUP_BEHAVIOR) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            PickupBehavior_Package.NULL_PICKUP_BEHAVIOR := PickupBehavior_Package.Create (CollidableCompositeLayer_Package.getNullInstance, 0);
        end if;
        return PickupBehavior_Access (PickupBehavior_Package.NULL_PICKUP_BEHAVIOR);
   end getNullInstance;

   procedure Initialize (This : in out PickupBehavior'Class; ownerLayerInterface : CollidableCompositeLayer_Access; countedIndex : Integer) is
   begin
      Initialize_Fields (This);
        This.ownerLayerInterface := ownerLayerInterface;
        This.countedIndex := countedIndex;
   end Initialize;

   function Create (ownerLayerInterface : CollidableCompositeLayer_Access; countedIndex : Integer) return PickupBehavior_Access is
      This : constant PickupBehavior_Access := new PickupBehavior;
   begin
      PickupBehavior_Package.Initialize (This.all, ownerLayerInterface, countedIndex);
      return This;
   end Create;

   procedure doPickup (This : in out PickupBehavior; pickupProcessorInterface : PickupProcessorInterface_Access) is
      healthInterfaceCompositeInterface : HealthInterfaceCompositeInterface_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            healthInterfaceCompositeInterface := HealthInterfaceCompositeInterface_Access (This.ownerLayerInterface);
            if healthInterfaceCompositeInterface.getHealthInterface.isAlive then
                pickupProcessorInterface.process (This.ownerLayerInterface);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("doPickup"), e);
                end;
        end;
   end doPickup;

   procedure doPickupLayer (This : in out PickupBehavior; pickupLayerInterface : PickedUpLayerInterface_Access) is
      pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;
      pickedUpLayerType : PickedUpLayerType_Access;
      pickedUpLayerTypeFactory : PickedUpLayerTypeFactory_Access;
      pickupProcessorInterface : PickupProcessorInterface_Access;
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            pickedUpLayerInterfaceFactoryInterface := pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface;
            pickedUpLayerType := pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType;
            pickedUpLayerTypeFactory := PickedUpLayerTypeFactory_Package.getInstance;
            if ((((pickedUpLayerType) = (pickedUpLayerTypeFactory.BEAM)) or else ((pickedUpLayerType) = (pickedUpLayerTypeFactory.MINE))) or else ((pickedUpLayerType) = (pickedUpLayerTypeFactory.PROJECTILE))) or else ((pickedUpLayerType) = (pickedUpLayerTypeFactory.ENHANCEMENT)) then
                This.add (CountedPickedUpLayerInterfaceFactoryInterface_Access (pickedUpLayerInterfaceFactoryInterface));
            elsif (pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType) = (pickedUpLayerTypeFactory.PART) then
                collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (This.ownerLayerInterface);
                collidableDestroyableDamageableLayer.addPart (pickedUpLayerInterfaceFactoryInterface);
            elsif (pickedUpLayerType) = (pickedUpLayerTypeFactory.NONE) then
                null;
            else
                pickupProcessorInterface := PickupProcessorInterface_Access (pickedUpLayerInterfaceFactoryInterface);
                This.doPickup (pickupProcessorInterface);
            end if;
            pickupLayerInterface.setPickedUp;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("doPickup"), e);
                end;
        end;
   end doPickupLayer;

   procedure add (This : in out PickupBehavior; countedPickedUpLayerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactoryInterface_Access) is
      partIndex : Integer;
   begin
        partIndex := (countedPickedUpLayerInterfaceFactoryInterface.getId) + (This.countedIndex);
        This.addAt (countedPickedUpLayerInterfaceFactoryInterface, partIndex);
   end add;

   procedure addAt (This : in out PickupBehavior; countedPickedUpLayerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactoryInterface_Access; partIndex : Integer) is
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      countedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart_Access;
   begin
        collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (This.ownerLayerInterface);
        countedLayerInterfaceFactory := CountedLayerInterfaceFactoryPart_Access (collidableDestroyableDamageableLayer.getPartInterfaceArray (partIndex));
        countedLayerInterfaceFactory.setTotal ((countedLayerInterfaceFactory.getTotal) + (countedPickedUpLayerInterfaceFactoryInterface.getTotal));
   end addAt;

   function getFirstAvailableCountedLayerInterfaceFactory (This : in out PickupBehavior; pickedUpLayerTypeArray : PickedUpLayerType_Access_Array_Access) return CountedLayerInterfaceFactoryPart_Access is
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      nextCountedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart_Access;
      countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory_Access;
      index2 : Integer;
      index : Integer;
   begin
        collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (This.ownerLayerInterface);
        partInterfaceArray := collidableDestroyableDamageableLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        nextCountedLayerInterfaceFactory := null;
        countedPickedUpLayerInterfaceFactory := null;
        for index in This.countedIndex .. (size) - 1 loop
            nextCountedLayerInterfaceFactory := CountedLayerInterfaceFactoryPart_Access (collidableDestroyableDamageableLayer.getPartInterfaceArray (index));
            countedPickedUpLayerInterfaceFactory := nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory;
            index2 := pickedUpLayerTypeArray'Length;
            while (Java_Pre_Decrement (index2)) >= (0) loop
                if (countedPickedUpLayerInterfaceFactory.getPickedUpLayerType) = (pickedUpLayerTypeArray (index2)) then
                    if (nextCountedLayerInterfaceFactory.getTotal) > (0) then
                        return nextCountedLayerInterfaceFactory;
                    end if;
                end if;
            end loop;
        end loop;
        return CountedLayerInterfaceFactoryPart_Package.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
   end getFirstAvailableCountedLayerInterfaceFactory;

   --  throws Exception
   function getCountedLayerInterfaceFactoryForSlot (This : in out PickupBehavior; slotIndex : Integer) return CountedLayerInterfaceFactoryPart_Access is
      currentSlot : Integer;
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access;
      partInterfaceArray : PartInterface_Access_Array_Access;
      size : Integer;
      nextCountedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart_Access;
      index : Integer;
   begin
        currentSlot := 0;
        collidableDestroyableDamageableLayer := CollidableDestroyableDamageableLayer_Access (This.ownerLayerInterface);
        partInterfaceArray := collidableDestroyableDamageableLayer.getPartInterfaceArray;
        size := partInterfaceArray'Length;
        nextCountedLayerInterfaceFactory := null;
        for index in This.countedIndex .. (size) - 1 loop
            nextCountedLayerInterfaceFactory := CountedLayerInterfaceFactoryPart_Access (collidableDestroyableDamageableLayer.getPartInterfaceArray (index));
            if (nextCountedLayerInterfaceFactory.getTotal) > (0) then
                if (currentSlot) = (slotIndex) then
                    return nextCountedLayerInterfaceFactory;
                else
                    currentSlot := currentSlot + 1;
                end if;
            end if;
        end loop;
        return CountedLayerInterfaceFactoryPart_Package.NULL_COUNTED_LAYER_INTERFACE_FACTORY;
   end getCountedLayerInterfaceFactoryForSlot;

   function getCountedIndex (This : in out PickupBehavior) return Integer is
   begin
        return This.countedIndex;
   end getCountedIndex;

   procedure getFirstAvailableCountedLayerInterfaceFactory (This : in out PickupBehavior; pickedUpLayerTypeArray : PickedUpLayerType_Access_Array_Access) is
      Java_Result : constant CountedLayerInterfaceFactoryPart_Access := PickupBehavior'Class (This).getFirstAvailableCountedLayerInterfaceFactory (pickedUpLayerTypeArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFirstAvailableCountedLayerInterfaceFactory;

   procedure getCountedLayerInterfaceFactoryForSlot (This : in out PickupBehavior; slotIndex : Integer) is
      Java_Result : constant CountedLayerInterfaceFactoryPart_Access := PickupBehavior'Class (This).getCountedLayerInterfaceFactoryForSlot (slotIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCountedLayerInterfaceFactoryForSlot;

begin
   null;
   NULL_PICKUP_BEHAVIOR := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.layer.pickup.PickupBehavior_Package;


