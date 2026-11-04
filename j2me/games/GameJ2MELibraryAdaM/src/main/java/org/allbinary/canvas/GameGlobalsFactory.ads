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

limited with org.allbinary.canvas.GameGlobalsFactory_Package;
package org.allbinary.canvas.GameGlobalsFactory_Package_References is
   type GameGlobalsFactory_Access is access all org.allbinary.canvas.GameGlobalsFactory_Package.GameGlobalsFactory'Class;
   type GameGlobalsFactory_Access_Array is array (Natural range <>) of GameGlobalsFactory_Access;
   type GameGlobalsFactory_Access_Array_Access is access all GameGlobalsFactory_Access_Array;
   type GameGlobalsFactory_Access_Array_Access_Array is array (Natural range <>) of GameGlobalsFactory_Access_Array_Access;
   type GameGlobalsFactory_Access_Array_Access_Array_Access is access all GameGlobalsFactory_Access_Array_Access_Array;
end org.allbinary.canvas.GameGlobalsFactory_Package_References;

with org.allbinary.canvas.GameGlobalsFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;

package org.allbinary.canvas.GameGlobalsFactory_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameGlobalsFactory_Access is org.allbinary.canvas.GameGlobalsFactory_Package_References.GameGlobalsFactory_Access;
   function "=" (Left, Right : GameGlobalsFactory_Access) return Boolean renames org.allbinary.canvas.GameGlobalsFactory_Package_References."=";
   subtype GameGlobalsFactory_Access_Array is org.allbinary.canvas.GameGlobalsFactory_Package_References.GameGlobalsFactory_Access_Array;
   function "=" (Left, Right : GameGlobalsFactory_Access_Array) return Boolean renames org.allbinary.canvas.GameGlobalsFactory_Package_References."=";
   subtype GameGlobalsFactory_Access_Array_Access is org.allbinary.canvas.GameGlobalsFactory_Package_References.GameGlobalsFactory_Access_Array_Access;
   function "=" (Left, Right : GameGlobalsFactory_Access_Array_Access) return Boolean renames org.allbinary.canvas.GameGlobalsFactory_Package_References."=";
   subtype GameGlobalsFactory_Access_Array_Access_Array is org.allbinary.canvas.GameGlobalsFactory_Package_References.GameGlobalsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameGlobalsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.GameGlobalsFactory_Package_References."=";
   subtype GameGlobalsFactory_Access_Array_Access_Array_Access is org.allbinary.canvas.GameGlobalsFactory_Package_References.GameGlobalsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameGlobalsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.GameGlobalsFactory_Package_References."=";

   type GameGlobalsFactory is new Java_Object with record
      newCanvas : Boolean;
      newDisplaybleTime : Long_Long_Integer;
      point : GPoint_Access;
   end record;
   instance : GameGlobalsFactory_Access;

   procedure Initialize (This : in out GameGlobalsFactory'Class);
   function Create return GameGlobalsFactory_Access;
   function getInstance return GameGlobalsFactory_Access;

end org.allbinary.canvas.GameGlobalsFactory_Package;


