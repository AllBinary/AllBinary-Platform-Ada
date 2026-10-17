-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.game.layer.WaypointPathRunnableBase_Package; use org.allbinary.game.layer.WaypointPathRunnableBase_Package;

package org.allbinary.game.layer.WaypointPathRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type WaypointPathRunnable is tagged;
   type WaypointPathRunnable_Access is access all WaypointPathRunnable'Class;
   type WaypointPathRunnable_Access_Array is array (Natural range <>) of WaypointPathRunnable_Access;
   type WaypointPathRunnable_Access_Array_Access is access all WaypointPathRunnable_Access_Array;

   type WaypointPathRunnable is new WaypointPathRunnableBase with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out WaypointPathRunnable'Class);
   function Create return WaypointPathRunnable_Access;
   procedure run (This : in out WaypointPathRunnable);
   function isDone (This : in out WaypointPathRunnable) return Boolean;
   procedure isDone (This : in out WaypointPathRunnable);

end org.allbinary.game.layer.WaypointPathRunnable_Package;


