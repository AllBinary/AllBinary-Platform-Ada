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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type TransformInfoPropertiesDocument is tagged;
   type TransformInfoPropertiesDocument_Access is access all TransformInfoPropertiesDocument'Class;
   type TransformInfoPropertiesDocument_Access_Array is array (Natural range <>) of TransformInfoPropertiesDocument_Access;
   type TransformInfoPropertiesDocument_Access_Array_Access is access all TransformInfoPropertiesDocument_Access_Array;
   type TransformInfoPropertiesDocument_Access_Array_Access_Array is array (Natural range <>) of TransformInfoPropertiesDocument_Access_Array_Access;
   type TransformInfoPropertiesDocument_Access_Array_Access_Array_Access is access all TransformInfoPropertiesDocument_Access_Array_Access_Array;

   type TransformInfoPropertiesDocument is new Java_Object with record
      logUtil : LogUtil_Access;
      document : Document_Access;
   end record;

   procedure Initialize (This : in out TransformInfoPropertiesDocument'Class; filePath : Unbounded_String);
   function Create (filePath : Unbounded_String) return TransformInfoPropertiesDocument_Access;
   function toTransformInfoPropertiesHashMap (This : in out TransformInfoPropertiesDocument) return HashMap_Access;

end org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package;


