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


package body org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package is

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
   function getTaxRate (This : in out SimpleStateTaxModule; streetAddress : StreetAddress_Access; storeFrontInterface : StoreFrontInterface_Access) return Float is
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
        fileAbPath := AbPath_Package.Create (Java_Image ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH)) & This.storeFrontInterface.getName & This.STATETAXPATH, This.STATETAXFILE);
        data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (fileAbPath);
        This.document := DomDocumentHelper_Package.create (data);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAX) then
            This.logUtil.putF (To_Unbounded_String ("Tax Doc: ") & XmlDocumentHelper_Package.toString (This.document), This'Unchecked_Access, To_Unbounded_String ("getTaxRate"));
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
            if ((not (stringValidationUtil.isEmpty (country))) and then (not (stringValidationUtil.isEmpty (taxableStreetAddress.getCountry)))) and then ((country.compareTo (taxableStreetAddress.getCountry)) = (0)) then
                if (((state) /= (Null_Unbounded_String)) and then ((taxableStreetAddress.getState) /= (null))) and then ((state.compareTo (taxableStreetAddress.getState)) = (0)) then
                    rateNode := DomSearchHelper_Package.getNode (TaxData_Package.RATE, taxNodeChildren);
                    taxRate := DomNodeHelper_Package.getTextNodeValue (rateNode);
                    taxRateFloat := (taxRate.floatValue) * (0.01);
                    return taxRateFloat;
                end if;
            end if;
        end loop;
        return 0;
   end getTaxRate;

   function isValid (This : in out SimpleStateTaxModule; streetAddress : StreetAddress_Access; storeFrontInterface : StoreFrontInterface_Access) return Boolean is
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
            fileAbPath := AbPath_Package.Create (Java_Image ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH)) & This.storeFrontInterface.getName & This.STATETAXPATH, This.STATETAXFILE);
            data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (fileAbPath);
            This.document := DomDocumentHelper_Package.create (data);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.TAX) then
                This.logUtil.putF (To_Unbounded_String ("Tax Doc: ") & XmlDocumentHelper_Package.toString (This.document), This'Unchecked_Access, This.commonStrings.IS_VALID);
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
                    This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.commonStrings.IS_VALID);
                end if;
                taxableStreetAddress := StreetAddress_Package.Create (streetAddressNode);
                stringValidationUtil := StringValidationUtil_Package.getInstance;
                if ((not (stringValidationUtil.isEmpty (country))) and then (not (stringValidationUtil.isEmpty (taxableStreetAddress.getCountry)))) and then ((taxableStreetAddress.getCountry.compareTo (This.ALL_Id)) = (0)) then
                    return True;
                end if;
                if ((not (stringValidationUtil.isEmpty (country))) and then (not (stringValidationUtil.isEmpty (taxableStreetAddress.getCountry)))) and then ((country.compareTo (taxableStreetAddress.getCountry)) = (0)) then
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
                This.logUtil.put (To_Unbounded_String ("Failed to validate"), This'Unchecked_Access, This.commonStrings.IS_VALID, e);
            end if;
            return False;
                end;
        end;
   end isValid;

   procedure getTaxRate (This : in out SimpleStateTaxModule; streetAddress : StreetAddress_Access; storeFrontInterface : StoreFrontInterface_Access) is
      Java_Result : constant Float := SimpleStateTaxModule'Class (This).getTaxRate (streetAddress, storeFrontInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTaxRate;

   procedure isValid (This : in out SimpleStateTaxModule; streetAddress : StreetAddress_Access; storeFrontInterface : StoreFrontInterface_Access) is
      Java_Result : constant Boolean := SimpleStateTaxModule'Class (This).isValid (streetAddress, storeFrontInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

end org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package;


