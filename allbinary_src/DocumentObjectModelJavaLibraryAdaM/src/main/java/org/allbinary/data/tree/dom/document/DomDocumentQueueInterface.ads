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
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;

package org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package is

   package DomDocumentMappingInterface_Package renames org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;

   type DomDocumentQueueInterface is interface;
   type DomDocumentQueueInterface_Access is access all DomDocumentQueueInterface'Class;
   type DomDocumentQueueInterface_Access_Array is array (Natural range <>) of DomDocumentQueueInterface_Access;
   type DomDocumentQueueInterface_Access_Array_Access is access all DomDocumentQueueInterface_Access_Array;
   function offer (This : in out DomDocumentQueueInterface; domDocumentMappingInterface : DomDocumentMappingInterface_Access) return Boolean is abstract;
   function remove (This : in out DomDocumentQueueInterface) return DomDocumentMappingInterface_Access is abstract;

end org.allbinary.data.tree.dom.document.DomDocumentQueueInterface_Package;


