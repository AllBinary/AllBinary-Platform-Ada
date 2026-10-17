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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerData_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileDataWorkerType_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfileData_Package;

package org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package GenericProfileActions_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActions_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type GenericProfile is tagged;
   type GenericProfile_Access is access all GenericProfile'Class;
   type GenericProfile_Access_Array is array (Natural range <>) of GenericProfile_Access;
   type GenericProfile_Access_Array_Access is access all GenericProfile_Access_Array;

   type GenericProfile is new Java_Object with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      vector : BasicArrayList_Access;
      genericProfileActions : GenericProfileActions_Access;
   end record;

   procedure Initialize (This : in out GenericProfile'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return GenericProfile_Access;
   procedure Initialize (This : in out GenericProfile'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return GenericProfile_Access;
   function getGenericProfileDataWorkerTypeVector (This : in out GenericProfile) return BasicArrayList_Access;
   procedure add (This : in out GenericProfile; genericProfileDataWorkerType_Param : access GenericProfileDataWorkerType'Class);
   procedure remove (This : in out GenericProfile; genericProfileDataWorkerType_Param : access GenericProfileDataWorkerType'Class);
   function toXmlNode (This : in out GenericProfile; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out GenericProfile; document_Param : access Document'Class);
   function getName (This : in out GenericProfile) return Unbounded_String;
   procedure setName (This : in out GenericProfile; name : Unbounded_String);
   function getGenericProfileActions (This : in out GenericProfile) return GenericProfileActions_Access;
   procedure setGenericProfileActions (This : in out GenericProfile; genericProfileActions_Param : access GenericProfileActions'Class);

end org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;


