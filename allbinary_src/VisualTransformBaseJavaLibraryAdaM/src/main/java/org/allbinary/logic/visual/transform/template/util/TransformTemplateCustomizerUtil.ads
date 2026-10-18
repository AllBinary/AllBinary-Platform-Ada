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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type TransformTemplateCustomizerUtil is tagged;
   type TransformTemplateCustomizerUtil_Access is access all TransformTemplateCustomizerUtil'Class;
   type TransformTemplateCustomizerUtil_Access_Array is array (Natural range <>) of TransformTemplateCustomizerUtil_Access;
   type TransformTemplateCustomizerUtil_Access_Array_Access is access all TransformTemplateCustomizerUtil_Access_Array;
   type TransformTemplateCustomizerUtil_Access_Array_Access_Array is array (Natural range <>) of TransformTemplateCustomizerUtil_Access_Array_Access;
   type TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access is access all TransformTemplateCustomizerUtil_Access_Array_Access_Array;

   type TransformTemplateCustomizerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      CUSTOMIZER_NAME : Unbounded_String;
      BODY_VIEWNAMEKEY : Unbounded_String;
      TITLE_VIEWNAMEKEY : Unbounded_String;
      GLOBALS_NEW : Unbounded_String;
      GLOBALS_INSERT : Unbounded_String;
      GLOBALS_DELETE : Unbounded_String;
      GLOBALS_EDIT : Unbounded_String;
      GLOBALS_UPDATE : Unbounded_String;
   end record;
   instance : TransformTemplateCustomizerUtil_Access;

   procedure Initialize (This : in out TransformTemplateCustomizerUtil'Class);
   function Create return TransformTemplateCustomizerUtil_Access;
   function getInstance return TransformTemplateCustomizerUtil_Access;
   function getPageNameHack (This : in out TransformTemplateCustomizerUtil; viewName : Unbounded_String; storeName : Unbounded_String) return Unbounded_String;
   procedure getPageNameHack (This : in out TransformTemplateCustomizerUtil; viewName : Unbounded_String; storeName : Unbounded_String);

end org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;


