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


package body org.allbinary.business.user.commerce.money.tax.TaxFactory_Package is

   procedure Initialize_Fields (This : in out TaxFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.TAXATIONFILENAME := To_Unbounded_String ("taxationMethod.xml");
   end Initialize_Fields;


   function getInstance return TaxFactory_Access is
   begin
        return TaxFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out TaxFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TaxFactory_Access is
      This : constant TaxFactory_Access := new TaxFactory;
   begin
      TaxFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TaxFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return TaxModuleInterface_Access is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      stringBuffer : StringMaker_Access;
      abPath : AbPath_Access;
      transformInfoObjectConfigData : TransformInfoObjectConfigData_Access;
      data : Unbounded_String;
      document : Document_Access;
      taxNameNodeList : NodeList_Access;
      node : Node_Access;
      nodeList : NodeList_Access;
      classNameNode : Node_Access;
      className : Unbounded_String;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (URLGLOBALS.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
        stringBuffer.append (storeFrontInterface.getName);
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        stringBuffer.append (To_Unbounded_String ("generic"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        stringBuffer.append (To_Unbounded_String ("taxes"));
        stringBuffer.append (AbPathData_Package.getInstance.SEPARATOR);
        abPath := AbPath_Package.Create (stringBuffer.toString, This.TAXATIONFILENAME);
        transformInfoObjectConfigData := TransformInfoObjectConfigData_Package.getInstance;
        data := CryptFileReader_Package.Create (transformInfoObjectConfigData.UNCRYPTED_EXTENSION, transformInfoObjectConfigData.ENCRYPTED_EXTENSION).get (abPath);
        document := DomDocumentHelper_Package.create (data);
        taxNameNodeList := document.getElementsByTagName (TaxData_Package.NAME);
        for index in 0 .. (taxNameNodeList.getLength) - 1 loop
            node := taxNameNodeList.item (index);
            nodeList := node.getChildNodes;
            if (nodeList) /= (null) then
                classNameNode := DomSearchHelper_Package.getNode (DynamicObjectData_Package.NAME, nodeList);
                if (classNameNode) /= (null) then
                    className := DomNodeHelper_Package.getTextNodeValue (classNameNode);
                    return TaxModuleInterface_Access (AbeFactory_Package.getInstance.getInstance (abeClientInformation, className));
                else
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAX) then
                        This.logUtil.putF (To_Unbounded_String ("Class Node Null"), TaxFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
                    end if;
                end if;
            else
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAX) then
                    This.logUtil.putF (To_Unbounded_String ("Tax Name Node Node Children"), TaxFactory_Access'(This'Unchecked_Access), This.commonStrings.GET_INSTANCE);
                end if;
            end if;
        end loop;
        return TaxModuleInterface_Access (SimpleStateTaxModule_Package.Create);
   end getInstance;

   procedure getInstance (This : in out TaxFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant TaxModuleInterface_Access := TaxFactory'Class (This).getInstance (abeClientInformation_Param, storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := TaxFactory_Package.Create;

end org.allbinary.business.user.commerce.money.tax.TaxFactory_Package;


