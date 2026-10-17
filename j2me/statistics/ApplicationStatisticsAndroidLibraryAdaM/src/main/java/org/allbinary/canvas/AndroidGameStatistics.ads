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
with org.allbinary.android.view.BaseViewWrapper_Package; use org.allbinary.android.view.BaseViewWrapper_Package;
with org.allbinary.android.view.ViewWrapper_Package; use org.allbinary.android.view.ViewWrapper_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.canvas.BaseGameStatistics_Package; use org.allbinary.canvas.BaseGameStatistics_Package;

package org.allbinary.canvas.AndroidGameStatistics_Package is

   package View_Package renames Standard.android.view.View_Package;
   package BaseViewWrapper_Package renames Standard.org.allbinary.android.view.BaseViewWrapper_Package;
   package ViewWrapper_Package renames Standard.org.allbinary.android.view.ViewWrapper_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type AndroidGameStatistics is tagged;
   type AndroidGameStatistics_Access is access all AndroidGameStatistics'Class;
   type AndroidGameStatistics_Access_Array is array (Natural range <>) of AndroidGameStatistics_Access;
   type AndroidGameStatistics_Access_Array_Access is access all AndroidGameStatistics_Access_Array;

   type AndroidGameStatistics is new BaseGameStatistics with record
      view : BaseViewWrapper_Access;
      totalOnDraws : Long_Long_Integer;
      ANDROID_STRING_ARRAY : Unbounded_String_Array_Access;
      TOTAL_ONDRAWS : Unbounded_String;
      ONDRAWS_RATE : Unbounded_String;
   end record;

   procedure Initialize (This : in out AndroidGameStatistics'Class);
   function Create return AndroidGameStatistics_Access;
   procedure initView (This : in out AndroidGameStatistics; view_Param : access View'Class);
   procedure process (This : in out AndroidGameStatistics);
   procedure nextOnDraw (This : in out AndroidGameStatistics);
   function toStringArray (This : in out AndroidGameStatistics) return Unbounded_String_Array_Access;
   function toString (This : in out AndroidGameStatistics) return Unbounded_String;

end org.allbinary.canvas.AndroidGameStatistics_Package;


