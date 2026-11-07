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
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.logic.system.security.licensing.LockedResources_Package; use org.allbinary.logic.system.security.licensing.LockedResources_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.graphics.form.LockablePaintable_Package; use org.allbinary.graphics.form.LockablePaintable_Package;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package; use org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Image_Package;

package body org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package is

   package GameFeatureImageCacheFactory_Package renames Standard.org.allbinary.image.GameFeatureImageCacheFactory_Package;
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
   subtype ScrollCurrentSelectionForm_Access is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access;
   function "=" (Left, Right : ScrollCurrentSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References."=";
   subtype ScrollCurrentSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access_Array;
   function "=" (Left, Right : ScrollCurrentSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References."=";
   subtype ScrollCurrentSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access_Array_Access;
   function "=" (Left, Right : ScrollCurrentSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References."=";
   subtype ScrollCurrentSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollCurrentSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References."=";
   subtype ScrollCurrentSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References.ScrollCurrentSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollCurrentSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package_References."=";
   procedure Initialize_Fields (This : in out PreGameLockablePaintable'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PreGameLockablePaintable'Class; paintableForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class; lockedIndex : Integer) is
      paintableForm : constant ScrollCurrentSelectionForm_Access := ScrollCurrentSelectionForm_Access (paintableForm_Param);
   begin
        LockablePaintable_Package.Initialize (This, lockedIndex);
        Initialize_Fields (This);
        This.paintableForm := paintableForm;
        This.halfWidth := (GameFeatureImageCacheFactory_Package.getInstance.getWithKey (LockedResources_Package.getInstance.LOCKED_DEMO_GAME_FEATURE_RESOURCE).getWidth) / (2);
   end Initialize;

   function Create (paintableForm_Param : access ScrollCurrentSelectionForm_Package.ScrollCurrentSelectionForm'Class; lockedIndex : Integer) return PreGameLockablePaintable_Access is
      This : constant PreGameLockablePaintable_Access := new PreGameLockablePaintable;
   begin
      PreGameLockablePaintable_Package.Initialize (This.all, paintableForm_Param, lockedIndex);
      return This;
   end Create;

   procedure paint (This : in out PreGameLockablePaintable; graphics_Param : access Graphics_Package.Graphics'Class; currentIndex : Integer; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        if (LockedUtil_Package.getInstance.isLocked) and then ((PreGameLockablePaintable'Class (This).getPaintableForm.getSelectedIndex) >= (PreGameLockablePaintable'Class (This).getLockedIndex)) then
            PreGameLockablePaintable'Class (This).getAnimation.paintXY (graphics, (PreGameLockablePaintable'Class (This).getPaintableForm.getDx) - (This.halfWidth), (PreGameLockablePaintable'Class (This).getPaintableForm.getDy) + (34));
        end if;
   end paint;

   function getPaintableForm (This : in out PreGameLockablePaintable) return ScrollCurrentSelectionForm_Access is
   begin
        return This.paintableForm;
   end getPaintableForm;

end org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package;


