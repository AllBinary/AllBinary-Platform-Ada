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

package org.allbinary.android.view.BaseViewWrapper_Package is


   type BaseViewWrapper is tagged;
   type BaseViewWrapper_Access is access all BaseViewWrapper'Class;
   type BaseViewWrapper_Access_Array is array (Natural range <>) of BaseViewWrapper_Access;
   type BaseViewWrapper_Access_Array_Access is access all BaseViewWrapper_Access_Array;
   type BaseViewWrapper_Access_Array_Access_Array is array (Natural range <>) of BaseViewWrapper_Access_Array_Access;
   type BaseViewWrapper_Access_Array_Access_Array_Access is access all BaseViewWrapper_Access_Array_Access_Array;

   type BaseViewWrapper is new Java_Object with null record;
   NULL_VIEW_WRAPPER : BaseViewWrapper_Access;

   procedure Initialize (This : in out BaseViewWrapper'Class);
   function Create return BaseViewWrapper_Access;
   procedure invalidate (This : in out BaseViewWrapper);
   procedure postInvalidate (This : in out BaseViewWrapper);

end org.allbinary.android.view.BaseViewWrapper_Package;


