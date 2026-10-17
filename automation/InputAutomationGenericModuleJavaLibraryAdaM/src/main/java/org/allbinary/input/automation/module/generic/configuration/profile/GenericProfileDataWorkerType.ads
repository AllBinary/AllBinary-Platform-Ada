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
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.media.image.InputImageType_Package; use org.allbinary.input.media.image.InputImageType_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerTypeInterface_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.SavedCaptureGenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerData_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package InputImageType_Package renames Standard.org.allbinary.input.media.image.InputImageType_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type GenericProfileDataWorkerType is tagged;
   type GenericProfileDataWorkerType_Access is access all GenericProfileDataWorkerType'Class;
   type GenericProfileDataWorkerType_Access_Array is array (Natural range <>) of GenericProfileDataWorkerType_Access;
   type GenericProfileDataWorkerType_Access_Array_Access is access all GenericProfileDataWorkerType_Access_Array;

   type GenericProfileDataWorkerType is new GenericProfileDataWorkerTypeInterface with record
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
   function toXmlNode (This : in out GenericProfileDataWorkerType; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericProfileDataWorkerType; document_Param : access Document'Class);
   function toString (This : in out GenericProfileDataWorkerType) return Unbounded_String;
   function getInstance (node_Param : access Node'Class) return GenericProfileDataWorkerType_Access;
   procedure getInstance (node_Param : access Node'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;


