-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.math.PositionStrings_Package; use org.allbinary.math.PositionStrings_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.layer.LayerUtil_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package PositionStrings_Package renames Standard.org.allbinary.math.PositionStrings_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type LayerUtil is tagged;
   type LayerUtil_Access is access all LayerUtil'Class;
   type LayerUtil_Access_Array is array (Natural range <>) of LayerUtil_Access;
   type LayerUtil_Access_Array_Access is access all LayerUtil_Access_Array;

   type LayerUtil is new Java_Object with null record;
   HASHTABLE : Unbounded_String;

   procedure Initialize (This : in out LayerUtil'Class);
   function Create return LayerUtil_Access;
   function toString (hashtable_Case_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return Unbounded_String;
   procedure toString (hashtable_Case_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.layer.LayerUtil_Package;


