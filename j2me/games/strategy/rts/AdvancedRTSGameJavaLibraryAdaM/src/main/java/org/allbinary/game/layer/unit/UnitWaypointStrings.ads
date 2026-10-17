-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package org.allbinary.game.layer.unit.UnitWaypointStrings_Package is

   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type UnitWaypointStrings is tagged;
   type UnitWaypointStrings_Access is access all UnitWaypointStrings'Class;
   type UnitWaypointStrings_Access_Array is array (Natural range <>) of UnitWaypointStrings_Access;
   type UnitWaypointStrings_Access_Array_Access is access all UnitWaypointStrings_Access_Array;

   type UnitWaypointStrings is new Java_Object with record
      WANDERING : Unbounded_String;
      THINKING : Unbounded_String;
      THINKING_ABOUT_TARGET : Unbounded_String;
      TARGET : Unbounded_String;
      KILL : Unbounded_String;
      STOP : Unbounded_String;
      WAYPOINT_DESTROYED_SHORT : Unbounded_String;
      WAYPOINT_DESTROYED : Unbounded_String;
      ALL_VISITED_SHORT : Unbounded_String;
      ALL_VISITED : Unbounded_String;
      ALREADY_THERE_SHORT : Unbounded_String;
      ALREADY_THERE : Unbounded_String;
      NEXT_PATH_NODE : Unbounded_String;
   end record;
   instance : UnitWaypointStrings_Access;

   procedure Initialize (This : in out UnitWaypointStrings'Class);
   function Create return UnitWaypointStrings_Access;
   function getInstance return UnitWaypointStrings_Access;
   procedure getInstance;

end org.allbinary.game.layer.unit.UnitWaypointStrings_Package;


