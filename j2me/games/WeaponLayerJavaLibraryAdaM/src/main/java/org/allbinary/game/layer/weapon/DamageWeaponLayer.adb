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


package body org.allbinary.game.layer.weapon.DamageWeaponLayer_Package is

   procedure Initialize_Fields (This : in out DamageWeaponLayer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DamageWeaponLayer'Class; name : Unbounded_String; remoteInfo : RemoteInfo_Access; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access; username : Unbounded_String; actorSessionId : Integer; id : Integer; multiPlayerType : Integer) is
   begin
        WeaponLayer_Package.Initialize (This, name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition);
        This.setCollidableInferface (CollidableDamageWeaponBehavior_Package.Create (True));
   end Initialize;

   function Create (name : Unbounded_String; remoteInfo : RemoteInfo_Access; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access; username : Unbounded_String; actorSessionId : Integer; id : Integer; multiPlayerType : Integer) return DamageWeaponLayer_Access is
      This : constant DamageWeaponLayer_Access := new DamageWeaponLayer;
   begin
      Initialize (This.all, name, remoteInfo, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition, username, actorSessionId, id, multiPlayerType);
      return This;
   end Create;

end org.allbinary.game.layer.weapon.DamageWeaponLayer_Package;


