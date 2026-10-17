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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;

package org.allbinary.data.tree.dom.FileDomDataModel_Package is

   package TableMappingInterface_Package renames org.allbinary.data.tables.TableMappingInterface_Package;
   package AbFile_Package renames org.allbinary.logic.io.file.AbFile_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type FileDomDataModel is tagged;
   type FileDomDataModel_Access is access all FileDomDataModel'Class;
   type FileDomDataModel_Access_Array is array (Natural range <>) of FileDomDataModel_Access;
   type FileDomDataModel_Access_Array_Access is access all FileDomDataModel_Access_Array;

   type FileDomDataModel is new DomNodeInterface with record
      file : AbFile_Access;
   end record;

   procedure Initialize (This : in out FileDomDataModel'Class; file : AbFile_Access);
   function Create (file : AbFile_Access) return FileDomDataModel_Access;
   function toXmlNode (This : in out FileDomDataModel; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out FileDomDataModel; document : Document_Access);

end org.allbinary.data.tree.dom.FileDomDataModel_Package;


