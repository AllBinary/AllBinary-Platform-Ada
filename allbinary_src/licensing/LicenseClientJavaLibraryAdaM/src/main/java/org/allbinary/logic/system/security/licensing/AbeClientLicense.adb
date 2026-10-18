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


package body org.allbinary.logic.system.security.licensing.AbeClientLicense_Package is

   procedure Initialize_Fields (This : in out AbeClientLicense'Class) is
   begin
      null;
      
      
      
      This.special := Null_Unbounded_String;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AbeClientLicense'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      abeClientInformationData : AbeClientInformationData_Access;
      keyValue : Java_Object_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      index : Integer;
      stringUtil : StringUtil_Access;
      licenseTypeString : Unbounded_String;
   begin
      Initialize_Fields (This);
        This.hashtable := StdUtil_Package.getInstance.createHashtable;
        abeClientInformationData := AbeClientInformationData_Package.getInstance;
        keyValue := hashtable.get (abeClientInformationData.KEY);
        if (keyValue) /= (null) then
            if (keyValue.all in String_Package.String'Class) then
                This.hashtable.put (abeClientInformationData.KEY, keyValue);
            end if;
        end if;
        This.id := Java_Unbox (hashtable.get (abeClientInformationData.LICENSEID));
        vector := BasicArrayList_Access (hashtable.get (abeClientInformationData.LICENSESERVERS));
        This.servers := BasicArrayListD_Package.Create;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            This.servers.add (vector.get (index));
        end loop;
        stringUtil := StringUtil_Package.getInstance;
        AbeClientLicense'Class (This).setSpecial (stringUtil.getNonNull (Java_Unbox (hashtable.get (abeClientInformationData.SPECIAL))));
        licenseTypeString := stringUtil.getNonNull (Java_Unbox (hashtable.get (abeClientInformationData.LICENSE_TYPE)));
        This.licenseType := LicenseTypeFactory_Package.getInstance.getInstance (licenseTypeString);
   end Initialize;

   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class) return AbeClientLicense_Access is
      This : constant AbeClientLicense_Access := new AbeClientLicense;
   begin
      AbeClientLicense_Package.Initialize (This.all, hashtable_Param);
      return This;
   end Create;

   function hasRequiredKeys (resultHashtable_Param : access ABHashtable_Package.ABHashtable'Class) return Boolean is
      resultHashtable : constant ABHashtable_Access := ABHashtable_Access (resultHashtable_Param);
      abeClientInformationData : AbeClientInformationData_Access;
   begin
        abeClientInformationData := AbeClientInformationData_Package.getInstance;
        if (((resultHashtable.containsKey (abeClientInformationData.LICENSEID)) and then (resultHashtable.containsKey (abeClientInformationData.LICENSESERVERS))) and then (resultHashtable.containsKey (abeClientInformationData.KEY))) and then (resultHashtable.containsKey (abeClientInformationData.LICENSE_TYPE)) then
            return True;
        else
            return False;
        end if;
   end hasRequiredKeys;

   function hasKey (This : in out AbeClientLicense) return Boolean is
   begin
        return AbeClientLicense'Class (This).isValid;
   end hasKey;

   function getKey (This : in out AbeClientLicense; keyName : Unbounded_String) return Unbounded_String is
   begin
        return Java_Unbox (This.hashtable.get (keyName));
   end getKey;

   function getLicenseId (This : in out AbeClientLicense) return Unbounded_String is
   begin
        return This.id;
   end getLicenseId;

   function getServers (This : in out AbeClientLicense) return BasicArrayList_Access is
   begin
        return This.servers;
   end getServers;

   function isValid (This : in out AbeClientLicense) return Boolean is
      stringValidationUtil : StringValidationUtil_Access;
   begin
        stringValidationUtil := StringValidationUtil_Package.getInstance;
        if not (stringValidationUtil.isEmpty (AbeClientLicense'Class (This).getKey (AbeClientInformationData_Package.getInstance.KEY))) then
            return True;
        end if;
        return False;
   end isValid;

   function toString (This : in out AbeClientLicense) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      BREAK : Unbounded_String;
      serverVector : BasicArrayList_Access;
      size : Integer;
      nextServerString : Unbounded_String;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        BREAK := To_Unbounded_String ("<br/>");
        stringBuffer.append (To_Unbounded_String ("License Id: "));
        stringBuffer.append (AbeClientLicense'Class (This).getLicenseId);
        stringBuffer.append (BREAK);
        stringBuffer.append (To_Unbounded_String ("Is Valid: "));
        stringBuffer.appendboolean (AbeClientLicense'Class (This).isValid);
        stringBuffer.append (BREAK);
        stringBuffer.append (To_Unbounded_String ("Keys: "));
        stringBuffer.append (This.hashtable.toString);
        stringBuffer.append (BREAK);
        serverVector := AbeClientLicense'Class (This).getServers;
        size := serverVector.size;
        for index in 0 .. (size) - 1 loop
            nextServerString := Java_Unbox (serverVector.get (index));
            stringBuffer.append (To_Unbounded_String ("Server: "));
            stringBuffer.append (nextServerString);
            stringBuffer.append (BREAK);
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure setSpecial (This : in out AbeClientLicense; special : Unbounded_String) is
   begin
        This.special := special;
   end setSpecial;

   function getSpecial (This : in out AbeClientLicense) return Unbounded_String is
   begin
        return This.special;
   end getSpecial;

   function getLicenseType (This : in out AbeClientLicense) return LicenseType_Access is
   begin
        return This.licenseType;
   end getLicenseType;

   procedure hasRequiredKeys (resultHashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      Java_Result : constant Boolean := hasRequiredKeys (resultHashtable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hasRequiredKeys;

   procedure getKey (This : in out AbeClientLicense; keyName : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbeClientLicense'Class (This).getKey (keyName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

end org.allbinary.logic.system.security.licensing.AbeClientLicense_Package;


