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

package org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package is


   type MyCanvasEventListener is interface;
   type MyCanvasEventListener_Access is access all MyCanvasEventListener'Class;
   type MyCanvasEventListener_Access_Array is array (Natural range <>) of MyCanvasEventListener_Access;
   type MyCanvasEventListener_Access_Array_Access is access all MyCanvasEventListener_Access_Array;
   procedure delete (This : in out MyCanvasEventListener; evt : MyCanvasEvent_Access) is abstract;
   procedure duplicate (This : in out MyCanvasEventListener; evt : MyCanvasEvent_Access) is abstract;
   procedure select_Id (This : in out MyCanvasEventListener; evt : MyCanvasEvent_Access) is abstract;
   procedure rotate (This : in out MyCanvasEventListener; evt : MyCanvasEvent_Access) is abstract;
   procedure explode (This : in out MyCanvasEventListener; evt : MyCanvasEvent_Access) is abstract;
   procedure autoExplode (This : in out MyCanvasEventListener; evt : MyCanvasEvent_Access) is abstract;
   procedure center (This : in out MyCanvasEventListener; evt : MyCanvasEvent_Access) is abstract;

end org.allbinary.graphics.j2me.workarea.canvas.event.MyCanvasEventListener_Package;


