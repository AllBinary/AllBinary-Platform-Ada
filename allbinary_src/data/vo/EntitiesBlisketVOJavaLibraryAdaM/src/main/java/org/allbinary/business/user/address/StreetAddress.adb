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


with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.address.StreetAddressData_Package; use org.allbinary.business.user.address.StreetAddressData_Package;

package body org.allbinary.business.user.address.StreetAddress_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out StreetAddress'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
      
      This.isDefault_Field := False;
   end Initialize_Fields;


   procedure Initialize (This : in out StreetAddress'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      StreetAddress_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out StreetAddress'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      nameNode : Node_Access;
      streetNode : Node_Access;
      cityNode : Node_Access;
      stateNode : Node_Access;
      codeNode : Node_Access;
      countryNode : Node_Access;
   begin
      Initialize_Fields (This);
        nameNode := DomSearchHelper_Package.getNode (StreetAddressData_Package.NAME, node.getChildNodes);
        This.name := DomNodeHelper_Package.getTextNodeValue (nameNode);
        streetNode := DomSearchHelper_Package.getNode (StreetAddressData_Package.STREET, node.getChildNodes);
        This.street := DomNodeHelper_Package.getTextNodeValue (streetNode);
        cityNode := DomSearchHelper_Package.getNode (StreetAddressData_Package.CITY, node.getChildNodes);
        This.city := DomNodeHelper_Package.getTextNodeValue (cityNode);
        stateNode := DomSearchHelper_Package.getNode (StreetAddressData_Package.STATE, node.getChildNodes);
        This.state := DomNodeHelper_Package.getTextNodeValue (stateNode);
        codeNode := DomSearchHelper_Package.getNode (StreetAddressData_Package.CODE, node.getChildNodes);
        This.code := DomNodeHelper_Package.getTextNodeValue (codeNode);
        countryNode := DomSearchHelper_Package.getNode (StreetAddressData_Package.COUNTRY, node.getChildNodes);
        This.country := DomNodeHelper_Package.getTextNodeValue (countryNode);
        StreetAddress'Class (This).log;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      StreetAddress_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out StreetAddress'Class; streetAddress_Var_Param : access StreetAddress_Package.StreetAddress'Class) is
      streetAddress_Var : constant StreetAddress_Access := StreetAddress_Access (streetAddress_Var_Param);
   begin
      Initialize_Fields (This);
        This.id := streetAddress_Var.getId;
        This.name := streetAddress_Var.getName;
        This.street := streetAddress_Var.getStreet;
        This.city := streetAddress_Var.getCity;
        This.state := streetAddress_Var.getState;
        This.code := streetAddress_Var.getCode;
        This.country := streetAddress_Var.getCountry;
        This.isDefault_Field := streetAddress_Var.isDefault;
        StreetAddress'Class (This).log;
   end Initialize;

   function Create (streetAddress_Var_Param : access StreetAddress_Package.StreetAddress'Class) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      StreetAddress_Package.Initialize (This.all, streetAddress_Var_Param);
      return This;
   end Create;

   procedure Initialize (This : in out StreetAddress'Class; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) is
      request : constant HttpServletRequest_Access := HttpServletRequest_Access (request_Param);
   begin
      Initialize_Fields (This);
        StreetAddress'Class (This).setId (request.getParameter (StreetAddressData_Package.ID));
        StreetAddress'Class (This).setName (request.getParameter (StreetAddressData_Package.NAME));
        StreetAddress'Class (This).setStreet (request.getParameter (StreetAddressData_Package.STREET));
        StreetAddress'Class (This).setCity (request.getParameter (StreetAddressData_Package.CITY));
        StreetAddress'Class (This).setState (request.getParameter (StreetAddressData_Package.STATE));
        StreetAddress'Class (This).setCode (request.getParameter (StreetAddressData_Package.CODE));
        StreetAddress'Class (This).setCountry (request.getParameter (StreetAddressData_Package.COUNTRY));
        StreetAddress'Class (This).log;
   end Initialize;

   function Create (request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      StreetAddress_Package.Initialize (This.all, request_Param);
      return This;
   end Create;

   procedure Initialize (This : in out StreetAddress'Class; name : Unbounded_String; street : Unbounded_String; city : Unbounded_String; state : Unbounded_String; code : Unbounded_String; country : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.street := street;
        This.city := city;
        This.state := state;
        This.code := code;
        This.country := country;
        StreetAddress'Class (This).log;
   end Initialize;

   function Create (name : Unbounded_String; street : Unbounded_String; city : Unbounded_String; state : Unbounded_String; code : Unbounded_String; country : Unbounded_String) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      StreetAddress_Package.Initialize (This.all, name, street, city, state, code, country);
      return This;
   end Create;

   procedure Initialize (This : in out StreetAddress'Class; address_Param : access HashMap_Package.HashMap'Class) is
      address : constant HashMap_Access := HashMap_Access (address_Param);
      def : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.id := Java_Unbox (address.get (StreetAddressData_Package.ID));
        This.name := Java_Unbox (address.get (StreetAddressData_Package.NAME));
        This.street := Java_Unbox (address.get (StreetAddressData_Package.STREET));
        This.city := Java_Unbox (address.get (StreetAddressData_Package.CITY));
        This.state := Java_Unbox (address.get (StreetAddressData_Package.STATE));
        This.code := Java_Unbox (address.get (StreetAddressData_Package.CODE));
        This.country := Java_Unbox (address.get (StreetAddressData_Package.COUNTRY));
        def := Java_Unbox (address.get (StreetAddressData_Package.DEFAULT));
        if ((def) /= (Null_Unbounded_String)) and then ((Java_Compare_To (def, StreetAddressData_Package.DEFAULT)) = (0)) then
            This.isDefault_Field := True;
        else
            This.isDefault_Field := False;
        end if;
        StreetAddress'Class (This).log;
   end Initialize;

   function Create (address_Param : access HashMap_Package.HashMap'Class) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      StreetAddress_Package.Initialize (This.all, address_Param);
      return This;
   end Create;

   procedure log (This : in out StreetAddress) is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Created Address: " & ASCII.LF & "") & Java_Image (StreetAddress'Class (This).toHashMap), StreetAddress_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
        end if;
   end log;

   procedure setId (This : in out StreetAddress; id : Unbounded_String) is
   begin
        This.id := id;
   end setId;

   procedure setName (This : in out StreetAddress; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   procedure setStreet (This : in out StreetAddress; value : Unbounded_String) is
   begin
        This.street := value;
   end setStreet;

   procedure setCity (This : in out StreetAddress; value : Unbounded_String) is
   begin
        This.city := value;
   end setCity;

   procedure setState (This : in out StreetAddress; value : Unbounded_String) is
   begin
        This.state := value;
   end setState;

   procedure setCode (This : in out StreetAddress; value : Unbounded_String) is
   begin
        This.code := value;
   end setCode;

   procedure setCountry (This : in out StreetAddress; value : Unbounded_String) is
   begin
        This.country := value;
   end setCountry;

   function getName (This : in out StreetAddress) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function getStreet (This : in out StreetAddress) return Unbounded_String is
   begin
        return This.street;
   end getStreet;

   function getCity (This : in out StreetAddress) return Unbounded_String is
   begin
        return This.city;
   end getCity;

   function getState (This : in out StreetAddress) return Unbounded_String is
   begin
        return This.state;
   end getState;

   function getCode (This : in out StreetAddress) return Unbounded_String is
   begin
        return This.code;
   end getCode;

   function getCountry (This : in out StreetAddress) return Unbounded_String is
   begin
        return This.country;
   end getCountry;

   function getId (This : in out StreetAddress) return Unbounded_String is
   begin
        return This.id;
   end getId;

   function isDefault (This : in out StreetAddress) return Boolean is
   begin
        return This.isDefault_Field;
   end isDefault;

   function isEmpty (This : in out StreetAddress) return Boolean is
      EMPTY_STRING : Unbounded_String;
   begin
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        if ((((((((((((StreetAddress'Class (This).getName) = (Null_Unbounded_String)) and then ((StreetAddress'Class (This).getName.compareTo (EMPTY_STRING)) = (0))) and then ((StreetAddress'Class (This).getStreet) = (null))) and then ((StreetAddress'Class (This).getStreet.compareTo (EMPTY_STRING)) = (0))) and then ((StreetAddress'Class (This).getCity) = (null))) and then ((StreetAddress'Class (This).getCity.compareTo (EMPTY_STRING)) = (0))) and then ((StreetAddress'Class (This).getState) = (null))) and then ((StreetAddress'Class (This).getState.compareTo (EMPTY_STRING)) = (0))) and then ((StreetAddress'Class (This).getCode) = (null))) and then ((StreetAddress'Class (This).getCode.compareTo (EMPTY_STRING)) = (0))) and then ((StreetAddress'Class (This).getCountry) = (null))) and then ((StreetAddress'Class (This).getCountry.compareTo (EMPTY_STRING)) = (0)) then
            return True;
        end if;
        return False;
   end isEmpty;

   function isValid (This : in out StreetAddress) return Boolean is
      EMPTY_STRING : Unbounded_String;
   begin
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        if ((((((((((((StreetAddress'Class (This).getName) = (Null_Unbounded_String)) or else ((StreetAddress'Class (This).getName.compareTo (EMPTY_STRING)) = (0))) or else ((StreetAddress'Class (This).getStreet) = (null))) or else ((StreetAddress'Class (This).getStreet.compareTo (EMPTY_STRING)) = (0))) or else ((StreetAddress'Class (This).getCity) = (null))) or else ((StreetAddress'Class (This).getCity.compareTo (EMPTY_STRING)) = (0))) or else ((StreetAddress'Class (This).getState) = (null))) or else ((StreetAddress'Class (This).getState.compareTo (EMPTY_STRING)) = (0))) or else ((StreetAddress'Class (This).getCode) = (null))) or else ((StreetAddress'Class (This).getCode.compareTo (EMPTY_STRING)) = (0))) or else ((StreetAddress'Class (This).getCountry) = (null))) or else ((StreetAddress'Class (This).getCountry.compareTo (EMPTY_STRING)) = (0)) then
            return False;
        end if;
        return True;
   end isValid;

   function validationInfo (This : in out StreetAddress) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      stringValidationUtil : StringValidationUtil_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Address Failed To Validate - All fields must contain data.<br></br>"));
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isValidRequired (StreetAddress'Class (This).getName, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid name"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (StreetAddress'Class (This).getStreet, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid street"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (StreetAddress'Class (This).getCity, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid city"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (StreetAddress'Class (This).getState, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid state"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (StreetAddress'Class (This).getCode, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid zipcode"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (StreetAddress'Class (This).getCountry, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid country"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        return stringBuffer.toString;
   end validationInfo;

   function toValidationInfoDoc (This : in out StreetAddress) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out StreetAddress; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            node := document.createElement (StreetAddressData_Package.FORM);
            node.appendChild (StreetAddress'Class (This).toXmlNode (document));
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, StreetAddress_Access'(This'Unchecked_Access), To_Unbounded_String ("toValidationInfoNode"), e);
            end if;
            return null;
                end;
        end;
   end toValidationInfoNode;

   function toHashMap (This : in out StreetAddress) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (StreetAddressData_Package.ID, Java_Box (This.id));
        hashMap.put (StreetAddressData_Package.NAME, Java_Box (This.name));
        hashMap.put (StreetAddressData_Package.STREET, Java_Box (This.street));
        hashMap.put (StreetAddressData_Package.CITY, Java_Box (This.city));
        hashMap.put (StreetAddressData_Package.STATE, Java_Box (This.state));
        hashMap.put (StreetAddressData_Package.CODE, Java_Box (This.code));
        hashMap.put (StreetAddressData_Package.COUNTRY, Java_Box (This.country));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out StreetAddress; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      stringUtil : StringUtil_Access;
      hashMap : HashMap_Access;
      keySet : Set_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      node : Node_Access;
      name : Unbounded_String;
      value : Unbounded_String;
      i : Integer;
   begin
        stringUtil := StringUtil_Package.getInstance;
        hashMap := StreetAddress'Class (This).toHashMap;
        keySet := hashMap.keySet;
        keyArray := keySet.toArray;
        size := keyArray'Length;
        node := document.createElement (StreetAddressData_Package.ADDRESS);
        for i in 0 .. (size) - 1 loop
            name := Java_Unbox (keyArray (i));
            value := stringUtil.getNonNull (Java_Unbox (hashMap.get (Java_Box (name))));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        return node;
   end toXmlNode;

   procedure toValidationInfoNode (This : in out StreetAddress; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := StreetAddress'Class (This).toValidationInfoNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toXmlNode (This : in out StreetAddress; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := StreetAddress'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.address.StreetAddress_Package;


