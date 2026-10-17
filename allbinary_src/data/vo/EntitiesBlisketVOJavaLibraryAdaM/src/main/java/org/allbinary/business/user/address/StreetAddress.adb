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


package body org.allbinary.business.user.address.StreetAddress_Package is

   procedure Initialize_Fields (This : in out StreetAddress'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      
      
      
      This.isDefault := False;
   end Initialize_Fields;


   procedure Initialize (This : in out StreetAddress'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out StreetAddress'Class; node : Node_Access) is
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
        This.log;
   end Initialize;

   function Create (node : Node_Access) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      Initialize (This.all, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out StreetAddress'Class; streetAddress : StreetAddress_Access) is
   begin
      Initialize_Fields (This);
        This.id := streetAddress.getId;
        This.name := streetAddress.getName;
        This.street := streetAddress.getStreet;
        This.city := streetAddress.getCity;
        This.state := streetAddress.getState;
        This.code := streetAddress.getCode;
        This.country := streetAddress.getCountry;
        This.isDefault := streetAddress.isDefault;
        This.log;
   end Initialize;

   function Create (streetAddress : StreetAddress_Access) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      Initialize (This.all, streetAddress);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out StreetAddress'Class; request : HttpServletRequest_Access) is
   begin
      Initialize_Fields (This);
        This.setId (request.getParameter (StreetAddressData_Package.ID));
        This.setName (request.getParameter (StreetAddressData_Package.NAME));
        This.setStreet (request.getParameter (StreetAddressData_Package.STREET));
        This.setCity (request.getParameter (StreetAddressData_Package.CITY));
        This.setState (request.getParameter (StreetAddressData_Package.STATE));
        This.setCode (request.getParameter (StreetAddressData_Package.CODE));
        This.setCountry (request.getParameter (StreetAddressData_Package.COUNTRY));
        This.log;
   end Initialize;

   function Create (request : HttpServletRequest_Access) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      Initialize (This.all, request);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out StreetAddress'Class; name : Unbounded_String; street : Unbounded_String; city : Unbounded_String; state : Unbounded_String; code : Unbounded_String; country : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.street := street;
        This.city := city;
        This.state := state;
        This.code := code;
        This.country := country;
        This.log;
   end Initialize;

   function Create (name : Unbounded_String; street : Unbounded_String; city : Unbounded_String; state : Unbounded_String; code : Unbounded_String; country : Unbounded_String) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      Initialize (This.all, name, street, city, state, code, country);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out StreetAddress'Class; address : HashMap_Access) is
      def : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.id := Unbounded_String (address.get (StreetAddressData_Package.ID));
        This.name := Unbounded_String (address.get (StreetAddressData_Package.NAME));
        This.street := Unbounded_String (address.get (StreetAddressData_Package.STREET));
        This.city := Unbounded_String (address.get (StreetAddressData_Package.CITY));
        This.state := Unbounded_String (address.get (StreetAddressData_Package.STATE));
        This.code := Unbounded_String (address.get (StreetAddressData_Package.CODE));
        This.country := Unbounded_String (address.get (StreetAddressData_Package.COUNTRY));
        def := Unbounded_String (address.get (StreetAddressData_Package.DEFAULT));
        if ((def) /= (Null_Unbounded_String)) and then ((def.compareTo (StreetAddressData_Package.DEFAULT)) = (0)) then
            This.isDefault := True;
        else
            This.isDefault := False;
        end if;
        This.log;
   end Initialize;

   function Create (address : HashMap_Access) return StreetAddress_Access is
      This : constant StreetAddress_Access := new StreetAddress;
   begin
      Initialize (This.all, address);
      return This;
   end Create;

   procedure log (This : in out StreetAddress) is
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Created Address: " & ASCII.LF & "") & Java_Image (This.toHashMap), This'Unchecked_Access, To_Unbounded_String ("log"));
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
        return This.isDefault;
   end isDefault;

   function isEmpty (This : in out StreetAddress) return Boolean is
      EMPTY_STRING : Unbounded_String;
   begin
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        if ((((((((((((This.getName) = (Null_Unbounded_String)) and then ((This.getName.compareTo (EMPTY_STRING)) = (0))) and then ((This.getStreet) = (null))) and then ((This.getStreet.compareTo (EMPTY_STRING)) = (0))) and then ((This.getCity) = (null))) and then ((This.getCity.compareTo (EMPTY_STRING)) = (0))) and then ((This.getState) = (null))) and then ((This.getState.compareTo (EMPTY_STRING)) = (0))) and then ((This.getCode) = (null))) and then ((This.getCode.compareTo (EMPTY_STRING)) = (0))) and then ((This.getCountry) = (null))) and then ((This.getCountry.compareTo (EMPTY_STRING)) = (0)) then
            return True;
        end if;
        return False;
   end isEmpty;

   function isValid (This : in out StreetAddress) return Boolean is
      EMPTY_STRING : Unbounded_String;
   begin
        EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
        if ((((((((((((This.getName) = (Null_Unbounded_String)) or else ((This.getName.compareTo (EMPTY_STRING)) = (0))) or else ((This.getStreet) = (null))) or else ((This.getStreet.compareTo (EMPTY_STRING)) = (0))) or else ((This.getCity) = (null))) or else ((This.getCity.compareTo (EMPTY_STRING)) = (0))) or else ((This.getState) = (null))) or else ((This.getState.compareTo (EMPTY_STRING)) = (0))) or else ((This.getCode) = (null))) or else ((This.getCode.compareTo (EMPTY_STRING)) = (0))) or else ((This.getCountry) = (null))) or else ((This.getCountry.compareTo (EMPTY_STRING)) = (0)) then
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
        if not (stringValidationUtil.isValidRequired (This.getName, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid name"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.getStreet, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid street"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.getCity, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid city"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.getState, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid state"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.getCode, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid zipcode"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        if not (stringValidationUtil.isValidRequired (This.getCountry, StreetAddressData_Package.MIN, StreetAddressData_Package.MAX)) then
            stringBuffer.append (To_Unbounded_String ("Please enter a valid country"));
            stringBuffer.append (To_Unbounded_String ("<br></br>"));
        end if;
        return stringBuffer.toString;
   end validationInfo;

   function toValidationInfoDoc (This : in out StreetAddress) return Document_Access is
   begin
        return null;
   end toValidationInfoDoc;

   function toValidationInfoNode (This : in out StreetAddress; document : Document_Access) return Node_Access is
      node : Node_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            node := document.createElement (StreetAddressData_Package.FORM);
            node.appendChild (This.toXmlNode (document));
            return node;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                commonStrings := CommonStrings_Package.getInstance;
                This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("toValidationInfoNode"), e);
            end if;
            return null;
                end;
        end;
   end toValidationInfoNode;

   function toHashMap (This : in out StreetAddress) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (StreetAddressData_Package.ID, This.id);
        hashMap.put (StreetAddressData_Package.NAME, This.name);
        hashMap.put (StreetAddressData_Package.STREET, This.street);
        hashMap.put (StreetAddressData_Package.CITY, This.city);
        hashMap.put (StreetAddressData_Package.STATE, This.state);
        hashMap.put (StreetAddressData_Package.CODE, This.code);
        hashMap.put (StreetAddressData_Package.COUNTRY, This.country);
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out StreetAddress; document : Document_Access) return Node_Access is
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
        hashMap := This.toHashMap;
        keySet := hashMap.keySet;
        keyArray := keySet.toArray;
        size := keyArray'Length;
        node := document.createElement (StreetAddressData_Package.ADDRESS);
        for i in 0 .. (size) - 1 loop
            name := Unbounded_String (keyArray (i));
            value := stringUtil.getNonNull (Unbounded_String (hashMap.get (name)));
            node.appendChild (ModDomHelper_Package.createNameValueNodes (document, name, value));
        end loop;
        return node;
   end toXmlNode;

   procedure getName (This : in out StreetAddress) is
      Java_Result : constant Unbounded_String := StreetAddress'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure getStreet (This : in out StreetAddress) is
      Java_Result : constant Unbounded_String := StreetAddress'Class (This).getStreet;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStreet;

   procedure getCity (This : in out StreetAddress) is
      Java_Result : constant Unbounded_String := StreetAddress'Class (This).getCity;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCity;

   procedure getState (This : in out StreetAddress) is
      Java_Result : constant Unbounded_String := StreetAddress'Class (This).getState;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getState;

   procedure getCode (This : in out StreetAddress) is
      Java_Result : constant Unbounded_String := StreetAddress'Class (This).getCode;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCode;

   procedure getCountry (This : in out StreetAddress) is
      Java_Result : constant Unbounded_String := StreetAddress'Class (This).getCountry;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCountry;

   procedure getId (This : in out StreetAddress) is
      Java_Result : constant Unbounded_String := StreetAddress'Class (This).getId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getId;

   procedure isDefault (This : in out StreetAddress) is
      Java_Result : constant Boolean := StreetAddress'Class (This).isDefault;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDefault;

   procedure isEmpty (This : in out StreetAddress) is
      Java_Result : constant Boolean := StreetAddress'Class (This).isEmpty;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEmpty;

   procedure isValid (This : in out StreetAddress) is
      Java_Result : constant Boolean := StreetAddress'Class (This).isValid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

   procedure validationInfo (This : in out StreetAddress) is
      Java_Result : constant Unbounded_String := StreetAddress'Class (This).validationInfo;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end validationInfo;

   procedure toValidationInfoDoc (This : in out StreetAddress) is
      Java_Result : constant Document_Access := StreetAddress'Class (This).toValidationInfoDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoDoc;

   procedure toValidationInfoNode (This : in out StreetAddress; document : Document_Access) is
      Java_Result : constant Node_Access := StreetAddress'Class (This).toValidationInfoNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toValidationInfoNode;

   procedure toHashMap (This : in out StreetAddress) is
      Java_Result : constant HashMap_Access := StreetAddress'Class (This).toHashMap;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toHashMap;

   procedure toXmlNode (This : in out StreetAddress; document : Document_Access) is
      Java_Result : constant Node_Access := StreetAddress'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.address.StreetAddress_Package;


