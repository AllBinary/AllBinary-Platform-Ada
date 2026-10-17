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

package org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package is

   package Document_Package renames org.w3c.dom.Document_Package;

   type DomDocumentMappingInterface is interface;
   type DomDocumentMappingInterface_Access is access all DomDocumentMappingInterface'Class;
   type DomDocumentMappingInterface_Access_Array is array (Natural range <>) of DomDocumentMappingInterface_Access;
   type DomDocumentMappingInterface_Access_Array_Access is access all DomDocumentMappingInterface_Access_Array;
   function toXmlDoc (This : in out DomDocumentMappingInterface) return Document_Access is abstract;

end org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;


