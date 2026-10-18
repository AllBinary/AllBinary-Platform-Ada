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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.visual.transform.TransformInterface_Package; use org.allbinary.logic.visual.transform.TransformInterface_Package;
with org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package; use org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package views.BasicComponentView_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package TransformInterface_Package renames Standard.org.allbinary.logic.visual.transform.TransformInterface_Package;
   package TransformDocumentInterface_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformDocumentInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type BasicComponentView is tagged;
   type BasicComponentView_Access is access all BasicComponentView'Class;
   type BasicComponentView_Access_Array is array (Natural range <>) of BasicComponentView_Access;
   type BasicComponentView_Access_Array_Access is access all BasicComponentView_Access_Array;
   type BasicComponentView_Access_Array_Access_Array is array (Natural range <>) of BasicComponentView_Access_Array_Access;
   type BasicComponentView_Access_Array_Access_Array_Access is access all BasicComponentView_Access_Array_Access_Array;

   type BasicComponentView is new Java_Object and TransformInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      transformDocumentInterface : TransformDocumentInterface_Access;
      transformInfoInterface : TransformInfoInterface_Access;
      NO_TYPE : Integer;
   end record;

   procedure Initialize (This : in out BasicComponentView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return BasicComponentView_Access;
   function getTypeId (This : in out BasicComponentView) return Integer;
   function getTransformDocumentInterface (This : in out BasicComponentView) return TransformDocumentInterface_Access;
   procedure setTransformDocumentInterface (This : in out BasicComponentView; transformDocumentInterface_Param : access TransformDocumentInterface_Package.TransformDocumentInterface'Class);
   function getTransformInfoInterface (This : in out BasicComponentView) return TransformInfoInterface_Access;
   procedure setTransformInfoInterface (This : in out BasicComponentView; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class);
   function toXmlDoc (This : in out BasicComponentView) return Document_Access;
   function getDoc (This : in out BasicComponentView) return Document_Access;
   function view (This : in out BasicComponentView) return Unbounded_String;

end views.BasicComponentView_Package;


