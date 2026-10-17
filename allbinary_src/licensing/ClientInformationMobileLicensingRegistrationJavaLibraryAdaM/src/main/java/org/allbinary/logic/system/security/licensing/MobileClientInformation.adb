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


package body org.allbinary.logic.system.security.licensing.MobileClientInformation_Package is

   procedure Initialize_Fields (This : in out MobileClientInformation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MobileClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) is
      string_Id : Unbounded_String;
      number : Unbounded_String;
      commonStrings : CommonStrings_Access;
   begin
        AbeClientInformation_Package.Initialize (This, name, version, StringMaker_Package.Create.append (specialName).append (CommonSeps_Package.getInstance.SPACE).append (PartnerIdentifierFileUtil_Package.getInstance.get).toString, shortName);
        string_Id := This.getSpecialName;
        number := Unbounded_Slice (string_Id, ((Length (string_Id)) - (1)) + 1, Length (string_Id));
        if (Integer_Package.getInteger (number)) = (null) then
            This.setHardSale (False);
        end if;
        commonStrings := CommonStrings_Package.getInstance;
        if This.isHardSale then
            This.logUtil.putF (To_Unbounded_String ("Use Hard Coded Selling"), This'Unchecked_Access, commonStrings.CONSTRUCTOR);
        else
            This.logUtil.putF (To_Unbounded_String ("Don't Use Hard Coded Selling"), This'Unchecked_Access, commonStrings.CONSTRUCTOR);
        end if;
   end Initialize;

   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String) return MobileClientInformation_Access is
      This : constant MobileClientInformation_Access := new MobileClientInformation;
   begin
      MobileClientInformation_Package.Initialize (This.all, name, version, specialName, shortName);
      return This;
   end Create;

   function toHashtable (This : in out MobileClientInformation) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
      registrationConfiguration : RegistrationConfiguration_Access;
   begin
        hashtable := AbeClientInformation (This).toHashtable;
        registrationConfiguration := RegistrationConfiguration_Package.getInstance;
        hashtable.put (registrationConfiguration.NAME, registrationConfiguration.getRegistrationCode);
        return hashtable;
   end toHashtable;

begin
   null;
   DESC := To_Unbounded_String ("Mobile");
   ANDROID_DESC := To_Unbounded_String ("Android") & Java_Image (MobileClientInformation_Package.DESC);

end org.allbinary.logic.system.security.licensing.MobileClientInformation_Package;


