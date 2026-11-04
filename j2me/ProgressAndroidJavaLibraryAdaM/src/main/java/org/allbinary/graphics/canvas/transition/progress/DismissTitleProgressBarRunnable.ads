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

limited with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;
package org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References is
   type DismissTitleProgressBarRunnable_Access is access all org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package.DismissTitleProgressBarRunnable'Class;
   type DismissTitleProgressBarRunnable_Access_Array is array (Natural range <>) of DismissTitleProgressBarRunnable_Access;
   type DismissTitleProgressBarRunnable_Access_Array_Access is access all DismissTitleProgressBarRunnable_Access_Array;
   type DismissTitleProgressBarRunnable_Access_Array_Access_Array is array (Natural range <>) of DismissTitleProgressBarRunnable_Access_Array_Access;
   type DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is access all DismissTitleProgressBarRunnable_Access_Array_Access_Array;
end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;

with org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;
limited with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References;

package org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Activity_Package renames Standard.android.app.Activity_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Activity_Access is android.app.Activity_Package_References.Activity_Access;
   use type Activity_Access;
   subtype Activity_Access_Array is android.app.Activity_Package_References.Activity_Access_Array;
   use type Activity_Access_Array;
   subtype Activity_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access;
   use type Activity_Access_Array_Access;
   subtype Activity_Access_Array_Access_Array is android.app.Activity_Package_References.Activity_Access_Array_Access_Array;
   use type Activity_Access_Array_Access_Array;
   subtype Activity_Access_Array_Access_Array_Access is android.app.Activity_Package_References.Activity_Access_Array_Access_Array_Access;
   use type Activity_Access_Array_Access_Array_Access;
   subtype ProgressCanvas_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access;
   use type ProgressCanvas_Access;
   subtype ProgressCanvas_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array;
   use type ProgressCanvas_Access_Array;
   subtype ProgressCanvas_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access;
   use type ProgressCanvas_Access_Array_Access;
   subtype ProgressCanvas_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array;
   use type ProgressCanvas_Access_Array_Access_Array;
   subtype ProgressCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References.ProgressCanvas_Access_Array_Access_Array_Access;
   use type ProgressCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DismissTitleProgressBarRunnable_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";
   subtype DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References.DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DismissTitleProgressBarRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package_References."=";

   type DismissTitleProgressBarRunnable is new ProgressRunnable with record
      logUtil : LogUtil_Access;
      ZOOM_OUT_AND_IN : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out DismissTitleProgressBarRunnable'Class; midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class);
   function Create (midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class) return DismissTitleProgressBarRunnable_Access;
   procedure run (This : in out DismissTitleProgressBarRunnable);

end org.allbinary.graphics.canvas.transition.progress.DismissTitleProgressBarRunnable_Package;


