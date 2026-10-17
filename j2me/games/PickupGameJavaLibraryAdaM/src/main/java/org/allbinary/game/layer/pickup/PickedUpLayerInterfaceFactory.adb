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


package body org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out PickedUpLayerInterfaceFactory'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PickedUpLayerInterfaceFactory'Class; pickeUpLayerType : PickedUpLayerType_Access; iconLayer : IconLayer_Access; animationInterface : Animation_Access) is
   begin
      PickedUpLayerInterfaceFactoryBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.pickedUpLayerType := pickeUpLayerType;
        This.animationInterface := animationInterface;
        This.iconLayer := iconLayer;
   end Initialize;

   function Create (pickeUpLayerType : PickedUpLayerType_Access; iconLayer : IconLayer_Access; animationInterface : Animation_Access) return PickedUpLayerInterfaceFactory_Access is
      This : constant PickedUpLayerInterfaceFactory_Access := new PickedUpLayerInterfaceFactory;
   begin
      Initialize (This.all, pickeUpLayerType, iconLayer, animationInterface);
      return This;
   end Create;

   function getIconLayer (This : in out PickedUpLayerInterfaceFactory) return AllBinaryLayer_Access is
   begin
        return This.iconLayer;
   end getIconLayer;

   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactory) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactory) return PickedUpLayerType_Access is
   begin
        return This.pickedUpLayerType;
   end getPickedUpLayerType;

   procedure getIconLayer (This : in out PickedUpLayerInterfaceFactory) is
      Java_Result : constant AllBinaryLayer_Access := PickedUpLayerInterfaceFactory'Class (This).getIconLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIconLayer;

   procedure getAnimationInterface (This : in out PickedUpLayerInterfaceFactory) is
      Java_Result : constant Animation_Access := PickedUpLayerInterfaceFactory'Class (This).getAnimationInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationInterface;

   procedure getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactory) is
      Java_Result : constant PickedUpLayerType_Access := PickedUpLayerInterfaceFactory'Class (This).getPickedUpLayerType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPickedUpLayerType;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;


