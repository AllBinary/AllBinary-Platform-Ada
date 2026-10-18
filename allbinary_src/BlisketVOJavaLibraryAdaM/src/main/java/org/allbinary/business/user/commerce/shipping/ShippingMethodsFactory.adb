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
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView_Package; use org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView_Package;
with org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package; use org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.loader.AbeFactory_Package; use org.allbinary.logic.system.loader.AbeFactory_Package;
with org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package; use org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodsData_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;

package body org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package BasicWeightShippingModuleView_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.BasicWeightShippingModuleView_Package;
   package NoShippingModuleView_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.NoShippingModuleView_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package AbeFactory_Package renames Standard.org.allbinary.logic.system.loader.AbeFactory_Package;
   package TransformInfoObjectConfigData_Package renames Standard.org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out ShippingMethodsFactory'Class) is
   begin
      null;
      This.defaultShippingMethodInterface := null;
      
      
   end Initialize_Fields;


   --  Java static initializer: call this once
   procedure Initializer is
      stringBuffer : StringMaker_Access;
      sep : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        sep := AbPathData_Package.getInstance.SEPARATOR;
        stringBuffer.append (sep);
        stringBuffer.append (To_Unbounded_String ("generic"));
        stringBuffer.append (sep);
        stringBuffer.append (To_Unbounded_String ("shipping"));
        stringBuffer.append (sep);
        SHIPPINGMETHODSFILEPATHSTRING := stringBuffer.toString;
   end Initializer;

   procedure Initialize (This : in out ShippingMethodsFactory'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      stringBuffer : StringMaker_Access;
      sep : Unbounded_String;
      abPath : AbPath_Access;
      data : Unbounded_String;
      nodeList : NodeList_Access;
      node : Node_Access;
      shippingMethodNodeChildren : NodeList_Access;
      shippingMethodNameNode : Node_Access;
      classNameNode : Node_Access;
      shippingMethodClassName : Unbounded_String;
      shippingMethodInterface : ShippingInterface_Access;
      defaultShippingMethodNameNode : Node_Access;
      defaultShippingMethodNameNodeValue : Unbounded_String;
      index : Integer;
   begin
      Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        sep := AbPathData_Package.getInstance.SEPARATOR;
        stringBuffer.append (URLGLOBALS_Package.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS_Package.getInstance.XSLPATH);
        stringBuffer.append (storeFrontInterface.getName);
        stringBuffer.append (sep);
        stringBuffer.append (ShippingMethodsFactory_Package.SHIPPINGMETHODSFILEPATHSTRING);
        abPath := AbPath_Access (AbPath_Package.Create (stringBuffer.toString, SHIPPINGMETHODSFILENAME));
        data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (abPath);
        This.document := DomDocumentHelper_Package.create (data);
        This.shippingVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        nodeList := This.document.getElementsByTagName (ShippingMethodsData_Package.NAME);
        for index in 0 .. (nodeList.getLength) - 1 loop
            node := nodeList.item (index);
            shippingMethodNodeChildren := node.getChildNodes;
            shippingMethodNameNode := DomSearchHelper_Package.getNode (ShippingMethodData_Package.NAME, shippingMethodNodeChildren);
            classNameNode := DomSearchHelper_Package.getNode (DynamicObjectData_Package.NAME, shippingMethodNameNode.getChildNodes);
            shippingMethodClassName := DomNodeHelper_Package.getTextNodeValue (classNameNode);
            shippingMethodInterface := ShippingInterface_Access (AbeFactory_Package.getInstance.getInstance (abeClientInformation, shippingMethodClassName));
            This.shippingVector.add (Java_Object_Access (shippingMethodInterface));
            defaultShippingMethodNameNode := DomSearchHelper_Package.getNode (ShippingMethodData_Package.DEFAULT, shippingMethodNameNode.getChildNodes);
            defaultShippingMethodNameNodeValue := DomNodeHelper_Package.getTextNodeValue (defaultShippingMethodNameNode);
            if ((defaultShippingMethodNameNodeValue) /= (Null_Unbounded_String)) and then ((Java_Compare_To (defaultShippingMethodNameNodeValue, ShippingMethodData_Package.DEFAULT)) = (0)) then
                This.defaultShippingMethodInterface := shippingMethodInterface;
            end if;
        end loop;
        if (This.shippingVector.size) < (1) then
            This.defaultShippingMethodInterface := ShippingInterface_Access (BasicWeightShippingModuleView_Package.Create);
            This.shippingVector.add (Java_Object_Access (This.defaultShippingMethodInterface));
            This.shippingVector.add (Java_Object_Access (NoShippingModuleView_Package.Create));
        end if;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return ShippingMethodsFactory_Access is
      This : constant ShippingMethodsFactory_Access := new ShippingMethodsFactory;
   begin
      ShippingMethodsFactory_Package.Initialize (This.all, abeClientInformation_Param, storeFrontInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ShippingMethodsFactory) return BasicArrayList_Access is
   begin
        return This.shippingVector;
   end getInstance;

   function getDefaultInstance (This : in out ShippingMethodsFactory) return ShippingInterface_Access is
   begin
        return This.defaultShippingMethodInterface;
   end getDefaultInstance;

begin
   null;
   SHIPPINGMETHODSFILEPATHSTRING := Null_Unbounded_String;
   SHIPPINGMETHODSFILENAME := To_Unbounded_String ("shippingMethods.xml");

end org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package;


