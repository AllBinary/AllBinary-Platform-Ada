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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.image.GameFeatureImageCacheFactory_Package; use org.allbinary.image.GameFeatureImageCacheFactory_Package;
with org.allbinary.logic.system.security.licensing.LockedResources_Package; use org.allbinary.logic.system.security.licensing.LockedResources_Package;
with org.allbinary.logic.system.security.licensing.LockedUtil_Package; use org.allbinary.logic.system.security.licensing.LockedUtil_Package;
with org.allbinary.graphics.form.LockablePaintable_Package; use org.allbinary.graphics.form.LockablePaintable_Package;
with org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package; use org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

package org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package is

   package GameFeatureImageCacheFactory_Package renames org.allbinary.image.GameFeatureImageCacheFactory_Package;
   package LockedResources_Package renames org.allbinary.logic.system.security.licensing.LockedResources_Package;
   package LockedUtil_Package renames org.allbinary.logic.system.security.licensing.LockedUtil_Package;
   package LockablePaintable_Package renames org.allbinary.graphics.form.LockablePaintable_Package;
   package ScrollCurrentSelectionForm_Package renames org.allbinary.graphics.form.ScrollCurrentSelectionForm_Package;

   type PreGameLockablePaintable is tagged;
   type PreGameLockablePaintable_Access is access all PreGameLockablePaintable'Class;
   type PreGameLockablePaintable_Access_Array is array (Natural range <>) of PreGameLockablePaintable_Access;
   type PreGameLockablePaintable_Access_Array_Access is access all PreGameLockablePaintable_Access_Array;

   type PreGameLockablePaintable is new LockablePaintable with record
      halfWidth : Integer;
      paintableForm : ScrollCurrentSelectionForm_Access;
   end record;

   procedure Initialize (This : in out PreGameLockablePaintable'Class; paintableForm : ScrollCurrentSelectionForm_Access; lockedIndex : Integer);
   function Create (paintableForm : ScrollCurrentSelectionForm_Access; lockedIndex : Integer) return PreGameLockablePaintable_Access;
   procedure paint (This : in out PreGameLockablePaintable; graphics : Graphics_Access; currentIndex : Integer; x : Integer; y : Integer);
   function getPaintableForm (This : in out PreGameLockablePaintable) return ScrollCurrentSelectionForm_Access;
   procedure getPaintableForm (This : in out PreGameLockablePaintable);

end org.allbinary.game.displayable.canvas.PreGameLockablePaintable_Package;


