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


package body org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package is

   procedure Initialize_Fields (This : in out SimpleWeaponLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   --  throws Exception
   function createDestroyed return Animation_Access is
   begin
        return FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.getProcedural (ExplosionResources_Package.getInstance.THIRD_EXPLOSION_RESOURCE).getInstanceAnimation (NullIndexedAnimationFactory_Package.getFactoryInstance.getInstance (0));
   end createDestroyed;

   procedure Initialize (This : in out SimpleWeaponLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement'Class; animationInterface_Param : access Animation'Class; destroyedAnimationInterface_Param : access Animation'Class; rectangle_Param : access Rectangle'Class; viewPosition_Param : access ViewPositionBase'Class) is
      remoteInfo : RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      movement : Movement_Access := Movement_Access (movement_Param);
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      destroyedAnimationInterface : Animation_Access := Animation_Access (destroyedAnimationInterface_Param);
      rectangle : Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        WeaponLayer_Package.Initialize (This, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        This.setCollidableInferface (CollidableWeaponBehavior_Package.Create (True));
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement'Class; animationInterface_Param : access Animation'Class; destroyedAnimationInterface_Param : access Animation'Class; rectangle_Param : access Rectangle'Class; viewPosition_Param : access ViewPositionBase'Class) return SimpleWeaponLayer_Access is
      This : constant SimpleWeaponLayer_Access := new SimpleWeaponLayer;
   begin
      SimpleWeaponLayer_Package.Initialize (This.all, name, remoteInfo_Param, multiPlayerType, movement_Param, animationInterface_Param, destroyedAnimationInterface_Param, rectangle_Param, viewPosition_Param);
      return This;
   end Create;

end org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;


