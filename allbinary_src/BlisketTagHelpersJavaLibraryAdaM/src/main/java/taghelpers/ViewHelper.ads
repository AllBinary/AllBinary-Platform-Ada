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

with AllBinary_Java;
limited with taghelpers.ViewHelper_Package;
package taghelpers.ViewHelper_Package_References is
   type ViewHelper_Access is access all taghelpers.ViewHelper_Package.ViewHelper'Class;
   type ViewHelper_Access_Array is array (Natural range <>) of ViewHelper_Access;
   type ViewHelper_Access_Array_Access is access all ViewHelper_Access_Array;
   type ViewHelper_Access_Array_Access_Array is array (Natural range <>) of ViewHelper_Access_Array_Access;
   type ViewHelper_Access_Array_Access_Array_Access is access all ViewHelper_Access_Array_Access_Array;
   type ViewHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewHelper_Access_Array_Access is (if Value /= null and then Value.all in ViewHelper_Access_Array_Object'Class then ViewHelper_Access_Array_Object'Class (Value.all).Value else null);
   type ViewHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ViewHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ViewHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ViewHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ViewHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ViewHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ViewHelper_Access_Array_Access_Array_Object'Class then ViewHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end taghelpers.ViewHelper_Package_References;

with taghelpers.ViewHelper_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
limited with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package taghelpers.ViewHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   subtype TransformDocumentInterface_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access;
   use type TransformDocumentInterface_Access;
   subtype TransformDocumentInterface_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array;
   use type TransformDocumentInterface_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access;
   subtype TransformDocumentInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array;
   use type TransformDocumentInterface_Access_Array_Access_Array;
   subtype TransformDocumentInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package_References.TransformDocumentInterface_Access_Array_Access_Array_Access;
   use type TransformDocumentInterface_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ViewHelper_Access is taghelpers.ViewHelper_Package_References.ViewHelper_Access;
   function "=" (Left, Right : ViewHelper_Access) return Boolean renames taghelpers.ViewHelper_Package_References."=";
   subtype ViewHelper_Access_Array is taghelpers.ViewHelper_Package_References.ViewHelper_Access_Array;
   function "=" (Left, Right : ViewHelper_Access_Array) return Boolean renames taghelpers.ViewHelper_Package_References."=";
   subtype ViewHelper_Access_Array_Access is taghelpers.ViewHelper_Package_References.ViewHelper_Access_Array_Access;
   function "=" (Left, Right : ViewHelper_Access_Array_Access) return Boolean renames taghelpers.ViewHelper_Package_References."=";
   function Java_Box (Value : ViewHelper_Access_Array_Access) return Java_Object_Access renames taghelpers.ViewHelper_Package_References.Java_Box;
   function Java_Unbox_ViewHelper_Access_Array (Value : access Java_Object'Class) return ViewHelper_Access_Array_Access renames taghelpers.ViewHelper_Package_References.Java_Unbox_ViewHelper_Access_Array;
   subtype ViewHelper_Access_Array_Access_Array is taghelpers.ViewHelper_Package_References.ViewHelper_Access_Array_Access_Array;
   function "=" (Left, Right : ViewHelper_Access_Array_Access_Array) return Boolean renames taghelpers.ViewHelper_Package_References."=";
   subtype ViewHelper_Access_Array_Access_Array_Access is taghelpers.ViewHelper_Package_References.ViewHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ViewHelper_Access_Array_Access_Array_Access) return Boolean renames taghelpers.ViewHelper_Package_References."=";
   function Java_Box (Value : ViewHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames taghelpers.ViewHelper_Package_References.Java_Box;
   function Java_Unbox_ViewHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return ViewHelper_Access_Array_Access_Array_Access renames taghelpers.ViewHelper_Package_References.Java_Unbox_ViewHelper_Access_Array_Access_Array;

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


