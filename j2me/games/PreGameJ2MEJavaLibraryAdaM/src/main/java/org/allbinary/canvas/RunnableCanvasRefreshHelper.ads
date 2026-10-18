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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.canvas.RunnableCanvasRefreshHelper_Package is

   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;

   type RunnableCanvasRefreshHelper is tagged;
   type RunnableCanvasRefreshHelper_Access is access all RunnableCanvasRefreshHelper'Class;
   type RunnableCanvasRefreshHelper_Access_Array is array (Natural range <>) of RunnableCanvasRefreshHelper_Access;
   type RunnableCanvasRefreshHelper_Access_Array_Access is access all RunnableCanvasRefreshHelper_Access_Array;
   type RunnableCanvasRefreshHelper_Access_Array_Access_Array is array (Natural range <>) of RunnableCanvasRefreshHelper_Access_Array_Access;
   type RunnableCanvasRefreshHelper_Access_Array_Access_Array_Access is access all RunnableCanvasRefreshHelper_Access_Array_Access_Array;

   type RunnableCanvasRefreshHelper is new Processor with record
      runnableCanvas : MyCanvas_Access;
   end record;

   procedure Initialize (This : in out RunnableCanvasRefreshHelper'Class; runnableCanvas_Param : access MyCanvas_Package.MyCanvas'Class);
   function Create (runnableCanvas_Param : access MyCanvas_Package.MyCanvas'Class) return RunnableCanvasRefreshHelper_Access;
   procedure process (This : in out RunnableCanvasRefreshHelper);

end org.allbinary.canvas.RunnableCanvasRefreshHelper_Package;


