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
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.audio.ErrorSound_Package; use org.allbinary.media.audio.ErrorSound_Package;
with org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package; use org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;

package org.allbinary.game.input.TextNotificationUtil_Package is

   package GameNotificationEvent_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEvent_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ErrorSound_Package renames Standard.org.allbinary.media.audio.ErrorSound_Package;
   package PrimaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;

   type TextNotificationUtil is tagged;
   type TextNotificationUtil_Access is access all TextNotificationUtil'Class;
   type TextNotificationUtil_Access_Array is array (Natural range <>) of TextNotificationUtil_Access;
   type TextNotificationUtil_Access_Array_Access is access all TextNotificationUtil_Access_Array;

   type TextNotificationUtil is new Java_Object with record
      TWO : Integer;
      FALSE : Boolean;
      gameNotificationEventHandler : GameNotificationEventHandler_Access;
   end record;
   instance : TextNotificationUtil_Access;

   procedure Initialize (This : in out TextNotificationUtil'Class);
   function Create return TextNotificationUtil_Access;
   function getInstance return TextNotificationUtil_Access;
   procedure fireError (This : in out TextNotificationUtil; message : Unbounded_String);
   procedure fireNew (This : in out TextNotificationUtil; message : Unbounded_String);
   procedure fireSuccess (This : in out TextNotificationUtil; message : Unbounded_String);
   procedure fire (This : in out TextNotificationUtil; message : Unbounded_String);

end org.allbinary.game.input.TextNotificationUtil_Package;


