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

   procedure Initialize (This : in out SimpleWeaponLayer'Class; name : Unbounded_String; remoteInfo : RemoteInfo_Access; multiPlayerType : Integer; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) is
   begin
        WeaponLayer_Package.Initialize (This, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        This.setCollidableInferface (CollidableWeaponBehavior_Package.Create (True));
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo : RemoteInfo_Access; multiPlayerType : Integer; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) return SimpleWeaponLayer_Access is
      This : constant SimpleWeaponLayer_Access := new SimpleWeaponLayer;
   begin
      SimpleWeaponLayer_Package.Initialize (This.all, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
      return This;
   end Create;

end org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;


