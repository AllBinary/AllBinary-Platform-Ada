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


with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.tokens.Tokenizer_Package; use org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
with org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package; use org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package; use org.allbinary.logic.communication.http.request.NameSpaceRequestParamData_Package;

package body org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package Tokenizer_Package renames Standard.org.allbinary.logic.string_Id.tokens.Tokenizer_Package;
   package HtmlNameMathData_Package renames Standard.org.allbinary.logic.visual.dhtml.html.name.HtmlNameMathData_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out NameSpaceRequestParam'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out NameSpaceRequestParam'Class; nameSpace : Unbounded_String; value : Unbounded_String) is
      beginIndex : Integer;
      packages : Unbounded_String;
      sepTokenizer : Tokenizer_Access;
      nameSpaceWithPropertiesVector : BasicArrayList_Access;
      nameSpaceAndPropertiesTokenizer : Tokenizer_Access;
      packageIndex : Integer;
      list : BasicArrayList_Access;
      index : Integer;
      size : Integer;
      nameSpaceWithProperties : Unbounded_String;
      nameSpaceAndPropertiesVector : BasicArrayList_Access;
      packageName : Unbounded_String;
      properties : Unbounded_String;
      packagePropertiesHashMap : HashMap_Access;
   begin
      Initialize_Fields (This);
        This.nameSpaceVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.nameSpacePropertiesHashMap := StdUtil_Package.getInstance.createHashMap;
        This.value := value;
        beginIndex := Java_Index_Of (nameSpace, Java_Image (NameSpaceRequestParamData_Package.NAME));
        if (beginIndex) < (0) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not a NameSpaceRequest")));
        end if;
        packages := Unbounded_Slice (nameSpace, (((beginIndex) + (NameSpaceRequestParamData_Package.NAME.length)) + (NameSpaceRequestParamData_Package.SEP.length)) + 1, Length (nameSpace));
        sepTokenizer := Tokenizer_Package.Create (NameSpaceRequestParamData_Package.SEP);
        nameSpaceWithPropertiesVector := sepTokenizer.getTokensFromString (packages, BasicArrayListD_Package.Create);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Sep Tokens: ") & nameSpaceWithPropertiesVector.toString, NameSpaceRequestParam_Access'(This'Unchecked_Access), To_Unbounded_String ("NameSpaceRequestParam()"));
        end if;
        nameSpaceAndPropertiesTokenizer := Tokenizer_Package.Create (NameSpaceRequestParamData_Package.PROPERTIES);
        packageIndex := 0;
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        index := 0;
        size := nameSpaceWithPropertiesVector.size;
        while (index) < (size) loop
            nameSpaceWithProperties := Java_Unbox (nameSpaceWithPropertiesVector.get (Java_Post_Increment (index)));
            list.clear;
            nameSpaceAndPropertiesVector := nameSpaceAndPropertiesTokenizer.getTokensFromString (nameSpaceWithProperties, list);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "PackageName and PackageName Properties Tokens: ") & nameSpaceAndPropertiesVector.toString, NameSpaceRequestParam_Access'(This'Unchecked_Access), To_Unbounded_String ("NameSpaceRequestParam()"));
            end if;
            if (nameSpaceAndPropertiesVector.size) > (0) then
                packageName := Java_Unbox (nameSpaceAndPropertiesVector.get (0));
                if (packageName) = (Null_Unbounded_String) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Package Name Is Null")));
                end if;
                This.nameSpaceVector.add (packageName);
                if (nameSpaceAndPropertiesVector.size) > (1) then
                    properties := Java_Unbox (nameSpaceAndPropertiesVector.get (1));
                    packagePropertiesHashMap := NameSpaceRequestParam'Class (This).generatePackagePropertiesHashMap (properties);
                    This.nameSpacePropertiesHashMap.put (Java_Box (To_Unbounded_String (Java_Image (packageIndex))), packagePropertiesHashMap);
                end if;
                packageIndex := packageIndex + 1;
            end if;
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("NameSpace: ") & This.nameSpaceVector.toString, NameSpaceRequestParam_Access'(This'Unchecked_Access), To_Unbounded_String ("NameSpaceRequestParam()"));
        end if;
   end Initialize;

   function Create (nameSpace : Unbounded_String; value : Unbounded_String) return NameSpaceRequestParam_Access is
      This : constant NameSpaceRequestParam_Access := new NameSpaceRequestParam;
   begin
      NameSpaceRequestParam_Package.Initialize (This.all, nameSpace, value);
      return This;
   end Create;

   function getPackages (This : in out NameSpaceRequestParam) return BasicArrayList_Access is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("NameSpace: ") & This.nameSpaceVector.toString, NameSpaceRequestParam_Access'(This'Unchecked_Access), To_Unbounded_String ("getPackages()"));
        end if;
        return This.nameSpaceVector;
   end getPackages;

   function getPackageProperties (This : in out NameSpaceRequestParam; packageIndex : Integer) return HashMap_Access is
      packagePropertiesHashMap : HashMap_Access;
   begin
        packagePropertiesHashMap := HashMap_Access (This.nameSpacePropertiesHashMap.get (Java_Box (To_Unbounded_String (Java_Image (packageIndex)))));
        if (packagePropertiesHashMap) = (null) then
            packagePropertiesHashMap := StdUtil_Package.getInstance.createHashMap;
        end if;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("Package Properties: ") & packagePropertiesHashMap.toString, NameSpaceRequestParam_Access'(This'Unchecked_Access), To_Unbounded_String ("getPackagesProperties()"));
        end if;
        return packagePropertiesHashMap;
   end getPackageProperties;

   function getValue (This : in out NameSpaceRequestParam) return Unbounded_String is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
            This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Value: ") & This.value, NameSpaceRequestParam_Access'(This'Unchecked_Access), To_Unbounded_String ("getValue()"));
        end if;
        return This.value;
   end getValue;

   --  throws Exception
   function generatePackagePropertiesHashMap (This : in out NameSpaceRequestParam; properties : Unbounded_String) return HashMap_Access is
      propertiesTokenizer : Tokenizer_Access;
      packagePropertiesHashMap : HashMap_Access;
      propertyVector : BasicArrayList_Access;
      list : BasicArrayList_Access;
      propertyTokenizer : Tokenizer_Access;
      index : Integer;
      size : Integer;
      property : Unbounded_String;
      propertyNameValueVector : BasicArrayList_Access;
      index2 : Integer;
      propertyName : Unbounded_String;
      propertyValue : Unbounded_String;
   begin
        propertiesTokenizer := Tokenizer_Package.Create (NameSpaceRequestParamData_Package.PROPERTIESSEPARATOR);
        packagePropertiesHashMap := StdUtil_Package.getInstance.createHashMap;
        propertyVector := propertiesTokenizer.getTokensFromString (properties, BasicArrayListD_Package.Create);
        list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        propertyTokenizer := Tokenizer_Package.Create (HtmlNameMathData_Package.getInstance.EQUALS);
        index := 0;
        size := propertyVector.size;
        while (index) < (size) loop
            property := Java_Unbox (propertyVector.get (index));
            list.clear;
            propertyNameValueVector := propertyTokenizer.getTokensFromString (property, list);
            index2 := 0;
            while (index2) < (propertyNameValueVector.size) loop
                propertyName := Java_Unbox (propertyNameValueVector.get (Java_Post_Increment (index2)));
                if (propertyNameValueVector.size) > (1) then
                    propertyValue := Java_Unbox (propertyNameValueVector.get (Java_Post_Increment (index2)));
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.HTTPREQUEST) then
                        This.logUtil.putF (To_Unbounded_String ("" & ASCII.LF & "Property Name: ") & propertyName & To_Unbounded_String ("" & ASCII.LF & "Property Value: ") & propertyValue, NameSpaceRequestParam_Access'(This'Unchecked_Access), To_Unbounded_String ("generatePackagePropertiesHashMap()"));
                    end if;
                    packagePropertiesHashMap.put (Java_Box (propertyName), Java_Box (propertyValue));
                else
                    packagePropertiesHashMap.put (Java_Box (propertyName), StringUtil_Package.getInstance.EMPTY_STRING);
                end if;
            end loop;
        end loop;
        return packagePropertiesHashMap;
   end generatePackagePropertiesHashMap;

   procedure getPackageProperties (This : in out NameSpaceRequestParam; packageIndex : Integer) is
      Java_Result : constant HashMap_Access := NameSpaceRequestParam'Class (This).getPackageProperties (packageIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPackageProperties;

   procedure generatePackagePropertiesHashMap (This : in out NameSpaceRequestParam; properties : Unbounded_String) is
      Java_Result : constant HashMap_Access := NameSpaceRequestParam'Class (This).generatePackagePropertiesHashMap (properties);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generatePackagePropertiesHashMap;

end org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package;


