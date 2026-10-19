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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package; use org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.globals.GLOBALS2_Package; use org.allbinary.globals.GLOBALS2_Package;
with org.allbinary.logic.control.sort.StringComparator_Package; use org.allbinary.logic.control.sort.StringComparator_Package;
with org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package; use org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;
with org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizerData_Package; use org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizerData_Package;
with org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizersData_Package; use org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizersData_Package;
with org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package; use org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
with org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package; use org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package; use org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;

package body views.admin.customizers.CustomizersView_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package TransformInfoEntityBuilder_Package renames Standard.org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package GLOBALS2_Package renames Standard.org.allbinary.globals.GLOBALS2_Package;
   package StringComparator_Package renames Standard.org.allbinary.logic.control.sort.StringComparator_Package;
   package CustomizerTransformInfoData_Package renames Standard.org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;
   package TransformTemplateCustomizerData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizerData_Package;
   package TransformTemplateCustomizersData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.TransformTemplateCustomizersData_Package;
   package BodyData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.bodies.BodyData_Package;
   package TitleData_Package renames Standard.org.allbinary.logic.visual.transform.template.customizer.widgets.title.TitleData_Package;
   package TransformTemplateCustomizerUtil_Package renames Standard.org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
   procedure Initialize_Fields (This : in out CustomizersView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CustomizersView'Class; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) is
      transformInfoInterface : constant TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.customizersVector := TransformInfoEntityBuilder_Package.getInstance.getNames (CustomizersView'Class (This).getWeblisketSession.getStoreName);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class) return CustomizersView_Access is
      This : constant CustomizersView_Access := new CustomizersView;
   begin
      CustomizersView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function toXmlNode (This : in out CustomizersView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      unsortedCustomizerViewVector : BasicArrayList_Access;
      size : Integer;
      viewName : Unbounded_String;
      index : Integer;
      objectArray : Java_Object_Access_Array_Access;
      viewNameNode : Node_Access;
   begin
        begin
            node := document.createElement (TransformTemplateCustomizersData_Package.NAME);
            unsortedCustomizerViewVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            size := This.customizersVector.size;
            for index in 0 .. (size) - 1 loop
                viewName := Java_Unbox (This.customizersVector.get (index));
                if ((((Java_Index_Of (viewName, Java_Image (CustomizerTransformInfoData_Package.NAME))) > (0)) and then ((Java_Index_Of (viewName, Java_Image (GLOBALS2_Package.EDIT))) > (0))) and then ((Java_Index_Of (viewName, Java_Image (BodyData_Package.getInstance.VIEWNAMEKEY))) > (0))) and then ((Java_Index_Of (viewName, Java_Image (TitleData_Package.getInstance.VIEWNAMEKEY))) > (0)) then
                    unsortedCustomizerViewVector.add (viewName);
                end if;
            end loop;
            objectArray := Java_Object_Access_Array_Access (unsortedCustomizerViewVector.toArray);
            Arrays_Package.sort (objectArray, StringComparator_Package.Create);
            for index in 0 .. (objectArray'Length) - 1 loop
                viewName := Java_Unbox (objectArray (index));
                viewNameNode := ModDomHelper_Package.createNameValueNodes (document, TransformTemplateCustomizerData_Package.NAME, viewName, TransformTemplateCustomizerUtil_Package.getInstance.getPageNameHack (viewName, CustomizersView'Class (This).getWeblisketSession.getStoreName));
                node.appendChild (viewNameNode);
            end loop;
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.XSLLOGGINGERROR) then
                This.logUtil.put (This.commonStrings.FAILURE, CustomizersView_Access'(This'Unchecked_Access), To_Unbounded_String ("toXmlNode"), e);
            end if;
            return null;
                end;
        end;
   end toXmlNode;

   procedure addDomNodeInterfaces (This : in out CustomizersView) is
   begin
        CustomizersView'Class (This).addDomNodeInterface (DomNodeInterface_Access (CustomizersView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out CustomizersView) return Unbounded_String is
   begin
        begin
            CustomizersView'Class (This).addDomNodeInterfaces;
            return HttpStoreComponentView (This).view;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERERROR) then
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, CustomizersView_Access'(This'Unchecked_Access), To_Unbounded_String ("view()"), e);
            end if;
            Java_Throw (e);
                end;
        end;
   end view;

   procedure toXmlNode (This : in out CustomizersView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := CustomizersView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.admin.customizers.CustomizersView_Package;


