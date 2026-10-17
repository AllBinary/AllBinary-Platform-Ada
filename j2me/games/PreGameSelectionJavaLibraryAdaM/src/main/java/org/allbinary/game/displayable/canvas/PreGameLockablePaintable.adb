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


package body org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package is

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
        if (LockedUtil_Package.getInstance.isLocked) and then ((This.getPaintableForm.getSelectedIndex) >= (This.getLockedIndex)) then
            This.getAnimation.paintXY (graphics, (This.getPaintableForm.getDx) - (This.halfWidth), (This.getPaintableForm.getDy) + (34));
        end if;
   end paint;

   function getPaintableForm (This : in out PreGameLockablePaintable) return ScrollCurrentSelectionForm_Access is
   begin
        return This.paintableForm;
   end getPaintableForm;

end org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package;


