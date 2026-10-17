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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoData_Package; use org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package; use org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package; use org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfosData_Package; use org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentFileHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentFileHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package TransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoData_Package;
   package TransformInfoProperties_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;
   package TransformInfoPropertiesFactory_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory_Package;
   package TransformInfosData_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfosData_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type TransformInfoPropertiesDocument is tagged;
   type TransformInfoPropertiesDocument_Access is access all TransformInfoPropertiesDocument'Class;
   type TransformInfoPropertiesDocument_Access_Array is array (Natural range <>) of TransformInfoPropertiesDocument_Access;
   type TransformInfoPropertiesDocument_Access_Array_Access is access all TransformInfoPropertiesDocument_Access_Array;

   type TransformInfoPropertiesDocument is new Java_Object with record
      logUtil : LogUtil_Access;
      document : Document_Access;
   end record;

   procedure Initialize (This : in out TransformInfoPropertiesDocument'Class; filePath : Unbounded_String);
   function Create (filePath : Unbounded_String) return TransformInfoPropertiesDocument_Access;
   function toTransformInfoPropertiesHashMap (This : in out TransformInfoPropertiesDocument) return HashMap_Access;
   procedure toTransformInfoPropertiesHashMap (This : in out TransformInfoPropertiesDocument);

end org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package;


