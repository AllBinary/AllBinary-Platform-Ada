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


package body org.allbinary.logic.communication.smtp.info.EmailInfo_Package is

   procedure Initialize_Fields (This : in out EmailInfo'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicEmailInfo := null;
      This.htmlAttachment := Null_Unbounded_String;
      This.contentBase := Null_Unbounded_String;
   end Initialize_Fields;


   procedure Initialize (This : in out EmailInfo'Class; basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class) is
      basicEmailInfo : constant BasicEmailInfo_Access := BasicEmailInfo_Access (basicEmailInfo_Param);
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, EmailInfo_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        end if;
        This.init (basicEmailInfo, null, null);
   end Initialize;

   function Create (basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class) return EmailInfo_Access is
      This : constant EmailInfo_Access := new EmailInfo;
   begin
      EmailInfo_Package.Initialize (This.all, basicEmailInfo_Param);
      return This;
   end Create;

   procedure Initialize (This : in out EmailInfo'Class; basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) is
      basicEmailInfo : constant BasicEmailInfo_Access := BasicEmailInfo_Access (basicEmailInfo_Param);
      commonStrings : CommonStrings_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.putF (commonStrings.START, EmailInfo_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        end if;
        This.init (basicEmailInfo, null, null);
   end Initialize;

   function Create (basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) return EmailInfo_Access is
      This : constant EmailInfo_Access := new EmailInfo;
   begin
      EmailInfo_Package.Initialize (This.all, basicEmailInfo_Param, htmlAttachment, contentBase);
      return This;
   end Create;

   procedure init (This : in out EmailInfo; basicEmailInfo_Param : access BasicEmailInfo_Package.BasicEmailInfo'Class; htmlAttachment : Unbounded_String; contentBase : Unbounded_String) is
      basicEmailInfo : constant BasicEmailInfo_Access := BasicEmailInfo_Access (basicEmailInfo_Param);
   begin
        This.basicEmailInfo := basicEmailInfo;
        This.htmlAttachment := htmlAttachment;
        This.contentBase := contentBase;
   end init;

   function getBasicEmailInfo (This : in out EmailInfo) return BasicEmailInfo_Access is
   begin
        return This.basicEmailInfo;
   end getBasicEmailInfo;

   function getHtmlAttachment (This : in out EmailInfo) return Unbounded_String is
   begin
        return This.htmlAttachment;
   end getHtmlAttachment;

   function getContentBase (This : in out EmailInfo) return Unbounded_String is
   begin
        return This.contentBase;
   end getContentBase;

   function toString (This : in out EmailInfo) return Unbounded_String is
   begin
        return To_Unbounded_String ("Email Info: " & ASCII.LF & " ") & This.getBasicEmailInfo.toString;
   end toString;

end org.allbinary.logic.communication.smtp.info.EmailInfo_Package;


