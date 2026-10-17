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
--  with java.util.Arrays_Package; use java.util.Arrays_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.control.sort.StringComparator_Package; use org.allbinary.logic.control.sort.StringComparator_Package;
with org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizerData_Package; use org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizerData_Package;
with org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizersData_Package; use org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizersData_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package; use org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with views.business.context.modules.storefront.HttpStoreComponentView_Package; use views.business.context.modules.storefront.HttpStoreComponentView_Package;

package views.admin.customizers.CustomizersView_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package TransformInfoEntityBuilder_Package renames org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package GLOBALS2_Package renames org.allbinary.globals.GLOBALS2_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringComparator_Package renames org.allbinary.logic.control.sort.StringComparator_Package;
   package CustomizerTransformInfoData_Package renames org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package TransformTemplateCustomizerData_Package renames org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizerData_Package;
   package TransformTemplateCustomizersData_Package renames org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizersData_Package;
   package BodyData_Package renames org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
   package TitleData_Package renames org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
   package TransformTemplateCustomizerUtil_Package renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package HttpStoreComponentView_Package renames views.business.context.modules.storefront.HttpStoreComponentView_Package;

   type CustomizersView is tagged;
   type CustomizersView_Access is access all CustomizersView'Class;
   type CustomizersView_Access_Array is array (Natural range <>) of CustomizersView_Access;
   type CustomizersView_Access_Array_Access is access all CustomizersView_Access_Array;

   type CustomizersView is new HttpStoreComponentView and DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      customizersVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out CustomizersView'Class; transformInfoInterface : TransformInfoInterface_Access);
   function Create (transformInfoInterface : TransformInfoInterface_Access) return CustomizersView_Access;
   function toXmlNode (This : in out CustomizersView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out CustomizersView; document : Document_Access);
   procedure addDomNodeInterfaces (This : in out CustomizersView);
   function view (This : in out CustomizersView) return Unbounded_String;
   procedure view (This : in out CustomizersView);

end views.admin.customizers.CustomizersView_Package;


