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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.activity.ProgressActivityInterface_Package; use org.allbinary.android.activity.ProgressActivityInterface_Package;

package org.allbinary.android.activity.NullProgressActivity_Package is


   type NullProgressActivity is tagged;
   type NullProgressActivity_Access is access all NullProgressActivity'Class;
   type NullProgressActivity_Access_Array is array (Natural range <>) of NullProgressActivity_Access;
   type NullProgressActivity_Access_Array_Access is access all NullProgressActivity_Access_Array;

   type NullProgressActivity is new ProgressActivityInterface with null record;
   NULL_PROGRESS_ACTIVITY : NullProgressActivity_Access;

   procedure Initialize (This : in out NullProgressActivity'Class);
   function Create return NullProgressActivity_Access;
   procedure runOnUiThread (This : in out NullProgressActivity; action : Runnable_Access);
   procedure onDismissTitleProgressBar (This : in out NullProgressActivity);
   procedure onShowTitleProgressBar (This : in out NullProgressActivity; value : Integer; indeterminate : Boolean);
   procedure onTitleProgressBarSetProgress (This : in out NullProgressActivity; value : Integer);

end org.allbinary.android.activity.NullProgressActivity_Package;


