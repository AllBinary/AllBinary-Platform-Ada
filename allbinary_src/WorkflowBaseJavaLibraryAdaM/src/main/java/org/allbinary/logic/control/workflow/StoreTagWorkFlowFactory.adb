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


with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package is

   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out StoreTagWorkFlowFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return StoreTagWorkFlowFactory_Access is
   begin
        return StoreTagWorkFlowFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StoreTagWorkFlowFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreTagWorkFlowFactory_Access is
      This : constant StoreTagWorkFlowFactory_Access := new StoreTagWorkFlowFactory;
   begin
      StoreTagWorkFlowFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out StoreTagWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return StoreWorkFlowInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
      workFlowClassName : Unbounded_String;
      stringBuffer : StringMaker_Access;
      commonStrings : CommonStrings_Access;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
   begin
        begin
            workFlowClassName := Java_Unbox (propertiesHashMap.get (DynamicObjectData_Package.NAME));
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORY) then
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Creating WorkFlow: "));
                stringBuffer.append (workFlowClassName);
                stringBuffer.append (To_Unbounded_String ("->"));
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (StoreTagWorkFlowFactory_Package.instance.all'Tag)));
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.putF (stringBuffer.toString, StoreTagWorkFlowFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
            end if;
            params := new Java_Object_Access_Array'(0 .. (2) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (2) - 1 => Ada.Tags.No_Tag);
            classes (0) := propertiesHashMap.all'Tag;
            classes (1) := AbeFactory_Package.getInstance.getClass (abeClientInformation, To_Unbounded_String ("javax.servlet.jsp.PageContext"));
            params (0) := Java_Object_Access (propertiesHashMap);
            params (1) := Java_Object_Access (pageContext);
            return StoreWorkFlowInterface_Access (AbeFactory_Package.getInstance.getInstance (abeClientInformation, workFlowClassName, classes, params));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                workFlowClassName := Java_Unbox (propertiesHashMap.get (DynamicObjectData_Package.NAME));
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Error Creating WorkFlow: "));
                stringBuffer.append (workFlowClassName);
                stringBuffer.append (To_Unbounded_String ("->"));
                stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (StoreTagWorkFlowFactory_Package.instance.all'Tag)));
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (stringBuffer.toString, StoreTagWorkFlowFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out StoreTagWorkFlowFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant StoreWorkFlowInterface_Access := StoreTagWorkFlowFactory'Class (This).getInstance (abeClientInformation_Param, propertiesHashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StoreTagWorkFlowFactory_Package.Create;

end org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory_Package;


