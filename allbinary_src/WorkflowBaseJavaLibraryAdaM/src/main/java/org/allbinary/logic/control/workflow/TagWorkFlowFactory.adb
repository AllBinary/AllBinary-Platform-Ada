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


package body org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package is

   procedure Initialize_Fields (This : in out TagWorkFlowFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TagWorkFlowFactory_Access is
   begin
        return TagWorkFlowFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TagWorkFlowFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TagWorkFlowFactory_Access is
      This : constant TagWorkFlowFactory_Access := new TagWorkFlowFactory;
   begin
      TagWorkFlowFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out TagWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return WorkFlowInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      workFlowClassName : Unbounded_String;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      stringBuffer : StringMaker_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            workFlowClassName := Java_Unbox (propertiesHashMap.get (DynamicObjectData_Package.NAME));
            params := new Java_Object_Access_Array'(0 .. (2) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (2) - 1 => Ada.Tags.No_Tag);
            classes (0) := propertiesHashMap.all'Tag;
            classes (1) := AbeFactory_Package.getInstance.getClass (abeClientInformation, To_Unbounded_String ("javax.servlet.jsp.PageContext"));
            params (0) := Java_Object_Access (propertiesHashMap);
            params (1) := Java_Object_Access (pageContext);
            return WorkFlowInterface_Access (AbeFactory_Package.getInstance.getInstance (abeClientInformation, workFlowClassName, classes, params));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                workFlowClassName := Java_Unbox (propertiesHashMap.get (DynamicObjectData_Package.NAME));
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Failed To Get Instance: "));
                stringBuffer.append (workFlowClassName);
                stringBuffer.append (To_Unbounded_String ("->"));
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (TagWorkFlowFactory_Package.instance.all'Tag)));
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (stringBuffer.toString, TagWorkFlowFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out TagWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant WorkFlowInterface_Access := TagWorkFlowFactory'Class (This).getInstance (abeClientInformation_Param, propertiesHashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TagWorkFlowFactory_Package.Create;

end org.allbinary.logic.control.workflow.TagWorkFlowFactory_Package;


