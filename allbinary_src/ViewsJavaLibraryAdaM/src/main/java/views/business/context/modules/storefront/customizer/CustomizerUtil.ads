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
with org.allbinary.data.tables.transform.info.TransformInfoEntity_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.visual.transform.info.TransformInfo_Package; use org.allbinary.logic.visual.transform.info.TransformInfo_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package views.business.context.modules.storefront.customizer.CustomizerUtil_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package TransformInfoEntity_Package renames org.allbinary.data.tables.transform.info.TransformInfoEntity_Package;
   package TransformInfoEntityBuilder_Package renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomDocumentHelper_Package renames org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package TransformInfo_Package renames org.allbinary.logic.visual.transform.info.TransformInfo_Package;
   package TransformInfoHttpInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformInfoObjectConfigInterface_Package renames org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;

   type CustomizerUtil is tagged;
   type CustomizerUtil_Access is access all CustomizerUtil'Class;
   type CustomizerUtil_Access_Array is array (Natural range <>) of CustomizerUtil_Access;
   type CustomizerUtil_Access_Array_Access is access all CustomizerUtil_Access_Array;

   type CustomizerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CustomizerUtil_Access;

   procedure Initialize (This : in out CustomizerUtil'Class);
   function Create return CustomizerUtil_Access;
   function getInstance return CustomizerUtil_Access;
   procedure getInstance;
   function getTransformInfoInterfaceToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface : TransformInfoInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return TransformInfoInterface_Access;
   procedure getTransformInfoInterfaceToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface : TransformInfoInterface_Access; transformInfoInterface : TransformInfoInterface_Access);
   function getTransformInfoObjectConfigComponentNodesToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface : TransformInfoInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return BasicArrayList_Access;
   procedure getTransformInfoObjectConfigComponentNodesToCustomize (This : in out CustomizerUtil; customizerTransformInfoInterface : TransformInfoInterface_Access; transformInfoInterface : TransformInfoInterface_Access);
   function getTransformInfoObjectConfigComponentNodes (This : in out CustomizerUtil; transformInfoInterface : TransformInfoInterface_Access) return BasicArrayList_Access;
   procedure getTransformInfoObjectConfigComponentNodes (This : in out CustomizerUtil; transformInfoInterface : TransformInfoInterface_Access);
   function getTransformInfoObjectConfigGroupComponentNodes (This : in out CustomizerUtil; transformInfoInterface : TransformInfoInterface_Access) return BasicArrayList_Access;
   procedure getTransformInfoObjectConfigGroupComponentNodes (This : in out CustomizerUtil; transformInfoInterface : TransformInfoInterface_Access);
   procedure insert (This : in out CustomizerUtil; transformInfoInterface : TransformInfoInterface_Access; domNodeInterface : DomNodeInterface_Access);
   procedure write (This : in out CustomizerUtil; specifiedTransformInfoInterface : TransformInfoInterface_Access; documentString : Unbounded_String);
   function getViewDataForComponentsInObjectConfig (This : in out CustomizerUtil; transformInfoInterface : TransformInfoInterface_Access) return Document_Access;
   procedure getViewDataForComponentsInObjectConfig (This : in out CustomizerUtil; transformInfoInterface : TransformInfoInterface_Access);

end views.business.context.modules.storefront.customizer.CustomizerUtil_Package;


