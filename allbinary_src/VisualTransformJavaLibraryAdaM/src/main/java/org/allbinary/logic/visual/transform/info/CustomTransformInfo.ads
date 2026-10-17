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
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package is


   type CustomTransformInfo is tagged;
   type CustomTransformInfo_Access is access all CustomTransformInfo'Class;
   type CustomTransformInfo_Access_Array is array (Natural range <>) of CustomTransformInfo_Access;
   type CustomTransformInfo_Access_Array_Access is access all CustomTransformInfo_Access_Array;

   type CustomTransformInfo is new TransformInfo and TransformInfoInterface with null record;

   procedure Initialize (This : in out CustomTransformInfo'Class; outputTypeName : Unbounded_String; inputOutputTypeName : Unbounded_String; inputOutputTypeFile : Unbounded_String; name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String);
   function Create (outputTypeName : Unbounded_String; inputOutputTypeName : Unbounded_String; inputOutputTypeFile : Unbounded_String; name : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String; dataFileName : Unbounded_String) return CustomTransformInfo_Access;

end org.allbinary.logic.visual.transform.info.CustomTransformInfo_Package;


