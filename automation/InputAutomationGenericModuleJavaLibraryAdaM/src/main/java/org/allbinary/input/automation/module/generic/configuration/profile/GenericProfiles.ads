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
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
with org.allbinary.input.automation.module.DefaultListModelHelper_Package; use org.allbinary.input.automation.module.DefaultListModelHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package DefaultListModelHelper_Package renames Standard.org.allbinary.input.automation.module.DefaultListModelHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type GenericProfiles is tagged;
   type GenericProfiles_Access is access all GenericProfiles'Class;
   type GenericProfiles_Access_Array is array (Natural range <>) of GenericProfiles_Access;
   type GenericProfiles_Access_Array_Access is access all GenericProfiles_Access_Array;
   type GenericProfiles_Access_Array_Access_Array is array (Natural range <>) of GenericProfiles_Access_Array_Access;
   type GenericProfiles_Access_Array_Access_Array_Access is access all GenericProfiles_Access_Array_Access_Array;

   type GenericProfiles is new Java_Object and DomNodeInterface and DomDocumentMappingInterface with record
      logUtil : LogUtil_Access;
      hashMap : HashMap_Access;
      profilesDefaultListModelHelper : DefaultListModelHelper_Access;
      fileName : Unbounded_String;
   end record;
   DEFAULT_PROFILES_PATH : Unbounded_String;
   DEFAULT_PROFILE_ACTIONS_PATH : Unbounded_String;
   DEFAULT_FILE : Unbounded_String;

   procedure Initialize (This : in out GenericProfiles'Class; fileName : Unbounded_String);
   function Create (fileName : Unbounded_String) return GenericProfiles_Access;
   procedure initProfiles (This : in out GenericProfiles; node_Param : access Node_Package.Node'Class);
   function getDefaultListModelHelper (This : in out GenericProfiles) return DefaultListModelHelper_Access;
   function get (This : in out GenericProfiles; name : Unbounded_String) return GenericProfile_Access;
   procedure get (This : in out GenericProfiles; name : Unbounded_String);
   procedure add (This : in out GenericProfiles; name : Unbounded_String);
   procedure remove (This : in out GenericProfiles; name : Unbounded_String);
   function toXmlNode (This : in out GenericProfiles; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericProfiles; document_Param : access Document_Package.Document'Class);
   function toXmlDoc (This : in out GenericProfiles) return Document_Access;
   procedure save (This : in out GenericProfiles);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;


