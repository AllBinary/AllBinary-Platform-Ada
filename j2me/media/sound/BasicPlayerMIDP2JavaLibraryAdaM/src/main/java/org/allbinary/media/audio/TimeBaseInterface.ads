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
with javax.microedition.media.TimeBase_Package; use javax.microedition.media.TimeBase_Package;

package org.allbinary.media.audio.TimeBaseInterface_Package is

   package TimeBase_Package renames Standard.javax.microedition.media.TimeBase_Package;

   type TimeBaseInterface is interface;
   type TimeBaseInterface_Access is access all TimeBaseInterface'Class;
   type TimeBaseInterface_Access_Array is array (Natural range <>) of TimeBaseInterface_Access;
   type TimeBaseInterface_Access_Array_Access is access all TimeBaseInterface_Access_Array;
   type TimeBaseInterface_Access_Array_Access_Array is array (Natural range <>) of TimeBaseInterface_Access_Array_Access;
   type TimeBaseInterface_Access_Array_Access_Array_Access is access all TimeBaseInterface_Access_Array_Access_Array;
   function getTimeBase (This : in out TimeBaseInterface) return TimeBase_Access is abstract;
   procedure setTimeBase (This : in out TimeBaseInterface; timeBase_Param : access TimeBase_Package.TimeBase'Class) is abstract;

end org.allbinary.media.audio.TimeBaseInterface_Package;


