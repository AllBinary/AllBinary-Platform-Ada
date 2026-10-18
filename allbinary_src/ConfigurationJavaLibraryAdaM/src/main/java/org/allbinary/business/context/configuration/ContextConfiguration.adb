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


package body org.allbinary.business.context.configuration.ContextConfiguration_Package is

   procedure Initialize_Fields (This : in out ContextConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.emailServerConfigurationInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out ContextConfiguration'Class) is
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, ContextConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("ContextConfiguration"));
        ContextConfiguration'Class (This).setEmailServerConfigurationInterface (EmailServerConfigurationInterface_Access (EmailServerConfiguration_Package.Create));
   end Initialize;

   function Create return ContextConfiguration_Access is
      This : constant ContextConfiguration_Access := new ContextConfiguration;
   begin
      ContextConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out ContextConfiguration'Class; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, ContextConfiguration_Access'(This'Unchecked_Access), To_Unbounded_String ("ContextConfiguration(HashMap)"));
        ContextConfiguration'Class (This).setEmailServerConfigurationInterface (EmailServerConfigurationInterface_Access (EmailServerConfiguration_Package.Create (hashMap)));
   end Initialize;

   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return ContextConfiguration_Access is
      This : constant ContextConfiguration_Access := new ContextConfiguration;
   begin
      ContextConfiguration_Package.Initialize (This.all, hashMap_Param);
      return This;
   end Create;

   function getEmailServerConfigurationInterface (This : in out ContextConfiguration) return EmailServerConfigurationInterface_Access is
   begin
        return This.emailServerConfigurationInterface;
   end getEmailServerConfigurationInterface;

   procedure setEmailServerConfigurationInterface (This : in out ContextConfiguration; emailServerConfigurationInterface_Param : access EmailServerConfigurationInterface_Package.EmailServerConfigurationInterface'Class) is
      emailServerConfigurationInterface : constant EmailServerConfigurationInterface_Access := EmailServerConfigurationInterface_Access (emailServerConfigurationInterface_Param);
   begin
        This.emailServerConfigurationInterface := emailServerConfigurationInterface;
   end setEmailServerConfigurationInterface;

end org.allbinary.business.context.configuration.ContextConfiguration_Package;


