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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.graphics.pipeline.RandomTranslation_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type RandomTranslation is tagged;
   type RandomTranslation_Access is access all RandomTranslation'Class;
   type RandomTranslation_Access_Array is array (Natural range <>) of RandomTranslation_Access;
   type RandomTranslation_Access_Array_Access is access all RandomTranslation_Access_Array;
   type RandomTranslation_Access_Array_Access_Array is array (Natural range <>) of RandomTranslation_Access_Array_Access;
   type RandomTranslation_Access_Array_Access_Array_Access is access all RandomTranslation_Access_Array_Access_Array;

   type RandomTranslation is new Java_Object with null record;

   procedure Initialize (This : in out RandomTranslation'Class);
   function Create return RandomTranslation_Access;
   function getInstance (vector_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer) return BasicArrayList_Access;
   procedure getInstance (vector_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer);

end org.allbinary.graphics.pipeline.RandomTranslation_Package;


