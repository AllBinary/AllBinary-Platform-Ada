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


package body org.allbinary.graphics.form.LockablePaintable_Package is

   procedure Initialize_Fields (This : in out LockablePaintable'Class) is
   begin
      null;
      This.animation := FeaturedAnimationInterfaceFactoryInterfaceFactory_Package.getInstance.get (LockedResources_Package.getInstance.LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance (0);
      
   end Initialize_Fields;


   procedure Initialize (This : in out LockablePaintable'Class; lockedIndex : Integer) is
   begin
      ItemPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.lockedIndex := lockedIndex;
   end Initialize;

   function Create (lockedIndex : Integer) return LockablePaintable_Access is
      This : constant LockablePaintable_Access := new LockablePaintable;
   begin
      Initialize (This.all, lockedIndex);
      return This;
   end Create;

   procedure paint (This : in out LockablePaintable; graphics : Graphics_Access; currentIndex : Integer; x : Integer; y : Integer) is
   begin
        if (LockedUtil_Package.getInstance.isLocked) and then ((currentIndex) >= (This.getLockedIndex)) then
            This.getAnimation.paintXY (graphics, x, y);
        end if;
   end paint;

   function getLockedIndex (This : in out LockablePaintable) return Integer is
   begin
        return This.lockedIndex;
   end getLockedIndex;

   function getAnimation (This : in out LockablePaintable) return Animation_Access is
   begin
        return This.animation;
   end getAnimation;

   procedure getLockedIndex (This : in out LockablePaintable) is
      Java_Result : constant Integer := LockablePaintable'Class (This).getLockedIndex;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLockedIndex;

   procedure getAnimation (This : in out LockablePaintable) is
      Java_Result : constant Animation_Access := LockablePaintable'Class (This).getAnimation;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimation;

end org.allbinary.graphics.form.LockablePaintable_Package;


