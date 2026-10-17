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

package org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package is


   type TitleData is tagged;
   type TitleData_Access is access all TitleData'Class;
   type TitleData_Access_Array is array (Natural range <>) of TitleData_Access;
   type TitleData_Access_Array_Access is access all TitleData_Access_Array;

   type TitleData is new Java_Object with record
      NAME : Unbounded_String;
      TEXT : Unbounded_String;
      VIEWNAMEKEY : Unbounded_String;
      MAXLEN : Integer;
   end record;
   instance : TitleData_Access;

   procedure Initialize (This : in out TitleData'Class);
   function Create return TitleData_Access;
   function getInstance return TitleData_Access;
   procedure getInstance;

end org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;


