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
with org.allbinary.game.layer.hud.event.GameNotificationEvent_Package; use org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;

package org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package is

   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type LockedFeatureNotificationUtil is tagged;
   type LockedFeatureNotificationUtil_Access is access all LockedFeatureNotificationUtil'Class;
   type LockedFeatureNotificationUtil_Access_Array is array (Natural range <>) of LockedFeatureNotificationUtil_Access;
   type LockedFeatureNotificationUtil_Access_Array_Access is access all LockedFeatureNotificationUtil_Access_Array;
   type LockedFeatureNotificationUtil_Access_Array_Access_Array is array (Natural range <>) of LockedFeatureNotificationUtil_Access_Array_Access;
   type LockedFeatureNotificationUtil_Access_Array_Access_Array_Access is access all LockedFeatureNotificationUtil_Access_Array_Access_Array;

   type LockedFeatureNotificationUtil is new Java_Object with record
      gameNotificationEvent : GameNotificationEvent_Access;
   end record;
   instance : LockedFeatureNotificationUtil_Access;

   procedure Initialize (This : in out LockedFeatureNotificationUtil'Class);
   function Create return LockedFeatureNotificationUtil_Access;
   function getInstance return LockedFeatureNotificationUtil_Access;
   procedure fire (This : in out LockedFeatureNotificationUtil);
   procedure fireWithColor (This : in out LockedFeatureNotificationUtil; basicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil_Package;


