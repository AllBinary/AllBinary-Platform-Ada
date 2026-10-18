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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package taghelpers.ViewHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type ViewHelper is tagged;
   type ViewHelper_Access is access all ViewHelper'Class;
   type ViewHelper_Access_Array is array (Natural range <>) of ViewHelper_Access;
   type ViewHelper_Access_Array_Access is access all ViewHelper_Access_Array;
   type ViewHelper_Access_Array_Access_Array is array (Natural range <>) of ViewHelper_Access_Array_Access;
   type ViewHelper_Access_Array_Access_Array_Access is access all ViewHelper_Access_Array_Access_Array;

   type ViewHelper is new Java_Object and TransformInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      componentInterface : TransformInterface_Access;
      NO_TYPE : Integer;
   end record;

   procedure Initialize (This : in out ViewHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return ViewHelper_Access;
   function getTypeId (This : in out ViewHelper) return Integer;
   function view (This : in out ViewHelper) return Unbounded_String;
   function toXmlDoc (This : in out ViewHelper) return Document_Access;
   function getViewObject (This : in out ViewHelper) return TransformInterface_Access;
   function getTransformInfoInterface (This : in out ViewHelper) return TransformInfoInterface_Access;
   function getTransformDocumentInterface (This : in out ViewHelper) return TransformDocumentInterface_Access;
   procedure setTransformDocumentInterface (This : in out ViewHelper; viewDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class);

end taghelpers.ViewHelper_Package;


