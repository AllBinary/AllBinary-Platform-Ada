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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.game.combat.damage.ExplosionResources_Package; use org.allbinary.game.combat.damage.ExplosionResources_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package; use org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;
with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package;

package body org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package NullIndexedAnimationFactory_Package renames Standard.org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package ExplosionResources_Package renames Standard.org.allbinary.game.combat.damage.ExplosionResources_Package;
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   function "=" (Left, Right : RemoteInfo_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   function "=" (Left, Right : RemoteInfo_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References."=";
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   function "=" (Left, Right : Rectangle_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Rectangle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.Rectangle_Package_References."=";
   subtype Movement_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access;
   function "=" (Left, Right : Movement_Access) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype Movement_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array;
   function "=" (Left, Right : Movement_Access_Array) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype Movement_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access;
   function "=" (Left, Right : Movement_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype Movement_Access_Array_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array;
   function "=" (Left, Right : Movement_Access_Array_Access_Array) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype Movement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Movement_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.physics.movement.Movement_Package_References."=";
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   function "=" (Left, Right : ViewPositionBase_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewPositionBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.view.ViewPositionBase_Package_References."=";
   procedure Initialize_Fields (This : in out SimpleWeaponLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   --  throws Exception
   function createDestroyed return Animation_Access is
   begin
        return FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.getProcedural (ExplosionResources_Package.getInstance.THIRD_EXPLOSION_RESOURCE).getInstanceAnimation (NullIndexedAnimationFactory_Package.getFactoryInstance.getInstance (0));
   end createDestroyed;

   procedure Initialize (This : in out SimpleWeaponLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      movement : constant Movement_Access := Movement_Access (movement_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      destroyedAnimationInterface : constant Animation_Access := Animation_Access (destroyedAnimationInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        WeaponLayer_Package.Initialize (This, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        SimpleWeaponLayer'Class (This).setCollidableInferface (CollidableWeaponBehavior_Package.Create (True));
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return SimpleWeaponLayer_Access is
      This : constant SimpleWeaponLayer_Access := new SimpleWeaponLayer;
   begin
      SimpleWeaponLayer_Package.Initialize (This.all, name, remoteInfo_Param, multiPlayerType, movement_Param, animationInterface_Param, destroyedAnimationInterface_Param, rectangle_Param, viewPosition_Param);
      return This;
   end Create;

end org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;


