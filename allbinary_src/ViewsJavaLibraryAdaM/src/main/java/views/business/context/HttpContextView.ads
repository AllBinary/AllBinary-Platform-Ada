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
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.ContextTransformer_Package; use org.allbinary.logic.visual.transform.ContextTransformer_Package;
with org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package; use org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with views.HttpComponentView_Package; use views.HttpComponentView_Package;

package views.business.context.HttpContextView_Package is

   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ContextTransformer_Package renames Standard.org.allbinary.logic.visual.transform.ContextTransformer_Package;
   package TransformHttpRequestDocumentFactory_Package renames Standard.org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package HttpComponentView_Package renames Standard.views.HttpComponentView_Package;

   type HttpContextView is tagged;
   type HttpContextView_Access is access all HttpContextView'Class;
   type HttpContextView_Access_Array is array (Natural range <>) of HttpContextView_Access;
   type HttpContextView_Access_Array_Access is access all HttpContextView_Access_Array;

   type HttpContextView is new HttpComponentView with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   end record;

   procedure Initialize (This : in out HttpContextView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return HttpContextView_Access;
   function view (This : in out HttpContextView) return Unbounded_String;
   procedure view (This : in out HttpContextView);

end views.business.context.HttpContextView_Package;


