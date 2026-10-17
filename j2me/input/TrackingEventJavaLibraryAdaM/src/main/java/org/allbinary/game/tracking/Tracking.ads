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

package org.allbinary.game.tracking.Tracking_Package is


   type Tracking is tagged;
   type Tracking_Access is access all Tracking'Class;
   type Tracking_Access_Array is array (Natural range <>) of Tracking_Access;
   type Tracking_Access_Array_Access is access all Tracking_Access_Array;

   type Tracking is new Java_Object with null record;

   procedure Initialize (This : in out Tracking'Class);
   function Create return Tracking_Access;
   procedure paint (This : in out Tracking; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.game.tracking.Tracking_Package;


