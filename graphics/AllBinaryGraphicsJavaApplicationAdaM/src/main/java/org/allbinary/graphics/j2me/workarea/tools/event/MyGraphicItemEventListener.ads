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
with org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package; use org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEvent_Package;

package org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package is


   type MyGraphicItemEventListener is interface;
   type MyGraphicItemEventListener_Access is access all MyGraphicItemEventListener'Class;
   type MyGraphicItemEventListener_Access_Array is array (Natural range <>) of MyGraphicItemEventListener_Access;
   type MyGraphicItemEventListener_Access_Array_Access is access all MyGraphicItemEventListener_Access_Array;
   procedure delete (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;
   procedure duplicate (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;
   procedure rotate (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;
   procedure highlight (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;
   procedure deselect (This : in out MyGraphicItemEventListener; evt_Param : access MyGraphicItemEvent_Package.MyGraphicItemEvent'Class) is abstract;

end org.allbinary.graphics.j2me.workarea.tools.event.MyGraphicItemEventListener_Package;


