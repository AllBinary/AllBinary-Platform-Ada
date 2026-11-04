-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

limited with org.allbinary.android.activity.NullProgressActivity_Package;
package org.allbinary.android.activity.NullProgressActivity_Package_References is
   type NullProgressActivity_Access is access all org.allbinary.android.activity.NullProgressActivity_Package.NullProgressActivity'Class;
   type NullProgressActivity_Access_Array is array (Natural range <>) of NullProgressActivity_Access;
   type NullProgressActivity_Access_Array_Access is access all NullProgressActivity_Access_Array;
   type NullProgressActivity_Access_Array_Access_Array is array (Natural range <>) of NullProgressActivity_Access_Array_Access;
   type NullProgressActivity_Access_Array_Access_Array_Access is access all NullProgressActivity_Access_Array_Access_Array;
end org.allbinary.android.activity.NullProgressActivity_Package_References;

with org.allbinary.android.activity.NullProgressActivity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.android.activity.NullProgressActivity_Package is

   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullProgressActivity_Access is org.allbinary.android.activity.NullProgressActivity_Package_References.NullProgressActivity_Access;
   function "=" (Left, Right : NullProgressActivity_Access) return Boolean renames org.allbinary.android.activity.NullProgressActivity_Package_References."=";
   subtype NullProgressActivity_Access_Array is org.allbinary.android.activity.NullProgressActivity_Package_References.NullProgressActivity_Access_Array;
   function "=" (Left, Right : NullProgressActivity_Access_Array) return Boolean renames org.allbinary.android.activity.NullProgressActivity_Package_References."=";
   subtype NullProgressActivity_Access_Array_Access is org.allbinary.android.activity.NullProgressActivity_Package_References.NullProgressActivity_Access_Array_Access;
   function "=" (Left, Right : NullProgressActivity_Access_Array_Access) return Boolean renames org.allbinary.android.activity.NullProgressActivity_Package_References."=";
   subtype NullProgressActivity_Access_Array_Access_Array is org.allbinary.android.activity.NullProgressActivity_Package_References.NullProgressActivity_Access_Array_Access_Array;
   function "=" (Left, Right : NullProgressActivity_Access_Array_Access_Array) return Boolean renames org.allbinary.android.activity.NullProgressActivity_Package_References."=";
   subtype NullProgressActivity_Access_Array_Access_Array_Access is org.allbinary.android.activity.NullProgressActivity_Package_References.NullProgressActivity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullProgressActivity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.activity.NullProgressActivity_Package_References."=";

   type NullProgressActivity is new Java_Object and ProgressActivityInterface with null record;
   NULL_PROGRESS_ACTIVITY : NullProgressActivity_Access;

   procedure Initialize (This : in out NullProgressActivity'Class);
   function Create return NullProgressActivity_Access;
   procedure runOnUiThread (This : in out NullProgressActivity; action_Param : access Runnable_Package.Runnable'Class);
   procedure onDismissTitleProgressBar (This : in out NullProgressActivity);
   procedure onShowTitleProgressBar (This : in out NullProgressActivity; value : Integer; indeterminate : Boolean);
   procedure onTitleProgressBarSetProgress (This : in out NullProgressActivity; value : Integer);

end org.allbinary.android.activity.NullProgressActivity_Package;


