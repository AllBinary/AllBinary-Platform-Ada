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

limited with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References is
   type GenericProfileDataWorkerType_Access is access all org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package.GenericProfileDataWorkerType'Class;
   type GenericProfileDataWorkerType_Access_Array is array (Natural range <>) of GenericProfileDataWorkerType_Access;
   type GenericProfileDataWorkerType_Access_Array_Access is access all GenericProfileDataWorkerType_Access_Array;
   type GenericProfileDataWorkerType_Access_Array_Access_Array is array (Natural range <>) of GenericProfileDataWorkerType_Access_Array_Access;
   type GenericProfileDataWorkerType_Access_Array_Access_Array_Access is access all GenericProfileDataWorkerType_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References;

with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype GenericProfileDataWorkerType_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access;
   function "=" (Left, Right : GenericProfileDataWorkerType_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References."=";
   subtype GenericProfileDataWorkerType_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access_Array;
   function "=" (Left, Right : GenericProfileDataWorkerType_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References."=";
   subtype GenericProfileDataWorkerType_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access_Array_Access;
   function "=" (Left, Right : GenericProfileDataWorkerType_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References."=";
   subtype GenericProfileDataWorkerType_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access_Array_Access_Array;
   function "=" (Left, Right : GenericProfileDataWorkerType_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References."=";
   subtype GenericProfileDataWorkerType_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References.GenericProfileDataWorkerType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GenericProfileDataWorkerType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package_References."=";

   type GenericProfileDataWorkerType is new Java_Object and GenericProfileDataWorkerTypeInterface with record
      name : Unbounded_String;
   end record;
   hashMap : HashMap_Access;
   SAVED_CAPTURE : GenericProfileDataWorkerType_Access;
   SCREEN_CAPTURE : GenericProfileDataWorkerType_Access;
   COMPARISON : GenericProfileDataWorkerType_Access;
   MOTION : GenericProfileDataWorkerType_Access;

   procedure Initialize (This : in out GenericProfileDataWorkerType'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return GenericProfileDataWorkerType_Access;
   function getName (This : in out GenericProfileDataWorkerType) return Unbounded_String;
   procedure setName (This : in out GenericProfileDataWorkerType; name : Unbounded_String);
   function toXmlNode (This : in out GenericProfileDataWorkerType; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericProfileDataWorkerType; document_Param : access Document_Package.Document'Class);
   function toString (This : in out GenericProfileDataWorkerType) return Unbounded_String;
   function getInstance (node_Param : access Node_Package.Node'Class) return GenericProfileDataWorkerType_Access;
   procedure getInstance (node_Param : access Node_Package.Node'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;


