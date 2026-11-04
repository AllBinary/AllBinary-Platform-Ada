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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.logic.system.security.licensing.LockedResources_Package; use org.allbinary.logic.system.security.licensing.LockedResources_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;

package body org.allbinary.graphics.form.LockablePaintable_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames Standard.org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package LockedResources_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedResources_Package;
   package LockedUtil_Package renames Standard.org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
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
      LockablePaintable_Package.Initialize (This.all, lockedIndex);
      return This;
   end Create;

   procedure paint (This : in out LockablePaintable; graphics_Param : access Graphics_Package.Graphics'Class; currentIndex : Integer; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        if (LockedUtil_Package.getInstance.isLocked) and then ((currentIndex) >= (LockablePaintable'Class (This).getLockedIndex)) then
            LockablePaintable'Class (This).getAnimation.paintXY (graphics, x, y);
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

end org.allbinary.graphics.form.LockablePaintable_Package;


