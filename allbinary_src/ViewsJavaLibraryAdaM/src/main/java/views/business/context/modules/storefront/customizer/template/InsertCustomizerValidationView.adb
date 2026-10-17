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


package body views.business.context.modules.storefront.customizer.template.InsertCustomizerValidationView_Package is

   procedure Initialize_Fields (This : in out InsertCustomizerValidationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out InsertCustomizerValidationView'Class; transformInfoInterface : TransformInfoInterface_Access) is
      requestHashMap : HashMap_Access;
   begin
        HttpStoreComponentView_Package.Initialize (This, transformInfoInterface);
        Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
            This.logUtil.putF (To_Unbounded_String ("View Name: ") & transformInfoInterface.getName, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        end if;
        requestHashMap := RequestParams_Package.Create (This.getPageContext).toHashMap;
        This.viewName := Unbounded_String (requestHashMap.get (TransformInfoData_Package.getInstance.NAME));
   end Initialize;

   function Create (transformInfoInterface : TransformInfoInterface_Access) return InsertCustomizerValidationView_Access is
      This : constant InsertCustomizerValidationView_Access := new InsertCustomizerValidationView;
   begin
      InsertCustomizerValidationView_Package.Initialize (This.all, transformInfoInterface);
      return This;
   end Create;

   function isValid (This : in out InsertCustomizerValidationView) return Boolean is
      isValid : Boolean;
      objectConfig : NoTemplateTransformInfoObjectConfig_Access;
      componentVector : BasicArrayList_Access;
      size : Integer;
      stringBuffer : StringMaker_Access;
      transformInfo : TransformInfo_Access;
      transformInfoName : Unbounded_String;
      componentInterface : TransformInterface_Access;
      templateViewObjectConfig : InsertTemplateCustomizerTransformInfoObjectConfig_Access;
      storeName : Unbounded_String;
      endIndex : Integer;
      storePrepend : Unbounded_String;
      viewNamePostfix : Unbounded_String;
      newViewNameStringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
      transformInfosData : TransformInfosData_Access;
      newViewName : Unbounded_String;
      updatedTransformInfoHashMap : HashMap_Access;
      index : Integer;
   begin
        begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                This.logUtil.putF (To_Unbounded_String ("Started Validation"), This'Unchecked_Access, This.commonStrings.IS_VALID);
            end if;
            isValid := True;
            if StringValidationUtil_Package.getInstance.isEmpty (This.viewName) then
                isValid := False;
            else
                objectConfig := NoTemplateTransformInfoObjectConfig_Package.Create (This.getTransformInfoInterface, This.getTransformInfoInterface.getObjectConfigInterface.toXmlDoc);
                componentVector := objectConfig.getGroupTransforms;
                size := componentVector.size;
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("Pointing "));
                    stringBuffer.appendint (componentVector.size);
                    stringBuffer.append (To_Unbounded_String (" Components"));
                    This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
                end if;
                for index in 0 .. (size) - 1 loop
                    transformInfo := TransformInfo_Access (componentVector.get (index));
                    transformInfoName := transformInfo.getName;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        This.logUtil.putF (To_Unbounded_String ("Setting Template Component with ViewName: ") & transformInfoName, This'Unchecked_Access, This.commonStrings.IS_VALID);
                    end if;
                    componentInterface := TransformFactory_Package.getInstance.getInstance (This.abeClientInformation, transformInfoName, This.getTransformInfoInterface);
                    templateViewObjectConfig := InsertTemplateCustomizerTransformInfoObjectConfig_Package.Create (componentInterface.getTransformInfoInterface, componentInterface.getTransformInfoInterface.getObjectConfigInterface.toXmlDoc);
                    storeName := This.getTransformInfoInterface.getStoreName;
                    endIndex := ((Index (This.viewName, To_String (storeName)) - 1)) + (Length (storeName));
                    storePrepend := Unbounded_Slice (This.viewName, (0) + 1, endIndex);
                    viewNamePostfix := Unbounded_Slice (This.viewName, (endIndex) + 1, Length (This.viewName));
                    newViewNameStringBuffer := StringMaker_Package.Create;
                    newViewNameStringBuffer.append (storePrepend);
                    commonSeps := CommonSeps_Package.getInstance;
                    transformInfosData := TransformInfosData_Package.getInstance;
                    if ((Index (transformInfoName, To_String (transformInfosData.SMALL_PREVIEW)) - 1)) >= (0) then
                        newViewNameStringBuffer.append (commonSeps.SPACE);
                        newViewNameStringBuffer.append (transformInfosData.SMALL_PREVIEW);
                    elsif ((Index (transformInfoName, To_String (transformInfosData.PREVIEW)) - 1)) >= (0) then
                        newViewNameStringBuffer.append (commonSeps.SPACE);
                        newViewNameStringBuffer.append (transformInfosData.PREVIEW);
                    end if;
                    newViewNameStringBuffer.append (commonSeps.SPACE);
                    newViewNameStringBuffer.append (viewNamePostfix);
                    if ((Index (transformInfoName, To_String (GeneratorTransformInfoData_Package.NAME)) - 1)) >= (0) then
                        newViewNameStringBuffer.append (commonSeps.SPACE);
                        newViewNameStringBuffer.append (GeneratorTransformInfoData_Package.NAME);
                    end if;
                    newViewName := newViewNameStringBuffer.toString;
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (To_Unbounded_String ("Template Component: "));
                        stringBuffer.append (transformInfoName);
                        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & " Now Pointing To View Name: "));
                        stringBuffer.append (newViewName);
                        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
                    end if;
                    templateViewObjectConfig.set (newViewName);
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEW) then
                        stringBuffer := StringMaker_Package.Create;
                        stringBuffer.append (To_Unbounded_String ("Template Component: "));
                        stringBuffer.append (transformInfoName);
                        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & " with ObjectConfig: "));
                        stringBuffer.append (templateViewObjectConfig.toString);
                        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
                    end if;
                    componentInterface.getTransformInfoInterface.setObjectConfigInterface (templateViewObjectConfig);
                    updatedTransformInfoHashMap := componentInterface.getTransformInfoInterface.toHashMap;
                    TransformInfoEntityBuilder_Package.getInstance.update (updatedTransformInfoHashMap);
                end loop;
            end if;
            return isValid;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   function validationInfo (This : in out InsertCustomizerValidationView) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        begin
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (To_Unbounded_String ("Error: Template Name Is Empty."));
            return stringBuffer.toString;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to generate validation error info"), This'Unchecked_Access, To_Unbounded_String ("validationInfo()"), e);
            end if;
            return To_Unbounded_String ("Error Getting Validation Info");
                end;
        end;
   end validationInfo;

   function toValidationInfoDoc (This : in out InsertCustomizerValidationView) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out InsertCustomizerValidationView; document : Document_Access) return Node_Access is
   begin
        return null;
   end toValidationInfoNode;

   --  throws Exception
   function view (This : in out InsertCustomizerValidationView) return Unbounded_String is
   begin
        return This.views.ValidationOnlyTempUtil.getInstance.view (This'Unchecked_Access);
   end view;

   procedure toValidationInfoNode (This : in out InsertCustomizerValidationView; document : Document_Access) is
      Java_Result : constant Node_Access := InsertCustomizerValidationView'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

end views.business.context.modules.storefront.customizer.template.InsertCustomizerValidationView_Package;


