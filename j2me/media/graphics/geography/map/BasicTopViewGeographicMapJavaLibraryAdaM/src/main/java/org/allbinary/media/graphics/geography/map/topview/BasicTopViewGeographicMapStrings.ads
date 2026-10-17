-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package is


   type BasicTopViewGeographicMapStrings is tagged;
   type BasicTopViewGeographicMapStrings_Access is access all BasicTopViewGeographicMapStrings'Class;
   type BasicTopViewGeographicMapStrings_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapStrings_Access;
   type BasicTopViewGeographicMapStrings_Access_Array_Access is access all BasicTopViewGeographicMapStrings_Access_Array;

   type BasicTopViewGeographicMapStrings is new Java_Object with record
      DEFAULT : Unbounded_String;
      OTHER : Unbounded_String;
      WALL : Unbounded_String;
      OFF_MAP : Unbounded_String;
      FLOOR : Unbounded_String;
      DOOR : Unbounded_String;
      STAIRS_UP : Unbounded_String;
      STAIRS_DOWN : Unbounded_String;
   end record;
   instance : BasicTopViewGeographicMapStrings_Access;

   procedure Initialize (This : in out BasicTopViewGeographicMapStrings'Class);
   function Create return BasicTopViewGeographicMapStrings_Access;
   function getInstance return BasicTopViewGeographicMapStrings_Access;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapStrings_Package;


