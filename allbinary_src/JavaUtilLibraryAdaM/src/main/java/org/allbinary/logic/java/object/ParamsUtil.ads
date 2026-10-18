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

package org.allbinary.logic.java.anyType.ParamsUtil_Package is


   type ParamsUtil is tagged;
   type ParamsUtil_Access is access all ParamsUtil'Class;
   type ParamsUtil_Access_Array is array (Natural range <>) of ParamsUtil_Access;
   type ParamsUtil_Access_Array_Access is access all ParamsUtil_Access_Array;
   type ParamsUtil_Access_Array_Access_Array is array (Natural range <>) of ParamsUtil_Access_Array_Access;
   type ParamsUtil_Access_Array_Access_Array_Access is access all ParamsUtil_Access_Array_Access_Array;

   type ParamsUtil is new Java_Object with null record;

   procedure Initialize (This : in out ParamsUtil'Class);
   function Create return ParamsUtil_Access;
   function viewParams (params : Ada_Tags_Tag_Array_Access) return Unbounded_String;
   procedure viewParams (params : Ada_Tags_Tag_Array_Access);

end org.allbinary.logic.java.anyType.ParamsUtil_Package;


