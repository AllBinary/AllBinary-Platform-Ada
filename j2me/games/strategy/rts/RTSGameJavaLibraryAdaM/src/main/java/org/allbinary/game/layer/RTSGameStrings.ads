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

package org.allbinary.game.layer.RTSGameStrings_Package is


   type RTSGameStrings is tagged;
   type RTSGameStrings_Access is access all RTSGameStrings'Class;
   type RTSGameStrings_Access_Array is array (Natural range <>) of RTSGameStrings_Access;
   type RTSGameStrings_Access_Array_Access is access all RTSGameStrings_Access_Array;
   type RTSGameStrings_Access_Array_Access_Array is array (Natural range <>) of RTSGameStrings_Access_Array_Access;
   type RTSGameStrings_Access_Array_Access_Array_Access is access all RTSGameStrings_Access_Array_Access_Array;

   type RTSGameStrings is new Java_Object with record
      DRAG_TO_SPOT : Unbounded_String;
      NOT_YOURS : Unbounded_String;
      NEW_UNIT : Unbounded_String;
      NEW_WAYPOINT : Unbounded_String;
      BUILDING : Unbounded_String;
      UPGRADE : Unbounded_String;
      DOWNGRADE : Unbounded_String;
      NO_MONEY : Unbounded_String;
      SPOT_TAKEN : Unbounded_String;
      BUILDING_COLLISION : Unbounded_String;
      STRUCTURE_TO_CLOSE : Unbounded_String;
      MAP_EDGE : Unbounded_String;
      ROAD_COLLISION : Unbounded_String;
      SELECT_BUILD_SPOT : Unbounded_String;
      BUILD_ON_PATH : Unbounded_String;
      DRAGGABLE : Unbounded_String;
   end record;
   instance : RTSGameStrings_Access;

   procedure Initialize (This : in out RTSGameStrings'Class);
   function Create return RTSGameStrings_Access;
   function getInstance return RTSGameStrings_Access;

end org.allbinary.game.layer.RTSGameStrings_Package;


