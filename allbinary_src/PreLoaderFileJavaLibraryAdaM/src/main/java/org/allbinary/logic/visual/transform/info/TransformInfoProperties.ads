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

package org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package is


   type TransformInfoProperties is tagged;
   type TransformInfoProperties_Access is access all TransformInfoProperties'Class;
   type TransformInfoProperties_Access_Array is array (Natural range <>) of TransformInfoProperties_Access;
   type TransformInfoProperties_Access_Array_Access is access all TransformInfoProperties_Access_Array;

   type TransformInfoProperties is new Java_Object with record
      name : Unbounded_String;
      label : Unbounded_String;
      description : Unbounded_String;
      objectFileName : Unbounded_String;
      objectConfigFileName : Unbounded_String;
      templateFileName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfoProperties'Class; name : Unbounded_String; label : Unbounded_String; description : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String);
   function Create (name : Unbounded_String; label : Unbounded_String; description : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String) return TransformInfoProperties_Access;
   procedure setName (This : in out TransformInfoProperties; value : Unbounded_String);
   procedure setDescription (This : in out TransformInfoProperties; value : Unbounded_String);
   procedure setViewFile (This : in out TransformInfoProperties; value : Unbounded_String);
   procedure setTemplateFile (This : in out TransformInfoProperties; value : Unbounded_String);
   procedure setObjectConfigFile (This : in out TransformInfoProperties; value : Unbounded_String);
   function getName (This : in out TransformInfoProperties) return Unbounded_String;
   procedure getName (This : in out TransformInfoProperties);
   function getLabel (This : in out TransformInfoProperties) return Unbounded_String;
   procedure getLabel (This : in out TransformInfoProperties);
   function getDescription (This : in out TransformInfoProperties) return Unbounded_String;
   procedure getDescription (This : in out TransformInfoProperties);
   function getViewFile (This : in out TransformInfoProperties) return Unbounded_String;
   procedure getViewFile (This : in out TransformInfoProperties);
   function getTemplateFile (This : in out TransformInfoProperties) return Unbounded_String;
   procedure getTemplateFile (This : in out TransformInfoProperties);
   function getObjectConfigFile (This : in out TransformInfoProperties) return Unbounded_String;
   procedure getObjectConfigFile (This : in out TransformInfoProperties);

end org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;


