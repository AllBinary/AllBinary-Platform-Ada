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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package is

   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TransformDocumentInterface is interface;
   type TransformDocumentInterface_Access is access all TransformDocumentInterface'Class;
   type TransformDocumentInterface_Access_Array is array (Natural range <>) of TransformDocumentInterface_Access;
   type TransformDocumentInterface_Access_Array_Access is access all TransformDocumentInterface_Access_Array;
   type TransformDocumentInterface_Access_Array_Access_Array is array (Natural range <>) of TransformDocumentInterface_Access_Array_Access;
   type TransformDocumentInterface_Access_Array_Access_Array_Access is access all TransformDocumentInterface_Access_Array_Access_Array;
   function getBaseNode (This : in out TransformDocumentInterface) return Node_Access is abstract;
   function getDoc (This : in out TransformDocumentInterface) return Document_Access is abstract;

end org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;


