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
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.android.activity.ProgressActivityInterface_Package is


   type ProgressActivityInterface is interface;
   type ProgressActivityInterface_Access is access all ProgressActivityInterface'Class;
   type ProgressActivityInterface_Access_Array is array (Natural range <>) of ProgressActivityInterface_Access;
   type ProgressActivityInterface_Access_Array_Access is access all ProgressActivityInterface_Access_Array;
   type ProgressActivityInterface_Access_Array_Access_Array is array (Natural range <>) of ProgressActivityInterface_Access_Array_Access;
   type ProgressActivityInterface_Access_Array_Access_Array_Access is access all ProgressActivityInterface_Access_Array_Access_Array;
   procedure runOnUiThread (This : in out ProgressActivityInterface; action_Param : access Runnable_Package.Runnable'Class) is abstract;
   procedure onDismissTitleProgressBar (This : in out ProgressActivityInterface) is abstract;
   procedure onShowTitleProgressBar (This : in out ProgressActivityInterface; value : Integer; indeterminate : Boolean) is abstract;
   procedure onTitleProgressBarSetProgress (This : in out ProgressActivityInterface; value : Integer) is abstract;

end org.allbinary.android.activity.ProgressActivityInterface_Package;


