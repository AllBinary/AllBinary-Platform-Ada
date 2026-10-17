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


package body org.allbinary.logic.system.os.android.AndroidSystemProperties_Package is

   procedure Initialize_Fields (This : in out AndroidSystemProperties'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AndroidSystemProperties_Access is
   begin
        return AndroidSystemProperties_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out AndroidSystemProperties'Class; context : Context_Access) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (context : Context_Access) return AndroidSystemProperties_Access is
      This : constant AndroidSystemProperties_Access := new AndroidSystemProperties;
   begin
      Initialize (This.all, context);
      return This;
   end Create;

   function getDeviceId (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getDeviceId;

   function getDeviceSoftwareVersion (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getDeviceSoftwareVersion;

   function getLine1Number (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getLine1Number;

   function getNetworkCountryIso (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getNetworkCountryIso;

   function getNetworkOperator (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getNetworkOperator;

   function getNetworkOperatorName (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getNetworkOperatorName;

   function getSimCountryIso (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getSimCountryIso;

   function getSimOperator (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getSimOperator;

   function getSimOperatorName (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getSimOperatorName;

   function getSimSerialNumber (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getSimSerialNumber;

   function getSubscriberId (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getSubscriberId;

   function getVoiceMailAlphaTag (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getVoiceMailAlphaTag;

   function getVoiceMailNumber (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return This.commonStrings.DISABLE;
   end getVoiceMailNumber;

   function getNetworkType (This : in out AndroidSystemProperties) return Integer is
   begin
        return -(1);
   end getNetworkType;

   function getPhoneType (This : in out AndroidSystemProperties) return Integer is
   begin
        return -(1);
   end getPhoneType;

   function getBoard (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.BOARD;
   end getBoard;

   function getBrand (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.BRAND;
   end getBrand;

   function getDevice (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.DEVICE;
   end getDevice;

   function getFingerprint (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.FINGERPRINT;
   end getFingerprint;

   function getHost (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.HOST;
   end getHost;

   function getId (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.ID;
   end getId;

   function getModel (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.MODEL;
   end getModel;

   function getProduct (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.PRODUCT;
   end getProduct;

   function getTags (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.TAGS;
   end getTags;

   function getTime (This : in out AndroidSystemProperties) return Long_Long_Integer is
   begin
        return Build_Package.TIME;
   end getTime;

   function getType (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.TYPE_Id;
   end getType;

   function getUser (This : in out AndroidSystemProperties) return Unbounded_String is
   begin
        return Build_Package.USER;
   end getUser;

   procedure getInstance is
      Java_Result : constant AndroidSystemProperties_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getDeviceId (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getDeviceId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDeviceId;

   procedure getDeviceSoftwareVersion (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getDeviceSoftwareVersion;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDeviceSoftwareVersion;

   procedure getLine1Number (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getLine1Number;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLine1Number;

   procedure getNetworkCountryIso (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getNetworkCountryIso;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNetworkCountryIso;

   procedure getNetworkOperator (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getNetworkOperator;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNetworkOperator;

   procedure getNetworkOperatorName (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getNetworkOperatorName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNetworkOperatorName;

   procedure getSimCountryIso (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getSimCountryIso;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSimCountryIso;

   procedure getSimOperator (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getSimOperator;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSimOperator;

   procedure getSimOperatorName (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getSimOperatorName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSimOperatorName;

   procedure getSimSerialNumber (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getSimSerialNumber;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSimSerialNumber;

   procedure getSubscriberId (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getSubscriberId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSubscriberId;

   procedure getVoiceMailAlphaTag (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getVoiceMailAlphaTag;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVoiceMailAlphaTag;

   procedure getVoiceMailNumber (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getVoiceMailNumber;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getVoiceMailNumber;

   procedure getNetworkType (This : in out AndroidSystemProperties) is
      Java_Result : constant Integer := AndroidSystemProperties'Class (This).getNetworkType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNetworkType;

   procedure getPhoneType (This : in out AndroidSystemProperties) is
      Java_Result : constant Integer := AndroidSystemProperties'Class (This).getPhoneType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPhoneType;

   procedure getBoard (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getBoard;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBoard;

   procedure getBrand (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getBrand;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getBrand;

   procedure getDevice (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getDevice;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDevice;

   procedure getFingerprint (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getFingerprint;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFingerprint;

   procedure getHost (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getHost;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHost;

   procedure getId (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getId;

   procedure getModel (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getModel;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getModel;

   procedure getProduct (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getProduct;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getProduct;

   procedure getTags (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getTags;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTags;

   procedure getTime (This : in out AndroidSystemProperties) is
      Java_Result : constant Long_Long_Integer := AndroidSystemProperties'Class (This).getTime;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTime;

   procedure getType (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getType;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getType;

   procedure getUser (This : in out AndroidSystemProperties) is
      Java_Result : constant Unbounded_String := AndroidSystemProperties'Class (This).getUser;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUser;

begin
   null;
   SINGLETON := AndroidSystemProperties_Package.Create (ResourceUtil_Package.getInstance.getContext);

end org.allbinary.logic.system.os.android.AndroidSystemProperties_Package;


