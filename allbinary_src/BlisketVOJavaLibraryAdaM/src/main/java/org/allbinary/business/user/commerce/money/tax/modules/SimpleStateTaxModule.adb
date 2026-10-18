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


with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;
with org.allbinary.business.user.commerce.money.tax.components.TaxData_Package; use org.allbinary.business.user.commerce.money.tax.components.TaxData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package is

   package StreetAddressData_Package renames Standard.org.allbinary.business.user.address.StreetAddressData_Package;
   package TaxData_Package renames Standard.org.allbinary.business.user.commerce.money.tax.components.TaxData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoObjectConfigData_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out SimpleStateTaxModule'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.streetAddress := null;
      This.storeFrontInterface := null;
      This.ALL_Id := CommonPhoneStrings_Package.getInstance.STAR;
      This.STATETAXPATH := To_Unbounded_String ("/generic/taxes/");
      This.STATETAXFILE := To_Unbounded_String ("stateTaxation.xml");
      This.document := null;
   end Initialize_Fields;


   procedure Initialize (This : in out SimpleStateTaxModule'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SimpleStateTaxModule_Access is
      This : constant SimpleStateTaxModule_Access := new SimpleStateTaxModule;
   begin
      SimpleStateTaxModule_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getTaxRate (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Float is
      streetAddress : constant StreetAddress_Access := StreetAddress_Access (streetAddress_Param);
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      fileAbPath : AbPath_Access;
      data : Unbounded_String;
      state : Unbounded_String;
      country : Unbounded_String;
      nodeList : NodeList_Access;
      node : Node_Access;
      taxNodeChildren : NodeList_Access;
      streetAddressNode : Node_Access;
      taxableStreetAddress : StreetAddress_Access;
      stringValidationUtil : StringValidationUtil_Access;
      rateNode : Node_Access;
      taxRate : Unbounded_String;
      taxRateFloat : Float;
      index : Integer;
   begin
        This.streetAddress := streetAddress;
        This.storeFrontInterface := storeFrontInterface;
        fileAbPath := AbPath_Package.Create (Java_Image ((URLGLOBALS_Package.getMainPath) + (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH)) & This.storeFrontInterface.getName & This.STATETAXPATH, This.STATETAXFILE);
        data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (fileAbPath);
        This.document := DomDocumentHelper_Package.create (data);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAX) then
            This.logUtil.putF (To_Unbounded_String ("Tax Doc: ") & XmlDocumentHelper_Package.toString (This.document), SimpleStateTaxModule_Access'(This'Unchecked_Access), To_Unbounded_String ("getTaxRate"));
        end if;
        state := This.streetAddress.getState;
        country := This.streetAddress.getCountry;
        state := Translate (state, Ada.Strings.Maps.Constants.Upper_Case_Map);
        nodeList := This.document.getElementsByTagName (TaxData_Package.NAME);
        for index in 0 .. (nodeList.getLength) - 1 loop
            node := nodeList.item (index);
            taxNodeChildren := node.getChildNodes;
            streetAddressNode := DomSearchHelper_Package.getNode (StreetAddressData_Package.NAME, taxNodeChildren);
            taxableStreetAddress := StreetAddress_Package.Create (streetAddressNode);
            stringValidationUtil := StringValidationUtil_Package.getInstance;
            if ((not (stringValidationUtil.isEmpty (country))) and then (not (stringValidationUtil.isEmpty (taxableStreetAddress.getCountry)))) and then ((Java_Compare_To (country, taxableStreetAddress.getCountry)) = (0)) then
                if (((state) /= (Null_Unbounded_String)) and then ((taxableStreetAddress.getState) /= (null))) and then ((Java_Compare_To (state, taxableStreetAddress.getState)) = (0)) then
                    rateNode := DomSearchHelper_Package.getNode (TaxData_Package.RATE, taxNodeChildren);
                    taxRate := DomNodeHelper_Package.getTextNodeValue (rateNode);
                    taxRateFloat := (taxRate.floatValue) * (0.01);
                    return taxRateFloat;
                end if;
            end if;
        end loop;
        return 0;
   end getTaxRate;

   function isValid (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Boolean is
      streetAddress : constant StreetAddress_Access := StreetAddress_Access (streetAddress_Param);
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      fileAbPath : AbPath_Access;
      data : Unbounded_String;
      country : Unbounded_String;
      rootNode : Node_Access;
      nodeList : NodeList_Access;
      node : Node_Access;
      taxNodeChildren : NodeList_Access;
      streetAddressNode : Node_Access;
      stringBuffer : StringMaker_Access;
      taxableStreetAddress : StreetAddress_Access;
      stringValidationUtil : StringValidationUtil_Access;
      state : Unbounded_String;
      index : Integer;
   begin
        begin
            This.streetAddress := streetAddress;
            This.storeFrontInterface := storeFrontInterface;
            fileAbPath := AbPath_Package.Create (Java_Image ((URLGLOBALS_Package.getMainPath) + (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH)) & This.storeFrontInterface.getName & This.STATETAXPATH, This.STATETAXFILE);
            data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (fileAbPath);
            This.document := DomDocumentHelper_Package.create (data);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAX) then
                This.logUtil.putF (To_Unbounded_String ("Tax Doc: ") & XmlDocumentHelper_Package.toString (This.document), SimpleStateTaxModule_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
            end if;
            country := This.streetAddress.getCountry;
            rootNode := This.document.getElementsByTagName (TransformInfoObjectConfigData_Package.getInstance.NAME).item (0);
            nodeList := This.document.getElementsByTagName (TaxData_Package.NAME);
            for index in 0 .. (nodeList.getLength) - 1 loop
                node := nodeList.item (index);
                taxNodeChildren := node.getChildNodes;
                streetAddressNode := DomSearchHelper_Package.getNode (StreetAddressData_Package.NAME, taxNodeChildren);
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAX) then
                    stringBuffer := StringMaker_Package.Create;
                    stringBuffer.append (To_Unbounded_String ("StreetAddress Node: "));
                    stringBuffer.append (streetAddressNode.getNodeName);
                    stringBuffer.append (To_Unbounded_String (" Value: "));
                    stringBuffer.append (streetAddressNode.getNodeValue);
                    stringBuffer.append (To_Unbounded_String (" Number Of Children: "));
                    stringBuffer.appendint (Integer (streetAddressNode.getChildNodes.getLength));
                    This.logUtil.putF (stringBuffer.toString, SimpleStateTaxModule_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID);
                end if;
                taxableStreetAddress := StreetAddress_Package.Create (streetAddressNode);
                stringValidationUtil := StringValidationUtil_Package.getInstance;
                if ((not (stringValidationUtil.isEmpty (country))) and then (not (stringValidationUtil.isEmpty (taxableStreetAddress.getCountry)))) and then ((taxableStreetAddress.getCountry.compareTo (This.ALL_Id)) = (0)) then
                    return True;
                end if;
                if ((not (stringValidationUtil.isEmpty (country))) and then (not (stringValidationUtil.isEmpty (taxableStreetAddress.getCountry)))) and then ((Java_Compare_To (country, taxableStreetAddress.getCountry)) = (0)) then
                    state := This.streetAddress.getState;
                    if (state) /= (Null_Unbounded_String) then
                        return True;
                    end if;
                end if;
            end loop;
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.VIEWERROR) then
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), SimpleStateTaxModule_Access'(This'Unchecked_Access), This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   procedure getTaxRate (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant Float := SimpleStateTaxModule'Class (This).getTaxRate (streetAddress_Param, storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTaxRate;

   procedure isValid (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      Java_Result : constant Boolean := SimpleStateTaxModule'Class (This).isValid (streetAddress_Param, storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package;


