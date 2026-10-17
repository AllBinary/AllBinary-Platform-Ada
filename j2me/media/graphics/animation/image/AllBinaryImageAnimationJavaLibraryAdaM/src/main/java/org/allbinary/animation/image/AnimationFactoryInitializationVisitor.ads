-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package PositionStrings_Package renames org.allbinary.math.PositionStrings_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type AnimationFactoryInitializationVisitor is tagged;
   type AnimationFactoryInitializationVisitor_Access is access all AnimationFactoryInitializationVisitor'Class;
   type AnimationFactoryInitializationVisitor_Access_Array is array (Natural range <>) of AnimationFactoryInitializationVisitor_Access;
   type AnimationFactoryInitializationVisitor_Access_Array_Access is access all AnimationFactoryInitializationVisitor_Access_Array;

   type AnimationFactoryInitializationVisitor is new Java_Object with record
      width : Integer;
      height : Integer;
      dx : Integer;
      dy : Integer;
      originalDx : Integer;
      originalDy : Integer;
   end record;

   procedure Initialize (This : in out AnimationFactoryInitializationVisitor'Class);
   function Create return AnimationFactoryInitializationVisitor_Access;
   procedure visit (This : in out AnimationFactoryInitializationVisitor);
   function toString (This : in out AnimationFactoryInitializationVisitor) return Unbounded_String;
   procedure toString (This : in out AnimationFactoryInitializationVisitor);

end org.allbinary.animation.image.AnimationFactoryInitializationVisitor_Package;


