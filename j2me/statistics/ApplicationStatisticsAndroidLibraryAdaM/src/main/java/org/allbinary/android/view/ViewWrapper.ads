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
with android.view.View_Package; use android.view.View_Package;
with org.allbinary.android.view.BaseViewWrapper_Package; use org.allbinary.android.view.BaseViewWrapper_Package;

package org.allbinary.android.view.ViewWrapper_Package is

   package View_Package renames Standard.android.view.View_Package;

   type ViewWrapper is tagged;
   type ViewWrapper_Access is access all ViewWrapper'Class;
   type ViewWrapper_Access_Array is array (Natural range <>) of ViewWrapper_Access;
   type ViewWrapper_Access_Array_Access is access all ViewWrapper_Access_Array;

   type ViewWrapper is new BaseViewWrapper with record
      view : View_Access;
   end record;

   procedure Initialize (This : in out ViewWrapper'Class; view : View_Access);
   function Create (view : View_Access) return ViewWrapper_Access;
   procedure invalidate (This : in out ViewWrapper);
   procedure postInvalidate (This : in out ViewWrapper);

end org.allbinary.android.view.ViewWrapper_Package;


