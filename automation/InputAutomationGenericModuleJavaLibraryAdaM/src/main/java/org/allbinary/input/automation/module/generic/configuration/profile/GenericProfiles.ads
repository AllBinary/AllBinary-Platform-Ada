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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References is
   type GenericProfiles_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package.GenericProfiles'Class;
   type GenericProfiles_Access_Array is array (Natural range <>) of GenericProfiles_Access;
   type GenericProfiles_Access_Array_Access is access all GenericProfiles_Access_Array;
   type GenericProfiles_Access_Array_Access_Array is array (Natural range <>) of GenericProfiles_Access_Array_Access;
   type GenericProfiles_Access_Array_Access_Array_Access is access all GenericProfiles_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.FileOutputStream_Package; use java.io.FileOutputStream_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
limited with org.allbinary.input.automation.module.DefaultListModelHelper_Package;
with org.allbinary.input.automation.module.DefaultListModelHelper_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package DefaultListModelHelper_Package renames Standard.org.allbinary.input.automation.module.DefaultListModelHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype DefaultListModelHelper_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access;
   use type DefaultListModelHelper_Access;
   subtype DefaultListModelHelper_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array;
   use type DefaultListModelHelper_Access_Array;
   subtype DefaultListModelHelper_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access;
   use type DefaultListModelHelper_Access_Array_Access;
   subtype DefaultListModelHelper_Access_Array_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array;
   use type DefaultListModelHelper_Access_Array_Access_Array;
   subtype DefaultListModelHelper_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array_Access;
   use type DefaultListModelHelper_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype GenericProfile_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access;
   use type GenericProfile_Access;
   subtype GenericProfile_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array;
   use type GenericProfile_Access_Array;
   subtype GenericProfile_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access;
   use type GenericProfile_Access_Array_Access;
   subtype GenericProfile_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array;
   use type GenericProfile_Access_Array_Access_Array;
   subtype GenericProfile_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package_References.GenericProfile_Access_Array_Access_Array_Access;
   use type GenericProfile_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfiles_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access;
   function "=" (Left, Right : GenericProfiles_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References."=";
   subtype GenericProfiles_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access_Array;
   function "=" (Left, Right : GenericProfiles_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References."=";
   subtype GenericProfiles_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access_Array_Access;
   function "=" (Left, Right : GenericProfiles_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References."=";
   subtype GenericProfiles_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfiles_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References."=";
   subtype GenericProfiles_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References.GenericProfiles_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfiles_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfiles_Package_References."=";

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


