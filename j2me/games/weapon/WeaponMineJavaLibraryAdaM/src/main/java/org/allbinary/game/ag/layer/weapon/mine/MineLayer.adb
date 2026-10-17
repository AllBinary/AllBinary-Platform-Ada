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


package body org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package is

   procedure Initialize_Fields (This : in out MineLayer'Class) is
   begin
      null;
      This.viewPositionEventHandler := ViewPositionEventHandler_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out MineLayer'Class; viewPosition : ViewPositionBase_Access) is
   begin
        SimpleWeaponLayer_Package.Initialize (This, MineLayer_Package.NAME, RemoteInfo_Package.REMOTE_INFO, -(1), NoMovementFactory_Package.getInstance.getMovmentInstance, FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (MineWeaponResources_Package.getInstance.RESOURCE).getInstance (0), SimpleWeaponLayer_Package.createDestroyed, Rectangle_Package.Create (PointFactory_Package.getInstance.ZERO_ZERO, 10, 10), viewPosition);
        Initialize_Fields (This);
   end Initialize;

   function Create (viewPosition : ViewPositionBase_Access) return MineLayer_Access is
      This : constant MineLayer_Access := new MineLayer;
   begin
      MineLayer_Package.Initialize (This.all, viewPosition);
      return This;
   end Create;

   procedure initXYZ (This : in out MineLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.setPosition ((x) + (5), (y) + (5), z);
        This.viewPositionEventHandler.addListener (AllBinaryLayer_Access (This'Unchecked_Access));
        SecondaryPlayerQueueFactory_Package.getInstance.add (DropWeaponSound_Package.getInstance);
   end initXYZ;

   procedure damage (This : in out MineLayer; damage : Integer; damageType : Integer) is
   begin
        This.totalDamage := (This.getInitDamage) + (1);
   end damage;

   function getDamage (This : in out MineLayer; damageType : Integer) return Integer is
   begin
        SimpleWeaponLayer (This).getDamage (damageType);
        return This.getInitDamage;
   end getDamage;

   procedure setDestroyed (This : in out MineLayer; destroyed : Boolean) is
   begin
        SimpleWeaponLayer (This).setDestroyed (destroyed);
        if This.isDestroyed then
            This.viewPositionEventHandler.removeListener (This'Unchecked_Access);
        end if;
   end setDestroyed;

   procedure getDamage (This : in out MineLayer; damageType : Integer) is
      Java_Result : constant Integer := MineLayer'Class (This).getDamage (damageType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamage;

begin
   null;
   NAME := To_Unbounded_String ("MineLayer");

end org.allbinary.game.ag.layer.weapon.mine.MineLayer_Package;


