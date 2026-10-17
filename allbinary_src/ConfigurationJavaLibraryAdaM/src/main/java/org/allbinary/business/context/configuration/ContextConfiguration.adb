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
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("ContextConfiguration"));
        This.setEmailServerConfigurationInterface (EmailServerConfigurationInterface_Access (EmailServerConfiguration_Package.Create));
   end Initialize;

   function Create return ContextConfiguration_Access is
      This : constant ContextConfiguration_Access := new ContextConfiguration;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out ContextConfiguration'Class; hashMap : HashMap_Access) is
   begin
      Initialize_Fields (This);
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("ContextConfiguration(HashMap)"));
        This.setEmailServerConfigurationInterface (EmailServerConfigurationInterface_Access (EmailServerConfiguration_Package.Create (hashMap)));
   end Initialize;

   function Create (hashMap : HashMap_Access) return ContextConfiguration_Access is
      This : constant ContextConfiguration_Access := new ContextConfiguration;
   begin
      Initialize (This.all, hashMap);
      return This;
   end Create;

   function getEmailServerConfigurationInterface (This : in out ContextConfiguration) return EmailServerConfigurationInterface_Access is
   begin
        return This.emailServerConfigurationInterface;
   end getEmailServerConfigurationInterface;

   procedure setEmailServerConfigurationInterface (This : in out ContextConfiguration; emailServerConfigurationInterface : EmailServerConfigurationInterface_Access) is
   begin
        This.emailServerConfigurationInterface := emailServerConfigurationInterface;
   end setEmailServerConfigurationInterface;

   procedure getEmailServerConfigurationInterface (This : in out ContextConfiguration) is
      Java_Result : constant EmailServerConfigurationInterface_Access := ContextConfiguration'Class (This).getEmailServerConfigurationInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEmailServerConfigurationInterface;

end org.allbinary.business.context.configuration.ContextConfiguration_Package;


