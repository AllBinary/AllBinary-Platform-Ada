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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ImageTypes is tagged;
   type ImageTypes_Access is access all ImageTypes'Class;
   type ImageTypes_Access_Array is array (Natural range <>) of ImageTypes_Access;
   type ImageTypes_Access_Array_Access is access all ImageTypes_Access_Array;
   type ImageTypes_Access_Array_Access_Array is array (Natural range <>) of ImageTypes_Access_Array_Access;
   type ImageTypes_Access_Array_Access_Array_Access is access all ImageTypes_Access_Array_Access_Array;

   type ImageTypes is new Java_Object with record
      vector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out ImageTypes'Class);
   function Create return ImageTypes_Access;
   procedure Initialize (This : in out ImageTypes'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return ImageTypes_Access;
   function valueOf (anyType : Java_Object_Access_Array_Access) return ImageTypes_Access;
   procedure valueOf (anyType : Java_Object_Access_Array_Access);
   function getVector (This : in out ImageTypes) return BasicArrayList_Access;
   function toXmlNode (This : in out ImageTypes; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ImageTypes; document_Param : access Document_Package.Document'Class);
   function toString (This : in out ImageTypes) return Unbounded_String;

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;


