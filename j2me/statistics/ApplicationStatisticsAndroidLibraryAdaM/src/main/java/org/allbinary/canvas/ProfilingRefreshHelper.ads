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
with android.view.View_Package; use android.view.View_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.canvas.AndroidGameStatistics_Package; use org.allbinary.canvas.AndroidGameStatistics_Package;

package org.allbinary.canvas.ProfilingRefreshHelper_Package is

   package View_Package renames Standard.android.view.View_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type ProfilingRefreshHelper is tagged;
   type ProfilingRefreshHelper_Access is access all ProfilingRefreshHelper'Class;
   type ProfilingRefreshHelper_Access_Array is array (Natural range <>) of ProfilingRefreshHelper_Access;
   type ProfilingRefreshHelper_Access_Array_Access is access all ProfilingRefreshHelper_Access_Array;

   type ProfilingRefreshHelper is new AndroidGameStatistics with record
      firstTime : Boolean;
      bestFrameProcessingTime : Integer;
      worstFrameProcessingTime : Integer;
      frameProcessingTimeElapsed : Long_Long_Integer;
   end record;
   instance : ProfilingRefreshHelper_Access;

   procedure Initialize (This : in out ProfilingRefreshHelper'Class);
   function Create return ProfilingRefreshHelper_Access;
   function getInstance return AndroidGameStatistics_Access;
   procedure getInstance;
   procedure initView (This : in out ProfilingRefreshHelper; view : View_Access);
   procedure nextFrame (This : in out ProfilingRefreshHelper);
   function toString (This : in out ProfilingRefreshHelper) return Unbounded_String;
   procedure toString (This : in out ProfilingRefreshHelper);

end org.allbinary.canvas.ProfilingRefreshHelper_Package;


