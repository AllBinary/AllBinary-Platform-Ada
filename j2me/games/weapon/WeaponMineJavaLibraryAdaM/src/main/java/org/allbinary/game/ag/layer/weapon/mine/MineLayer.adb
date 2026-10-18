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


with org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package; use org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package; use org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
with org.allbinary.physics.movement.NoMovementFactory_Package; use org.allbinary.physics.movement.NoMovementFactory_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package; use org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources_Package;

package body org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package is

   package DropWeaponSound_Package renames Standard.org.allbinary.ag.weapon.media.audio.DropWeaponSound_Package;
   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package SecondaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.SecondaryPlayerQueueFactory_Package;
   package NoMovementFactory_Package renames Standard.org.allbinary.physics.movement.NoMovementFactory_Package;
   procedure Initialize_Fields (This : in out MineLayer'Class) is
   begin
      null;
      This.viewPositionEventHandler := ViewPositionEventHandler_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out MineLayer'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) is
      viewPosition : constant ViewPositionBase_Access := ViewPositionBase_Access (viewPosition_Param);
   begin
        SimpleWeaponLayer_Package.Initialize (This, MineLayer_Package.NAME, RemoteInfo_Package.REMOTE_INFO, -(1), NoMovementFactory_Package.getInstance.getMovmentInstance, FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (MineWeaponResources_Package.getInstance.RESOURCE).getInstance (0), SimpleWeaponLayer_Package.createDestroyed, Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 10, 10), viewPosition);
        Initialize_Fields (This);
   end Initialize;

   function Create (viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return MineLayer_Access is
      This : constant MineLayer_Access := new MineLayer;
   begin
      MineLayer_Package.Initialize (This.all, viewPosition_Param);
      return This;
   end Create;

   procedure initXYZ (This : in out MineLayer; x : Integer; y : Integer; z : Integer) is
   begin
        MineLayer'Class (This).setPosition ((x) + (5), (y) + (5), z);
        This.viewPositionEventHandler.addListener (AllBinaryLayer_Access (MineLayer_Access'(This'Unchecked_Access)));
        SecondaryPlayerQueueFactory_Package.getInstance.add (DropWeaponSound_Package.getInstance);
   end initXYZ;

   procedure damage (This : in out MineLayer; damage : Integer; damageType : Integer) is
   begin
        This.totalDamage := (MineLayer'Class (This).getInitDamage) + (1);
   end damage;

   function getDamage (This : in out MineLayer; damageType : Integer) return Integer is
   begin
        SimpleWeaponLayer (This).getDamage (damageType);
        return MineLayer'Class (This).getInitDamage;
   end getDamage;

   procedure setDestroyed (This : in out MineLayer; destroyed : Boolean) is
   begin
        SimpleWeaponLayer (This).setDestroyed (destroyed);
        if MineLayer'Class (This).isDestroyed then
            This.viewPositionEventHandler.removeListener (MineLayer_Access'(This'Unchecked_Access));
        end if;
   end setDestroyed;

   procedure getDamage (This : in out MineLayer; damageType : Integer) is
      Java_Result : constant Integer := MineLayer'Class (This).getDamage (damageType => damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

begin
   null;
   NAME := To_Unbounded_String ("MineLayer");

end org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package;


