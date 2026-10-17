-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package is

   procedure Initialize_Fields (This : in out PickedUpLayerInterfaceFactoryBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PickedUpLayerInterfaceFactoryBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PickedUpLayerInterfaceFactoryBase_Access is
      This : constant PickedUpLayerInterfaceFactoryBase_Access := new PickedUpLayerInterfaceFactoryBase;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getIconLayer (This : in out PickedUpLayerInterfaceFactoryBase) return AllBinaryLayer_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getIconLayer;

   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactoryBase) return Animation_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getAnimationInterface;

   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactoryBase) return PickedUpLayerType_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getPickedUpLayerType;

   procedure getIconLayer (This : in out PickedUpLayerInterfaceFactoryBase) is
      Java_Result : constant AllBinaryLayer_Access := PickedUpLayerInterfaceFactoryBase'Class (This).getIconLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIconLayer;

   procedure getAnimationInterface (This : in out PickedUpLayerInterfaceFactoryBase) is
      Java_Result : constant Animation_Access := PickedUpLayerInterfaceFactoryBase'Class (This).getAnimationInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationInterface;

   procedure getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactoryBase) is
      Java_Result : constant PickedUpLayerType_Access := PickedUpLayerInterfaceFactoryBase'Class (This).getPickedUpLayerType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPickedUpLayerType;

begin
   null;
   NULL_PICKED_UP_LAYER_FACTORY_BASE := PickedUpLayerInterfaceFactoryBase_Package.Create;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;


