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

package org.allbinary.android.activity.SimpleProgressActivityInterface_Package is


   type SimpleProgressActivityInterface is interface;
   type SimpleProgressActivityInterface_Access is access all SimpleProgressActivityInterface'Class;
   type SimpleProgressActivityInterface_Access_Array is array (Natural range <>) of SimpleProgressActivityInterface_Access;
   type SimpleProgressActivityInterface_Access_Array_Access is access all SimpleProgressActivityInterface_Access_Array;
   procedure runOnUiThread (This : in out SimpleProgressActivityInterface; action_Param : access Runnable'Class) is abstract;
   procedure onSetProgress (This : in out SimpleProgressActivityInterface; value : Integer; text : Unbounded_String) is abstract;
   procedure onDismissProgress (This : in out SimpleProgressActivityInterface; animationSequence : Integer_Array_Access) is abstract;
   procedure onShowProgress (This : in out SimpleProgressActivityInterface; indeterminate : Boolean; animationSequence : Integer_Array_Access) is abstract;

end org.allbinary.android.activity.SimpleProgressActivityInterface_Package;


