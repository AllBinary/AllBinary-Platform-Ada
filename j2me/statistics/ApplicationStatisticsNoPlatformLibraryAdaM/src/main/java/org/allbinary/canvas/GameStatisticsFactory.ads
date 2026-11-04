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

limited with org.allbinary.canvas.GameStatisticsFactory_Package;
package org.allbinary.canvas.GameStatisticsFactory_Package_References is
   type GameStatisticsFactory_Access is access all org.allbinary.canvas.GameStatisticsFactory_Package.GameStatisticsFactory'Class;
   type GameStatisticsFactory_Access_Array is array (Natural range <>) of GameStatisticsFactory_Access;
   type GameStatisticsFactory_Access_Array_Access is access all GameStatisticsFactory_Access_Array;
   type GameStatisticsFactory_Access_Array_Access_Array is array (Natural range <>) of GameStatisticsFactory_Access_Array_Access;
   type GameStatisticsFactory_Access_Array_Access_Array_Access is access all GameStatisticsFactory_Access_Array_Access_Array;
end org.allbinary.canvas.GameStatisticsFactory_Package_References;

with org.allbinary.canvas.GameStatisticsFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.BaseGameStatistics_Package; use org.allbinary.canvas.BaseGameStatistics_Package;

package org.allbinary.canvas.GameStatisticsFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameStatisticsFactory_Access is org.allbinary.canvas.GameStatisticsFactory_Package_References.GameStatisticsFactory_Access;
   function "=" (Left, Right : GameStatisticsFactory_Access) return Boolean renames org.allbinary.canvas.GameStatisticsFactory_Package_References."=";
   subtype GameStatisticsFactory_Access_Array is org.allbinary.canvas.GameStatisticsFactory_Package_References.GameStatisticsFactory_Access_Array;
   function "=" (Left, Right : GameStatisticsFactory_Access_Array) return Boolean renames org.allbinary.canvas.GameStatisticsFactory_Package_References."=";
   subtype GameStatisticsFactory_Access_Array_Access is org.allbinary.canvas.GameStatisticsFactory_Package_References.GameStatisticsFactory_Access_Array_Access;
   function "=" (Left, Right : GameStatisticsFactory_Access_Array_Access) return Boolean renames org.allbinary.canvas.GameStatisticsFactory_Package_References."=";
   subtype GameStatisticsFactory_Access_Array_Access_Array is org.allbinary.canvas.GameStatisticsFactory_Package_References.GameStatisticsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameStatisticsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.GameStatisticsFactory_Package_References."=";
   subtype GameStatisticsFactory_Access_Array_Access_Array_Access is org.allbinary.canvas.GameStatisticsFactory_Package_References.GameStatisticsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameStatisticsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.GameStatisticsFactory_Package_References."=";

   type GameStatisticsFactory is new BaseGameStatistics with null record;
   instance : GameStatisticsFactory_Access;

   procedure Initialize (This : in out GameStatisticsFactory'Class);
   function Create return GameStatisticsFactory_Access;
   function getInstance return GameStatisticsFactory_Access;
   procedure add (This : in out GameStatisticsFactory; string_Id : Unbounded_String);
   function toString (This : in out GameStatisticsFactory) return Unbounded_String;

end org.allbinary.canvas.GameStatisticsFactory_Package;


