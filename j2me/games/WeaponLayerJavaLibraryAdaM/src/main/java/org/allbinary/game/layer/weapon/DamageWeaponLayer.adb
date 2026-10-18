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


with org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package; use org.allbinary.game.layer.weapon.CollidableDamageWeaponBehavior_Package;

package body org.allbinary.game.layer.weapon.DamageWeaponLayer_Package is

   procedure Initialize_Fields (This : in out DamageWeaponLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DamageWeaponLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; username : Unbounded_String; actorSessionId : Integer; id : Integer; multiPlayerType : Integer) is
      remoteInfo : constant RemoteInfo_Access := RemoteInfo_Access (remoteInfo_Param);
      movement : constant Movement_Access := Movement_Access (movement_Param);
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      destroyedAnimationInterface : constant Animation_Access := Animation_Access (destroyedAnimationInterface_Param);
      rectangle : constant Rectangle_Access := Rectangle_Access (rectangle_Param);
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        WeaponLayer_Package.Initialize (This, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        DamageWeaponLayer'Class (This).setCollidableInferface (CollidableDamageWeaponBehavior_Package.Create (True));
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class; username : Unbounded_String; actorSessionId : Integer; id : Integer; multiPlayerType : Integer) return DamageWeaponLayer_Access is
      This : constant DamageWeaponLayer_Access := new DamageWeaponLayer;
   begin
      DamageWeaponLayer_Package.Initialize (This.all, name, remoteInfo_Param, movement_Param, animationInterface_Param, destroyedAnimationInterface_Param, rectangle_Param, viewPosition_Param, username, actorSessionId, id, multiPlayerType);
      return This;
   end Create;

end org.allbinary.game.layer.weapon.DamageWeaponLayer_Package;


