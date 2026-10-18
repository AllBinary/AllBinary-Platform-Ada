-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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

package org.allbinary.logic.PropertyInitUtil_Package is


   type PropertyInitUtil is tagged;
   type PropertyInitUtil_Access is access all PropertyInitUtil'Class;
   type PropertyInitUtil_Access_Array is array (Natural range <>) of PropertyInitUtil_Access;
   type PropertyInitUtil_Access_Array_Access is access all PropertyInitUtil_Access_Array;
   type PropertyInitUtil_Access_Array_Access_Array is array (Natural range <>) of PropertyInitUtil_Access_Array_Access;
   type PropertyInitUtil_Access_Array_Access_Array_Access is access all PropertyInitUtil_Access_Array_Access_Array;

   type PropertyInitUtil is new Java_Object with null record;
   instance : PropertyInitUtil_Access;

   procedure Initialize (This : in out PropertyInitUtil'Class);
   function Create return PropertyInitUtil_Access;
   function getInstance (value : Integer) return PropertyInitUtil_Access;
   procedure getInstance (value : Integer);

end org.allbinary.logic.PropertyInitUtil_Package;


