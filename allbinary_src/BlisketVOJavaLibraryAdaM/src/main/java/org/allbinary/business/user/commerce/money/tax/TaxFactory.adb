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
with org.allbinary.business.user.commerce.money.tax.components.TaxData_Package; use org.allbinary.business.user.commerce.money.tax.components.TaxData_Package;
with org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package; use org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body org.allbinary.business.user.commerce.money.tax.TaxFactory_Package is

   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package TaxData_Package renames Standard.org.allbinary.business.user.commerce.money.tax.components.TaxData_Package;
   package SimpleStateTaxModule_Package renames Standard.org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   package TransformInfoObjectConfigData_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
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
        stringBuffer.append (URLGLOBALS_Package.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
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


