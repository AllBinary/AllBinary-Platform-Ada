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

with AllBinary_Java;
limited with org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;
package org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References is
   type ProgressRunnable_Access is access all org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package.ProgressRunnable'Class;
   type ProgressRunnable_Access_Array is array (Natural range <>) of ProgressRunnable_Access;
   type ProgressRunnable_Access_Array_Access is access all ProgressRunnable_Access_Array;
   type ProgressRunnable_Access_Array_Access_Array is array (Natural range <>) of ProgressRunnable_Access_Array_Access;
   type ProgressRunnable_Access_Array_Access_Array_Access is access all ProgressRunnable_Access_Array_Access_Array;
   type ProgressRunnable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressRunnable_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressRunnable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressRunnable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressRunnable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressRunnable_Access_Array_Access is (if Value /= null and then Value.all in ProgressRunnable_Access_Array_Object'Class then ProgressRunnable_Access_Array_Object'Class (Value.all).Value else null);
   type ProgressRunnable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ProgressRunnable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ProgressRunnable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ProgressRunnable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ProgressRunnable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ProgressRunnable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ProgressRunnable_Access_Array_Access_Array_Object'Class then ProgressRunnable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References;

with org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.app.Activity_Package;
with android.app.Activity_Package_References;
limited with org.allbinary.android.activity.SimpleProgressActivityInterface_Package;
with org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References;
with org.allbinary.thread.ARunnable_Package; use org.allbinary.thread.ARunnable_Package;
limited with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package_References;

package org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package is

   package Activity_Package renames Standard.android.app.Activity_Package;
   package SimpleProgressActivityInterface_Package renames Standard.org.allbinary.android.activity.SimpleProgressActivityInterface_Package;
   package ARunnable_Package renames Standard.org.allbinary.thread.ARunnable_Package;
   package Reference_Types is
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
   subtype SimpleProgressActivityInterface_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access;
   use type SimpleProgressActivityInterface_Access;
   subtype SimpleProgressActivityInterface_Access_Array is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array;
   use type SimpleProgressActivityInterface_Access_Array;
   subtype SimpleProgressActivityInterface_Access_Array_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access;
   use type SimpleProgressActivityInterface_Access_Array_Access;
   subtype SimpleProgressActivityInterface_Access_Array_Access_Array is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access_Array;
   use type SimpleProgressActivityInterface_Access_Array_Access_Array;
   subtype SimpleProgressActivityInterface_Access_Array_Access_Array_Access is org.allbinary.android.activity.SimpleProgressActivityInterface_Package_References.SimpleProgressActivityInterface_Access_Array_Access_Array_Access;
   use type SimpleProgressActivityInterface_Access_Array_Access_Array_Access;
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


   subtype ProgressRunnable_Access is org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.ProgressRunnable_Access;
   function "=" (Left, Right : ProgressRunnable_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References."=";
   subtype ProgressRunnable_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.ProgressRunnable_Access_Array;
   function "=" (Left, Right : ProgressRunnable_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References."=";
   subtype ProgressRunnable_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.ProgressRunnable_Access_Array_Access;
   function "=" (Left, Right : ProgressRunnable_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References."=";
   function Java_Box (Value : ProgressRunnable_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.Java_Box;
   function Java_Unbox_ProgressRunnable_Access_Array (Value : access Java_Object'Class) return ProgressRunnable_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.Java_Unbox_ProgressRunnable_Access_Array;
   subtype ProgressRunnable_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.ProgressRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References."=";
   subtype ProgressRunnable_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.ProgressRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References."=";
   function Java_Box (Value : ProgressRunnable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.Java_Box;
   function Java_Unbox_ProgressRunnable_Access_Array_Access_Array (Value : access Java_Object'Class) return ProgressRunnable_Access_Array_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package_References.Java_Unbox_ProgressRunnable_Access_Array_Access_Array;

   type ProgressRunnable is new ARunnable with record
      midletActivity : SimpleProgressActivityInterface_Access;
      progressCanvas : ProgressCanvas_Access;
   end record;

   procedure Initialize (This : in out ProgressRunnable'Class; midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class);
   function Create (midletActivity_Param : access Activity_Package.Activity'Class; progressCanvas_Param : access ProgressCanvas_Package.ProgressCanvas'Class) return ProgressRunnable_Access;
   procedure run (This : in out ProgressRunnable);

end org.allbinary.graphics.canvas.transition.progress.ProgressRunnable_Package;


