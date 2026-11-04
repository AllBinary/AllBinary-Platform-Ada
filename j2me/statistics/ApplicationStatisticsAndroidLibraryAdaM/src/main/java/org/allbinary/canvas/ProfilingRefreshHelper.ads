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

limited with org.allbinary.canvas.ProfilingRefreshHelper_Package;
package org.allbinary.canvas.ProfilingRefreshHelper_Package_References is
   type ProfilingRefreshHelper_Access is access all org.allbinary.canvas.ProfilingRefreshHelper_Package.ProfilingRefreshHelper'Class;
   type ProfilingRefreshHelper_Access_Array is array (Natural range <>) of ProfilingRefreshHelper_Access;
   type ProfilingRefreshHelper_Access_Array_Access is access all ProfilingRefreshHelper_Access_Array;
   type ProfilingRefreshHelper_Access_Array_Access_Array is array (Natural range <>) of ProfilingRefreshHelper_Access_Array_Access;
   type ProfilingRefreshHelper_Access_Array_Access_Array_Access is access all ProfilingRefreshHelper_Access_Array_Access_Array;
end org.allbinary.canvas.ProfilingRefreshHelper_Package_References;

with org.allbinary.canvas.ProfilingRefreshHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.view.View_Package;
with android.view.View_Package_References;
with org.allbinary.canvas.AndroidGameStatistics_Package; use org.allbinary.canvas.AndroidGameStatistics_Package;

package org.allbinary.canvas.ProfilingRefreshHelper_Package is

   package View_Package renames Standard.android.view.View_Package;
   package Reference_Types is
   subtype View_Access is android.view.View_Package_References.View_Access;
   use type View_Access;
   subtype View_Access_Array is android.view.View_Package_References.View_Access_Array;
   use type View_Access_Array;
   subtype View_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access;
   use type View_Access_Array_Access;
   subtype View_Access_Array_Access_Array is android.view.View_Package_References.View_Access_Array_Access_Array;
   use type View_Access_Array_Access_Array;
   subtype View_Access_Array_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access_Array_Access;
   use type View_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ProfilingRefreshHelper_Access is org.allbinary.canvas.ProfilingRefreshHelper_Package_References.ProfilingRefreshHelper_Access;
   function "=" (Left, Right : ProfilingRefreshHelper_Access) return Boolean renames org.allbinary.canvas.ProfilingRefreshHelper_Package_References."=";
   subtype ProfilingRefreshHelper_Access_Array is org.allbinary.canvas.ProfilingRefreshHelper_Package_References.ProfilingRefreshHelper_Access_Array;
   function "=" (Left, Right : ProfilingRefreshHelper_Access_Array) return Boolean renames org.allbinary.canvas.ProfilingRefreshHelper_Package_References."=";
   subtype ProfilingRefreshHelper_Access_Array_Access is org.allbinary.canvas.ProfilingRefreshHelper_Package_References.ProfilingRefreshHelper_Access_Array_Access;
   function "=" (Left, Right : ProfilingRefreshHelper_Access_Array_Access) return Boolean renames org.allbinary.canvas.ProfilingRefreshHelper_Package_References."=";
   subtype ProfilingRefreshHelper_Access_Array_Access_Array is org.allbinary.canvas.ProfilingRefreshHelper_Package_References.ProfilingRefreshHelper_Access_Array_Access_Array;
   function "=" (Left, Right : ProfilingRefreshHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.ProfilingRefreshHelper_Package_References."=";
   subtype ProfilingRefreshHelper_Access_Array_Access_Array_Access is org.allbinary.canvas.ProfilingRefreshHelper_Package_References.ProfilingRefreshHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProfilingRefreshHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.ProfilingRefreshHelper_Package_References."=";

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
   procedure initView (This : in out ProfilingRefreshHelper; view_Param : access View_Package.View'Class);
   procedure nextFrame (This : in out ProfilingRefreshHelper);
   function toString (This : in out ProfilingRefreshHelper) return Unbounded_String;

end org.allbinary.canvas.ProfilingRefreshHelper_Package;


