-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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

package org.allbinary.game.layer.CaptionResources_Package is


   type CaptionResources is tagged;
   type CaptionResources_Access is access all CaptionResources'Class;
   type CaptionResources_Access_Array is array (Natural range <>) of CaptionResources_Access;
   type CaptionResources_Access_Array_Access is access all CaptionResources_Access_Array;
   type CaptionResources_Access_Array_Access_Array is array (Natural range <>) of CaptionResources_Access_Array_Access;
   type CaptionResources_Access_Array_Access_Array_Access is access all CaptionResources_Access_Array_Access_Array;

   type CaptionResources is new Java_Object with record
      RESOURCE : Unbounded_String;
   end record;
   instance : CaptionResources_Access;

   procedure Initialize (This : in out CaptionResources'Class);
   function Create return CaptionResources_Access;
   function getInstance return CaptionResources_Access;

end org.allbinary.game.layer.CaptionResources_Package;


