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

   procedure Initialize (This : in out AndroidSystemProperties'Class; context_Param : access Context'Class) is
      context : Context_Access := Context_Access (context_Param);
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create (context_Param : access Context'Class) return AndroidSystemProperties_Access is
      This : constant AndroidSystemProperties_Access := new AndroidSystemProperties;
   begin
      AndroidSystemProperties_Package.Initialize (This.all, context_Param);
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

begin
   null;
   SINGLETON := AndroidSystemProperties_Package.Create (ResourceUtil_Package.getInstance.getContext);

end org.allbinary.logic.system.os.android.AndroidSystemProperties_Package;


