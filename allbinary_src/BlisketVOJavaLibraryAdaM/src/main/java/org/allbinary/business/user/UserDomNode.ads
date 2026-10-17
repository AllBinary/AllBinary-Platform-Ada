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
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.data.tables.TableMappingInterface_Package; use org.allbinary.data.tables.TableMappingInterface_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.user.UserDomNode_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package TableMappingInterface_Package renames Standard.org.allbinary.data.tables.TableMappingInterface_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type UserDomNode is tagged;
   type UserDomNode_Access is access all UserDomNode'Class;
   type UserDomNode_Access_Array is array (Natural range <>) of UserDomNode_Access;
   type UserDomNode_Access_Array_Access is access all UserDomNode_Access_Array;

   type UserDomNode is new DomNodeInterface with record
      dataMappingInterface : TableMappingInterface_Access;
   end record;

   procedure Initialize (This : in out UserDomNode'Class; dataMappingInterface : TableMappingInterface_Access);
   function Create (dataMappingInterface : TableMappingInterface_Access) return UserDomNode_Access;
   function toXmlNode (This : in out UserDomNode; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out UserDomNode; document : Document_Access);
   function toXmlDoc (This : in out UserDomNode) return Document_Access;
   procedure toXmlDoc (This : in out UserDomNode);
   function view (This : in out UserDomNode) return Unbounded_String;
   procedure view (This : in out UserDomNode);

end org.allbinary.business.user.UserDomNode_Package;


