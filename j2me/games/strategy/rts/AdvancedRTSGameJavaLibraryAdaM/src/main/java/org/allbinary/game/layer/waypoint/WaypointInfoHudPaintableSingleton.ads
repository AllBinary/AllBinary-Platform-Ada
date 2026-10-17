-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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

package org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package is


   type WaypointInfoHudPaintableSingleton is tagged;
   type WaypointInfoHudPaintableSingleton_Access is access all WaypointInfoHudPaintableSingleton'Class;
   type WaypointInfoHudPaintableSingleton_Access_Array is array (Natural range <>) of WaypointInfoHudPaintableSingleton_Access;
   type WaypointInfoHudPaintableSingleton_Access_Array_Access is access all WaypointInfoHudPaintableSingleton_Access_Array;

   type WaypointInfoHudPaintableSingleton is new Java_Object with null record;
   instance : WaypointInfoHudPaintable_Access;

   procedure Initialize (This : in out WaypointInfoHudPaintableSingleton'Class);
   function Create return WaypointInfoHudPaintableSingleton_Access;
   function getInstance return WaypointInfoHudPaintable_Access;
   procedure getInstance;

end org.allbinary.game.layer.waypoint.WaypointInfoHudPaintableSingleton_Package;


