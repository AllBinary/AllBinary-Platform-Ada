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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;

package org.allbinary.logic.visual.transform.data.TransformDocument_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TransformDocument is tagged;
   type TransformDocument_Access is access all TransformDocument'Class;
   type TransformDocument_Access_Array is array (Natural range <>) of TransformDocument_Access;
   type TransformDocument_Access_Array_Access is access all TransformDocument_Access_Array;
   type TransformDocument_Access_Array_Access_Array is array (Natural range <>) of TransformDocument_Access_Array_Access;
   type TransformDocument_Access_Array_Access_Array_Access is access all TransformDocument_Access_Array_Access_Array;

   type TransformDocument is new Java_Object and TransformDocumentInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      baseNode : Node_Access;
      document : Document_Access;
   end record;

   procedure Initialize (This : in out TransformDocument'Class);
   function Create return TransformDocument_Access;
   function getBaseNode (This : in out TransformDocument) return Node_Access;
   function getDoc (This : in out TransformDocument) return Document_Access;
   function log (This : in out TransformDocument) return Unbounded_String;

end org.allbinary.logic.visual.transform.data.TransformDocument_Package;


