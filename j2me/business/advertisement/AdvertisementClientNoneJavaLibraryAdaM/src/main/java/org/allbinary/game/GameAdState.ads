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
with org.allbinary.business.advertisement.GameAdStateBase_Package; use org.allbinary.business.advertisement.GameAdStateBase_Package;
with org.allbinary.business.advertisement.AdConfiguration_Package; use org.allbinary.business.advertisement.AdConfiguration_Package;
with org.allbinary.input.event.VirtualKeyboardEvent_Package; use org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package; use org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package; use org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;

package org.allbinary.game.GameAdState_Package is

   package GameAdStateBase_Package renames Standard.org.allbinary.business.advertisement.GameAdStateBase_Package;
   package AdConfiguration_Package renames Standard.org.allbinary.business.advertisement.AdConfiguration_Package;
   package VirtualKeyboardEvent_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEvent_Package;
   package VirtualKeyboardEventHandler_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
   package VirtualKeyboardEventListenerInterface_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;

   type GameAdState is tagged;
   type GameAdState_Access is access all GameAdState'Class;
   type GameAdState_Access_Array is array (Natural range <>) of GameAdState_Access;
   type GameAdState_Access_Array_Access is access all GameAdState_Access_Array;

   type GameAdState is new GameAdStateBase and VirtualKeyboardEventListenerInterface with null record;

   procedure Initialize (This : in out GameAdState'Class; adConfiguration : AdConfiguration_Access);
   function Create (adConfiguration : AdConfiguration_Access) return GameAdState_Access;
   procedure onVirtualKeyboardEvent (This : in out GameAdState; virtualKeyboardEvent : VirtualKeyboardEvent_Access);

end org.allbinary.game.GameAdState_Package;


