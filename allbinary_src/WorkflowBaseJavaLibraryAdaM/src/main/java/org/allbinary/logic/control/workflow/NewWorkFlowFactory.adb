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


package body org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package is

   procedure Initialize_Fields (This : in out NewWorkFlowFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return NewWorkFlowFactory_Access is
   begin
        return NewWorkFlowFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out NewWorkFlowFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NewWorkFlowFactory_Access is
      This : constant NewWorkFlowFactory_Access := new NewWorkFlowFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out NewWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; hashMap : HashMap_Access; pageContext : PageContext_Access) return WorkFlowInterface_Access is
      className : Unbounded_String;
      params : Java_Object_Access_Array_Access;
      classes : Ada_Tags_Tag_Array_Access;
      anyType : Java_Object_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            className := Unbounded_String (hashMap.get (DynamicObjectData_Package.NAME));
            params := new Java_Object_Access_Array'(0 .. (2) - 1 => null);
            classes := new Ada_Tags_Tag_Array'(0 .. (2) - 1 => null);
            classes (0) := hashMap.all'Tag;
            classes (1) := AbeFactory_Package.getInstance.getClass (abeClientInformation, To_Unbounded_String ("javax.servlet.jsp.PageContext"));
            params (0) := Java_Object_Access (hashMap);
            params (1) := Java_Object_Access (pageContext);
            anyType := AbeFactory_Package.getInstance.getInstance (abeClientInformation, className, classes, params);
            return WorkFlowInterface_Access (WorkFlowWrapper_Package.Create (anyType));
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("getInstance(HashMap)"), e);
            end if;
            Java_Throw (e);
        end;
   end getInstance;

   --  throws Exception, LicensingException
   function getInstance (This : in out NewWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; className : Unbounded_String) return WorkFlowInterface_Access is
      stringUtil : StringUtil_Access;
      anyType : Java_Object_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            stringUtil := StringUtil_Package.getInstance;
            if ((className) /= (Null_Unbounded_String)) and then ((className.compareTo (stringUtil.EMPTY_STRING)) /= (0)) then
                anyType := AbeFactory_Package.getInstance.getInstance (abeClientInformation, className, null, null);
                return WorkFlowInterface_Access (WorkFlowWrapper_Package.Create (anyType));
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No WorkFlow ClassName")));
            end if;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAGHELPERFACTORYERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            end if;
            Java_Throw (e);
        end;
   end getInstance;

   procedure getInstance is
      Java_Result : constant NewWorkFlowFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out NewWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; hashMap : HashMap_Access; pageContext : PageContext_Access) is
      Java_Result : constant WorkFlowInterface_Access := NewWorkFlowFactory'Class (This).getInstance (abeClientInformation, hashMap, pageContext);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out NewWorkFlowFactory; abeClientInformation : AbeClientInformationInterface_Access; className : Unbounded_String) is
      Java_Result : constant WorkFlowInterface_Access := NewWorkFlowFactory'Class (This).getInstance (abeClientInformation, className);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NewWorkFlowFactory_Package.Create;

end org.allbinary.logic.control.workflow.NewWorkFlowFactory_Package;


