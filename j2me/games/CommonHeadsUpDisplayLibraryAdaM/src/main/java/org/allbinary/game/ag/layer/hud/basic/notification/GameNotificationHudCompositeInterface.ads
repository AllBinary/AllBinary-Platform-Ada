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

package org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package is


   type GameNotificationHudCompositeInterface is interface;
   type GameNotificationHudCompositeInterface_Access is access all GameNotificationHudCompositeInterface'Class;
   type GameNotificationHudCompositeInterface_Access_Array is array (Natural range <>) of GameNotificationHudCompositeInterface_Access;
   type GameNotificationHudCompositeInterface_Access_Array_Access is access all GameNotificationHudCompositeInterface_Access_Array;
   function getGameNotificationHud (This : in out GameNotificationHudCompositeInterface) return GameNotificationHud_Access is abstract;

end org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHudCompositeInterface_Package;


