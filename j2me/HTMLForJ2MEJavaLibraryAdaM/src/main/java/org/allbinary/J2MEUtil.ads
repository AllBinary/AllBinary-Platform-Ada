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

package org.allbinary.J2MEUtil_Package is


   type J2MEUtil is tagged;
   type J2MEUtil_Access is access all J2MEUtil'Class;
   type J2MEUtil_Access_Array is array (Natural range <>) of J2MEUtil_Access;
   type J2MEUtil_Access_Array_Access is access all J2MEUtil_Access_Array;
   type J2MEUtil_Access_Array_Access_Array is array (Natural range <>) of J2MEUtil_Access_Array_Access;
   type J2MEUtil_Access_Array_Access_Array_Access is access all J2MEUtil_Access_Array_Access_Array;

   type J2MEUtil is new Java_Object with null record;

   procedure Initialize (This : in out J2MEUtil'Class);
   function Create return J2MEUtil_Access;
   function isJ2ME return Boolean;
   function isJ2SE return Boolean;
   function isHTML return Boolean;

end org.allbinary.J2MEUtil_Package;


