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


package body views.admin.customizers.CustomizersView_Package is

   procedure Initialize_Fields (This : in out CustomizersView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out CustomizersView'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        This.customizersVector := TransformInfoEntityBuilder_Package.getInstance.getNames (This.getWeblisketSession.getStoreName);
   end Initialize;

   function Create (transformInfoInterface_Param : access TransformInfoInterface'Class) return CustomizersView_Access is
      This : constant CustomizersView_Access := new CustomizersView;
   begin
      CustomizersView_Package.Initialize (This.all, transformInfoInterface_Param);
      return This;
   end Create;

   function toXmlNode (This : in out CustomizersView; document_Param : access Document'Class) return Node_Access is
      document : Document_Access := Document_Access (document_Param);
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
            unsortedCustomizerViewVector := BasicArrayListD_Package.Create;
            size := This.customizersVector.size;
            for index in 0 .. (size) - 1 loop
                viewName := Unbounded_String (This.customizersVector.get (index));
                if (((((Index (viewName, To_String (CustomizerTransformInfoData_Package.NAME)) - 1)) > (0)) and then (((Index (viewName, To_String (GLOBALS2.EDIT)) - 1)) > (0))) and then (((Index (viewName, To_String (BodyData_Package.getInstance.VIEWNAMEKEY)) - 1)) > (0))) and then (((Index (viewName, To_String (TitleData_Package.getInstance.VIEWNAMEKEY)) - 1)) > (0)) then
                    unsortedCustomizerViewVector.add (viewName);
                end if;
            end loop;
            objectArray := Java_Object_Access_Array_Access (unsortedCustomizerViewVector.toArray);
            Arrays_Package.sort (objectArray, StringComparator_Package.Create);
            for index in 0 .. (objectArray'Length) - 1 loop
                viewName := Unbounded_String (objectArray (index));
                viewNameNode := ModDomHelper_Package.createNameValueNodes (document, TransformTemplateCustomizerData_Package.NAME, viewName, TransformTemplateCustomizerUtil_Package.getInstance.getPageNameHack (viewName, This.getWeblisketSession.getStoreName));
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
        This.addDomNodeInterface (DomNodeInterface_Access (CustomizersView_Access'(This'Unchecked_Access)));
   end addDomNodeInterfaces;

   --  throws Exception
   function view (This : in out CustomizersView) return Unbounded_String is
   begin
        begin
            This.addDomNodeInterfaces;
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

   procedure toXmlNode (This : in out CustomizersView; document_Param : access Document'Class) is
      Java_Result : constant Node_Access := CustomizersView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end views.admin.customizers.CustomizersView_Package;


