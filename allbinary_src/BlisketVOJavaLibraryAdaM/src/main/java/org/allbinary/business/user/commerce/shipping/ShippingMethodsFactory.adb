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


package body org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package is

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

   procedure Initialize (This : in out ShippingMethodsFactory'Class; abeClientInformation : AbeClientInformationInterface_Access; storeFrontInterface : StoreFrontInterface_Access) is
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
        stringBuffer.append (URLGLOBALS.getMainPath);
        stringBuffer.append (FREEBLISKET_PATH_GLOBALS.getInstance.XSLPATH);
        stringBuffer.append (storeFrontInterface.getName);
        stringBuffer.append (sep);
        stringBuffer.append (ShippingMethodsFactory_Package.SHIPPINGMETHODSFILEPATHSTRING);
        abPath := AbPath_Access (AbPath_Package.Create (stringBuffer.toString, SHIPPINGMETHODSFILENAME));
        data := CryptFileReader_Package.Create (TransformInfoObjectConfigData_Package.getInstance.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData_Package.getInstance.ENCRYPTED_EXTENSION).get (abPath);
        This.document := DomDocumentHelper_Package.create (data);
        This.shippingVector := BasicArrayListD_Package.Create;
        nodeList := This.document.getElementsByTagName (ShippingMethodsData_Package.NAME);
        for index in 0 .. (nodeList.getLength) - 1 loop
            node := nodeList.item (index);
            shippingMethodNodeChildren := node.getChildNodes;
            shippingMethodNameNode := DomSearchHelper_Package.getNode (ShippingMethodData_Package.NAME, shippingMethodNodeChildren);
            classNameNode := DomSearchHelper_Package.getNode (DynamicObjectData_Package.NAME, shippingMethodNameNode.getChildNodes);
            shippingMethodClassName := DomNodeHelper_Package.getTextNodeValue (classNameNode);
            shippingMethodInterface := ShippingInterface_Access (AbeFactory_Package.getInstance.getInstance (abeClientInformation, shippingMethodClassName));
            This.shippingVector.add (shippingMethodInterface);
            defaultShippingMethodNameNode := DomSearchHelper_Package.getNode (ShippingMethodData_Package.DEFAULT, shippingMethodNameNode.getChildNodes);
            defaultShippingMethodNameNodeValue := DomNodeHelper_Package.getTextNodeValue (defaultShippingMethodNameNode);
            if ((defaultShippingMethodNameNodeValue) /= (Null_Unbounded_String)) and then ((defaultShippingMethodNameNodeValue.compareTo (ShippingMethodData_Package.DEFAULT)) = (0)) then
                This.defaultShippingMethodInterface := shippingMethodInterface;
            end if;
        end loop;
        if (This.shippingVector.size) < (1) then
            This.defaultShippingMethodInterface := BasicWeightShippingModuleView_Package.Create;
            This.shippingVector.add (This.defaultShippingMethodInterface);
            This.shippingVector.add (NoShippingModuleView_Package.Create);
        end if;
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; storeFrontInterface : StoreFrontInterface_Access) return ShippingMethodsFactory_Access is
      This : constant ShippingMethodsFactory_Access := new ShippingMethodsFactory;
   begin
      Initialize (This.all, abeClientInformation, storeFrontInterface);
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

   procedure getInstance (This : in out ShippingMethodsFactory) is
      Java_Result : constant BasicArrayList_Access := ShippingMethodsFactory'Class (This).getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getDefaultInstance (This : in out ShippingMethodsFactory) is
      Java_Result : constant ShippingInterface_Access := ShippingMethodsFactory'Class (This).getDefaultInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDefaultInstance;

begin
   null;
   SHIPPINGMETHODSFILEPATHSTRING := Null_Unbounded_String;
   SHIPPINGMETHODSFILENAME := To_Unbounded_String ("shippingMethods.xml");

end org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package;


