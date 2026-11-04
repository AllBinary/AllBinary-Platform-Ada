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

limited with org.allbinary.game.input.RTSPlayerGameInputProcessor_Package;
package org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References is
   type RTSPlayerGameInputProcessor_Access is access all org.allbinary.game.input.RTSPlayerGameInputProcessor_Package.RTSPlayerGameInputProcessor'Class;
   type RTSPlayerGameInputProcessor_Access_Array is array (Natural range <>) of RTSPlayerGameInputProcessor_Access;
   type RTSPlayerGameInputProcessor_Access_Array_Access is access all RTSPlayerGameInputProcessor_Access_Array;
   type RTSPlayerGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of RTSPlayerGameInputProcessor_Access_Array_Access;
   type RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access is access all RTSPlayerGameInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References;

with org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
limited with org.allbinary.game.input.RTSPlayerGameInput_Package;
with org.allbinary.game.input.RTSPlayerGameInput_Package_References;

package org.allbinary.game.input.RTSPlayerGameInputProcessor_Package is

   package Reference_Types is
   subtype RTSPlayerGameInput_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access;
   use type RTSPlayerGameInput_Access;
   subtype RTSPlayerGameInput_Access_Array is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array;
   use type RTSPlayerGameInput_Access_Array;
   subtype RTSPlayerGameInput_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access;
   use type RTSPlayerGameInput_Access_Array_Access;
   subtype RTSPlayerGameInput_Access_Array_Access_Array is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access_Array;
   use type RTSPlayerGameInput_Access_Array_Access_Array;
   subtype RTSPlayerGameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInput_Package_References.RTSPlayerGameInput_Access_Array_Access_Array_Access;
   use type RTSPlayerGameInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RTSPlayerGameInputProcessor_Access is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   subtype RTSPlayerGameInputProcessor_Access_Array is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access_Array;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   subtype RTSPlayerGameInputProcessor_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   subtype RTSPlayerGameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";
   subtype RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References.RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSPlayerGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.RTSPlayerGameInputProcessor_Package_References."=";

   type RTSPlayerGameInputProcessor is new GameInputProcessor with record
      rtsPlayerGameInput : RTSPlayerGameInput_Access;
   end record;

   procedure Initialize (This : in out RTSPlayerGameInputProcessor'Class; rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class);
   function Create (rtsPlayerGameInput_Param : access RTSPlayerGameInput_Package.RTSPlayerGameInput'Class) return RTSPlayerGameInputProcessor_Access;

end org.allbinary.game.input.RTSPlayerGameInputProcessor_Package;


