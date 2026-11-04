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

limited with org.allbinary.canvas.RunnableCanvasRefreshHelper_Package;
package org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References is
   type RunnableCanvasRefreshHelper_Access is access all org.allbinary.canvas.RunnableCanvasRefreshHelper_Package.RunnableCanvasRefreshHelper'Class;
   type RunnableCanvasRefreshHelper_Access_Array is array (Natural range <>) of RunnableCanvasRefreshHelper_Access;
   type RunnableCanvasRefreshHelper_Access_Array_Access is access all RunnableCanvasRefreshHelper_Access_Array;
   type RunnableCanvasRefreshHelper_Access_Array_Access_Array is array (Natural range <>) of RunnableCanvasRefreshHelper_Access_Array_Access;
   type RunnableCanvasRefreshHelper_Access_Array_Access_Array_Access is access all RunnableCanvasRefreshHelper_Access_Array_Access_Array;
end org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References;

with org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.canvas.RunnableCanvasRefreshHelper_Package is

   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package Reference_Types is
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   use type MyCanvas_Access;
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   use type MyCanvas_Access_Array;
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   use type MyCanvas_Access_Array_Access;
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   use type MyCanvas_Access_Array_Access_Array;
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   use type MyCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RunnableCanvasRefreshHelper_Access is org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References.RunnableCanvasRefreshHelper_Access;
   function "=" (Left, Right : RunnableCanvasRefreshHelper_Access) return Boolean renames org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References."=";
   subtype RunnableCanvasRefreshHelper_Access_Array is org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References.RunnableCanvasRefreshHelper_Access_Array;
   function "=" (Left, Right : RunnableCanvasRefreshHelper_Access_Array) return Boolean renames org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References."=";
   subtype RunnableCanvasRefreshHelper_Access_Array_Access is org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References.RunnableCanvasRefreshHelper_Access_Array_Access;
   function "=" (Left, Right : RunnableCanvasRefreshHelper_Access_Array_Access) return Boolean renames org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References."=";
   subtype RunnableCanvasRefreshHelper_Access_Array_Access_Array is org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References.RunnableCanvasRefreshHelper_Access_Array_Access_Array;
   function "=" (Left, Right : RunnableCanvasRefreshHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References."=";
   subtype RunnableCanvasRefreshHelper_Access_Array_Access_Array_Access is org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References.RunnableCanvasRefreshHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RunnableCanvasRefreshHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.RunnableCanvasRefreshHelper_Package_References."=";

   type RunnableCanvasRefreshHelper is new Processor with record
      runnableCanvas : MyCanvas_Access;
   end record;

   procedure Initialize (This : in out RunnableCanvasRefreshHelper'Class; runnableCanvas_Param : access MyCanvas_Package.MyCanvas'Class);
   function Create (runnableCanvas_Param : access MyCanvas_Package.MyCanvas'Class) return RunnableCanvasRefreshHelper_Access;
   procedure process (This : in out RunnableCanvasRefreshHelper);

end org.allbinary.canvas.RunnableCanvasRefreshHelper_Package;


