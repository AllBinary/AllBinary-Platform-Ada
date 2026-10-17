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
with org.allbinary.graphics.ScreenEmptyListener_Package; use org.allbinary.graphics.ScreenEmptyListener_Package;
with org.allbinary.graphics.ScreenListenerInterface_Package; use org.allbinary.graphics.ScreenListenerInterface_Package;

package org.allbinary.graphics.ScreenListenerHandler_Package is


   type ScreenListenerHandler is tagged;
   type ScreenListenerHandler_Access is access all ScreenListenerHandler'Class;
   type ScreenListenerHandler_Access_Array is array (Natural range <>) of ScreenListenerHandler_Access;
   type ScreenListenerHandler_Access_Array_Access is access all ScreenListenerHandler_Access_Array;

   type ScreenListenerHandler is new Java_Object with record
      screenListenerInterface : ScreenListenerInterface_Access;
   end record;
   instance : ScreenListenerHandler_Access;

   procedure Initialize (This : in out ScreenListenerHandler'Class);
   function Create return ScreenListenerHandler_Access;
   function getInstance return ScreenListenerHandler_Access;
   procedure setListener (This : in out ScreenListenerHandler; screenListenerInterface_Param : access ScreenListenerInterface_Package.ScreenListenerInterface'Class);
   procedure fireWithState (This : in out ScreenListenerHandler; isFullScreen : Boolean);
   procedure fire (This : in out ScreenListenerHandler);

end org.allbinary.graphics.ScreenListenerHandler_Package;


